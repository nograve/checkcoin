import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/selected_coin_cubit.dart';
import '../utils/coins.dart';

class SelectedCoinDropdown extends StatelessWidget {
  const SelectedCoinDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    final List<DropdownMenuItem<String>> items = coins
        .map(
          (e) => DropdownMenuItem(
            value: e,
            child: Text(
              e,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        )
        .toList();
    return BlocBuilder<SelectedCoinCubit, SelectedCoinState>(
      builder: (context, state) {
        return DropdownButton(
          value: state.selectedCoin,
          items: items,
          onChanged: (value) =>
              context.read<SelectedCoinCubit>().changeCoin(coin: value),
          dropdownColor: const Color.fromRGBO(83, 88, 206, 1.0),
          iconSize: 30,
          icon: const Icon(
            Icons.arrow_drop_down,
            color: Colors.white,
          ),
          underline: Container(),
        );
      },
    );
  }
}
