import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'package:checkcoin/models/app_config.dart';

class HTTPService {
  final Dio dio = Dio();

  AppConfig? appConfig;
  String? baseUrl;

  HTTPService() {}
}
