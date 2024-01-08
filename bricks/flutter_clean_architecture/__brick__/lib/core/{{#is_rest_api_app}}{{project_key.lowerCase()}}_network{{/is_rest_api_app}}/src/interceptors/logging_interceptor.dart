import 'package:dio/dio.dart';

import '../../../../core.dart';

final class LogginInterceptor extends InterceptorsWrapper {
  LogginInterceptor({required String location}) : _location = location;

  final String _location;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    {{project_key.upperCase()}}Logger.debug(
      location: _location,
      message: 'Sending Request with\n'
          'Method: ${options.method}'
          'URI: ${options.uri.toString()}'
          'Body: ${options.data}',
    );

    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    {{project_key.upperCase()}}Logger.error(
      location: _location,
      message: 'An error occured with when connect to server',
      errorObject: err,
      stackTrace: err.stackTrace,
    );
    {{project_key.upperCase()}}Logger.debug(
      location: _location,
      message: 'Got error with response\n'
          'StatusCode: ${err.response?.statusCode}\n'
          'Data: ${err.response?.data}',
    );

    handler.next(err);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    {{project_key.upperCase()}}Logger.debug(
      location: _location,
      message: 'Got response with\n'
          'StatusCode: ${response.statusCode}\n'
          'Data: ${response.data}',
    );
    handler.next(response);
  }
}
