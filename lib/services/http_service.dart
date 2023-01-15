import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'package:checkcoin/models/app_config.dart';

class HTTPService {
  final Dio _dio = Dio();

  AppConfig? _appConfig;
  String? _baseUrl;

  HTTPService() {
    _appConfig = GetIt.instance.get<AppConfig>();
    _baseUrl = _appConfig!.coinApiBaseUrl;
  }

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
