// API url
const String kProtocol = 'https://';
const String kThirdLevelDomain = 'shopapi-0575';
const String kDot = '.';
const String kSecondLevelDomain = 'restdb';
const String kFirstLevelDomain = 'io';
const String kBaseUrl = kProtocol +
    kThirdLevelDomain +
    kDot +
    kSecondLevelDomain +
    kFirstLevelDomain;
// second part
const String kApiKeyName = 'x-apikey';
const String kApiKey = '61ddae2e95cb716ea5ee48e4';
const String kRest = 'rest';
const String kSlash = '/';

const String kHome = 'home';

// API links
/// https://shopapi-0575.restdb.io/rest/home
///
/// get goods
const String kUrlHome = kSlash + kRest + kSlash + kHome;
