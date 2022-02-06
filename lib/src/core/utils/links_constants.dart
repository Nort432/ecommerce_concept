/// API url
const String kBaseUrl = 'https://shopapi-0575.restdb.io/';

// API key
const String kApiKeyName = 'x-apikey';
const String kApiKey = '61ddae2e95cb716ea5ee48e4';

// Api content
const String kContentType = 'Content-Type';
const String kAppJson = 'application/json';

/// Headers for API
const Map<String, String> kBaseHeaders = {
  kContentType: kAppJson,
  kApiKeyName: kApiKey
};

/// https://shopapi-0575.restdb.io/rest/home
///
/// get goods for page Home
const String kUrlHome = 'rest/home';
