import 'cubit/selected_coin_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'coins.dart';
import 'pages/home_page.dart';

class CheckCoinApp extends StatelessWidget {
  const CheckCoinApp({super.key});

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
        child: const HomePage(),
      ),
    );
  }
}
