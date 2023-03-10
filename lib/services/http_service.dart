import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../models/app_config.dart';

class HTTPService {
  HTTPService() {
    _appConfig = GetIt.instance.get<AppConfig>();
    _baseUrl = _appConfig!.coinApiBaseUrl;
  }

  final Dio _dio = Dio();
  AppConfig? _appConfig;
  String? _baseUrl;

  Future<Response?> get(String path) async {
    try {
      String url = '$_baseUrl$path';
      Response response = await _dio.get(url);
      return response;
    } catch (e) {
      return null;
    }
  }
}
