import 'package:flutter/material.dart';

class CoinImageWidget extends StatelessWidget {
  const CoinImageWidget({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: deviceHeight * 0.02,
      ),
      height: deviceHeight * 0.15,
      width: MediaQuery.of(context).size.width * 0.15,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(imageUrl),
        ),
      ),
    );
  }
}
