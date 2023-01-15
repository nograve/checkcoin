class CurrencyPrice {
  final String _currency;
  final num _price;

  CurrencyPrice(this._currency, this._price);

  String get currency => _currency;
  num get price => _price;
}
