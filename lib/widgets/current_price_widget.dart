import 'package:flutter/material.dart';

class CurrentPriceWidget extends StatelessWidget {
  const CurrentPriceWidget({
    super.key,
    required this.rate,
  });

  final num rate;

  @override
  Widget build(BuildContext context) {
    return Text(
      '${rate.toStringAsFixed(2)} USD',
      style: const TextStyle(
        color: Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
