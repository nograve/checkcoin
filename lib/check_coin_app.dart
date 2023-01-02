import 'package:flutter/material.dart';

import 'package:checkcoin/pages/home_page.dart';

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
      home: const HomePage(),
    );
  }
}
