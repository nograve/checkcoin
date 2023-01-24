class AppConfig {
  AppConfig({required String coinApiBaseUrl})
      : _coinApiBaseUrl = coinApiBaseUrl;

  final String _coinApiBaseUrl;

  String get coinApiBaseUrl => _coinApiBaseUrl;
}
