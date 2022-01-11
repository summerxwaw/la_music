import 'package:dio/dio.dart';
import 'package:logging/logging.dart';

enum TokenType { firebase, jwt, bearer, custom }

class HeaderInterceptor extends Interceptor {
  // TODO(Denis): Use injectable singleton instead of handmade singleton
  HeaderInterceptor._privateConstructor();

  static final HeaderInterceptor _instance = HeaderInterceptor._privateConstructor();

  static HeaderInterceptor get instance => _instance;

  late Dio _dio;
  // late TokenStorage _tokenStorage;
  late bool _isFirstTokenError = true;

  // TODO(Denis): fix warning
  Logger get _logger => Logger('[$runtimeType]');

  late Future Function(RequestOptions) onRequestFunction;
  late Future Function(Response) onResponseFunction;
  late Future Function(DioError) onErrorFunction;

  void set({required Dio dio, required bool isAuthorized}) {
    _dio = dio;
  }

  void init({
    required Future Function(DioError error) onError,
    required Future Function(RequestOptions options) onRequest,
    required Future Function(Response response) onResponse,
    TokenType tokenType = TokenType.custom,
  }) {
    if (tokenType == TokenType.custom) {
      onRequestFunction = onRequest;
      onResponseFunction = onResponse;
      onErrorFunction = onError;
      return;
    }

    if (tokenType == TokenType.bearer) {
      setBearerTokenType();
      return;
    }

    if (tokenType == TokenType.jwt) {
      setJWTTokenType();
      return;
    }

    if (tokenType == TokenType.firebase) {
      setFirebaseTokenType();
      return;
    }
  }

  void setJWTTokenType() {}
  void setBearerTokenType() {}
  void setFirebaseTokenType() {}

  @override
  Future onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    _logger.info('onRequest options: $options');

    options.contentType = 'application/json';

    // String? tokenData = await _tokenStorage.getToken();
    // if (tokenData != null) {
    //   _logger.info('onRequest token: $tokenData');
    //   tokenData = await _tokenStorage.getToken();

    //   options.headers[_mockAuthHeader] = 'Bearer ' + tokenData!;
    // }

    return super.onRequest(options, handler);
  }

  @override
  Future onError(DioError err, ErrorInterceptorHandler handler) async {
    _logger.info('onError error: $err');
    if (_isTokenExpiredError(err) && _isFirstTokenError) {
      _isFirstTokenError = false;

      // final String? tokenData = await _tokenStorage.getToken();
      // if (tokenData != null) _isFirstTokenError = true;

      _logger.info('token RENEWED, retry request');
      return super.onError(err, handler);
    } else if (_isTokenExpiredError(err)) {
      _isFirstTokenError = true;
      _logger.info('token RENEWED, logout');
    }

    return onErrorFunction(err);
  }

  @override
  Future onResponse(Response response, ResponseInterceptorHandler handler) async {
    return super.onResponse(response, handler);
  }

  Future retryRequest(RequestOptions requestOptions) {
    _logger.info('retryRequest $requestOptions');
    return _dio.request<dynamic>(
      requestOptions.path,
      cancelToken: requestOptions.cancelToken,
      data: requestOptions.data,
      onReceiveProgress: requestOptions.onReceiveProgress,
      onSendProgress: requestOptions.onSendProgress,
      queryParameters: requestOptions.queryParameters,
    );
  }

  bool _isTokenExpiredError(DioError error) {
    return error.response?.data == 'Token is expired!';
  }
}
