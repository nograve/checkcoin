import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';

import 'check_coin_app.dart';
import 'models/app_config.dart';
import 'services/http_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await loadConfig();
  GetIt.instance.registerSingleton<HTTPService>(HTTPService());
  await GetIt.instance.get<HTTPService>().get('/coins/bitcoin');
  runApp(const CheckCoinApp());
}

Future<void> loadConfig() async {
  String configContent = await rootBundle.loadString('assets/config/main.json');
  Map configData = jsonDecode(configContent);
  GetIt.instance.registerSingleton<AppConfig>(
    AppConfig(coinApiBaseUrl: configData['COIN_API_BASE_URL']),
  );
}
