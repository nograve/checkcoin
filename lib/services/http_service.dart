import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'package:checkcoin/models/app_config.dart';

class HTTPService {
  final Dio dio = Dio();

  AppConfig? appConfig;
  String? baseUrl;

  HTTPService() {
    appConfig = GetIt.instance.get<AppConfig>();
    baseUrl = appConfig!.coinApiBaseUrl;
  }

  Future<Response?> get(String path) async {
    try {
      // 'https://api.coingecko.com/api/v3/coins/bitcoin'
      String url = '$baseUrl$path';
      Response response = await dio.get(url);
      return response;
    } catch (e) {
      return null;
    }
  }
}
