import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';

@singleton
class ErrorInterceptor extends Interceptor {
  // TODO(Denis): Use injectable singleton instead of handmade singleton

  Logger get logger => Logger('${this}');

  Future<void> init({required void Function(DioError) onErrorCallback}) async {
    this.onErrorCallback = onErrorCallback;
  }

  late void Function(DioError) onErrorCallback;

  @override
  Future<dynamic> onError(DioError err, ErrorInterceptorHandler handler) async {
    logger.warning('---------||${err.error}\n\n ${err.response?.data ?? ''}\n\n');

    onErrorCallback(err);
    return super.onError(err, handler);
  }
}
