import 'package:flutter/material.dart';

import '../models/currency_price.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({
    required this.prices,
    super.key,
  });

  final Map<dynamic, dynamic> prices;

  @override
  Widget build(BuildContext context) {
    List<CurrencyPrice> pricesList = List.empty(growable: true);
    prices.forEach(
      (key, value) => pricesList.add(
        CurrencyPrice(
          currency: key,
          price: value,
        ),
      ),
    );
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
