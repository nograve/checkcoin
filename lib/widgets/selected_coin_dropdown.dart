import 'package:flutter/material.dart';

class SelectedCoinDropdown extends StatelessWidget {
  const SelectedCoinDropdown({
    super.key,
    required this.selectedCoin,
    required this.onCoinChanged,
  });

  final String? selectedCoin;
  final void Function(Object?)? onCoinChanged;

  @override
  Widget build(BuildContext context) {
    final List<String> coins = [
      'bitcoin',
      'ethereum',
      'tether',
      'dogecoin',
    ];
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
    return DropdownButton(
      value: selectedCoin ?? (selectedCoin = coins.first),
      items: items,
      onChanged: onCoinChanged,
      dropdownColor: const Color.fromRGBO(83, 88, 206, 1.0),
      iconSize: 30,
      icon: const Icon(
        Icons.arrow_drop_down,
        color: Colors.white,
      ),
      underline: Container(),
    );
  }
}
