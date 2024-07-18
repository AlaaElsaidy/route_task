import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'api_endPoints.dart';
@injectable
class ApiManager {
  late Dio dio;

  ApiManager() {
    dio = Dio();
  }

  Future<Response> getData(String endPoint,
      {Map<String, dynamic>? params}) async {
    return dio.get(Endpoints.baseUrl+ endPoint, queryParameters: params);
  }

}