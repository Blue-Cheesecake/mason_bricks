{{#is_rest_api_app}}import 'package:dio/dio.dart';{{/is_rest_api_app}}
import 'package:flutter/material.dart';

{{#is_rest_api_app}}import '../../core/core.dart';{{/is_rest_api_app}}
import '../utils.dart';

abstract class BaseUseCase<P, R> {
  @protected
  Future<R> call(P params);

  Future<BaseResult<R>> execute(P params) async {
    try {
      final response = await call(params);
      return Success(response);
    } catch (e) {
      return _handleException(e);
    }
  }

  Future<BaseResult<R>> _handleException(dynamic e) async {
    // TODO: implement handling exception
    
    {{#is_rest_api_app}}final networkManager = {{project_key.upperCase()}}NetworkManager();{{/is_rest_api_app}}
    {{#is_rest_api_app}}
    if (e is DioException) {
      return _handleDioException(e);
    }
    if (!await networkManager.isInternetConnected) {
      return Failure(InternetConnectionException());
    }
    {{/is_rest_api_app}}
    return Failure(UnknownException());
  }
  {{#is_rest_api_app}}
  Future<BaseResult<R>> _handleDioException(DioException e) async {
    // TODO: implement handling dio exception
    return Failure(UnknownException());
  }
  {{/is_rest_api_app}}
}
