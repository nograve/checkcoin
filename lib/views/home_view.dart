import '../widgets/data_widgets.dart';
import '../widgets/selected_coin_dropdown.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SelectedCoinDropdown(),
              DataWidgets(),
            ],
          ),
        ),
      ),
    );
  }
}
