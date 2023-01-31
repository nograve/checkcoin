import 'package:flutter/material.dart';

class DescriptionCardWidget extends StatelessWidget {
  const DescriptionCardWidget({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    return Container(
      height: deviceHeight * 0.45,
      width: MediaQuery.of(context).size.width * 0.9,
      margin: EdgeInsets.symmetric(
        vertical: deviceHeight * 0.05,
      ),
      padding: EdgeInsets.symmetric(
        vertical: deviceHeight * 0.01,
        horizontal: deviceHeight * 0.01,
      ),
      color: const Color.fromRGBO(83, 88, 206, 0.5),
      child: Text(
        description,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
