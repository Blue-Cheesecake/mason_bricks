import 'dart:io';

import 'package:dio/dio.dart';

import '../../../../core.dart';

final class CustomHeadersInterceptor extends InterceptorsWrapper {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    options
      ..headers = {
        'Application': 'x-www-form-urlencoded',
        'Accept': '*/*',
        'Content-Type': 'application/json',
        'Connection': 'keep-alive',
      }
      ..connectTimeout = const Duration(seconds: 10);

    String? token = await {{project_key.upperCase()}}User.instance.token;

    if (token != null) {
      options.headers[HttpHeaders.authorizationHeader] = 'Bearer $token';
    }

    handler.next(options);
  }
}
