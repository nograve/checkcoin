import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'check_coin_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await loadConfig();
  runApp(const CheckCoinApp());
}

Future<void> loadConfig() async {
  String configContent = await rootBundle.loadString('assets/config/main.json');
  Map configData = jsonDecode(configContent);
  print(configData);
}
