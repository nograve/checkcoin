import 'package:flutter/material.dart';

import 'package:checkcoin/models/currency_price.dart';

class DetailsPage extends StatelessWidget {
  final Map<dynamic, dynamic> prices;

  const DetailsPage({
    required this.prices,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<CurrencyPrice> pricesList = List.empty(growable: true);
    prices.forEach((key, value) =>
        pricesList.add(CurrencyPrice(currency: key, price: value)));
    return Scaffold(
      body: ListView.builder(
        itemCount: pricesList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              '${pricesList[index].currency.toUpperCase()}: ${pricesList[index].price}',
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          );
        },
      ),
    );
  }
}
