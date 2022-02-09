class AppLinks {
  /// API url
  static const String kBaseUrl = 'https://shopapi-0575.restdb.io/';

// API key
  static const String kApiKeyName = 'x-apikey';
  static const String kApiKey = '61ddae2e95cb716ea5ee48e4';

// Api content
  static const String kContentType = 'Content-Type';
  static const String kAppJson = 'application/json';

  /// Headers for API
  static const Map<String, String> kBaseHeaders = {
    kContentType: kAppJson,
    kApiKeyName: kApiKey
  };

  /// https://shopapi-0575.restdb.io/rest/home
  ///
  /// get goods for page Home
  static const String kUrlHome = 'rest/home';

}