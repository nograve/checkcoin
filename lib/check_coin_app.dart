import 'package:flutter/material.dart';

import 'package:checkcoin/pages/home_page.dart';

class CheckCoinApp extends StatelessWidget {
  const CheckCoinApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'CheckCoin App',
      home: HomePage(),
    );
  }
}
