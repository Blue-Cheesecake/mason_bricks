import 'package:dio/dio.dart';

import '../../core.dart';
import './interceptors/interceptors.dart';

final class {{project_key.upperCase()}}DioClient {
  {{project_key.upperCase()}}DioClient._();

  static Dio init({required String location}) {
    final Dio dio = Dio(BaseOptions(baseUrl: AppConfig.instance.apiURL))
      ..interceptors.addAll(
        [
          CustomHeadersInterceptor(),
          LogginInterceptor(location: location),
        ],
      );
    return dio;
  }
}
