class CurrencyPrice {
  CurrencyPrice({required String currency, required num price})
      : _currency = currency,
        _price = price;

  final String _currency;
  final num _price;

  String get currency => _currency;
  num get price => _price;
}
