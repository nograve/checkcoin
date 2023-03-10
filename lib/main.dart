import 'dart:convert';
import 'cubit/selected_coin_cubit.dart';
import 'views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'coins.dart';
import 'models/app_config.dart';
import 'services/http_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await loadConfig();
  GetIt.instance.registerSingleton<HTTPService>(HTTPService());
  await GetIt.instance.get<HTTPService>().get('/coins/bitcoin');
  runApp(const MyApp());
}

Future<void> loadConfig() async {
  String configContent = await rootBundle.loadString('assets/config/main.json');
  Map configData = jsonDecode(configContent);
  GetIt.instance.registerSingleton<AppConfig>(
    AppConfig(coinApiBaseUrl: configData['COIN_API_BASE_URL']),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CheckCoin App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color.fromRGBO(
          80,
          60,
          197,
          1.0,
        ),
      ),
      home: BlocProvider(
        create: (_) => SelectedCoinCubit(selectedCoin: coins.first),
        child: const HomeView(),
      ),
    );
  }
}
