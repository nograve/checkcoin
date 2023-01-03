import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'package:checkcoin/models/app_config.dart';

class HTTPService {
  final Dio dio = Dio();

  AppConfig? appConfig;
  String? baseUrl;

  HTTPService() {
    appConfig = GetIt.instance.get<AppConfig>();
    baseUrl = appConfig!.COIN_API_BASE_URL;
  }
}
