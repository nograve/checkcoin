import 'package:flutter/material.dart';

class PercentageChangeWidget extends StatelessWidget {
  const PercentageChangeWidget({
    super.key,
    required this.change,
  });

  final num change;

  @override
  Widget build(BuildContext context) {
    return Text(
      '${change.toString()}%',
      style: const TextStyle(
        color: Colors.white,
        fontSize: 15,
        fontWeight: FontWeight.w300,
      ),
    );
  }
}
