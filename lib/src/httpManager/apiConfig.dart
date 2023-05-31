import 'package:http_codelytical/src/enums/appEnums.dart';
import 'package:logger/logger.dart';

class ApiConfig {

  static final Logger logger = Logger();

  static int requestTimedOut = 30; // Default value
  static int requestDataLimit = 30; // Default value

  static Environment environment = Environment.dev;
  static String apiKey = '';
  static String token = '';

  static Map<Environment, String> urls = {
    Environment.dev: '',
    Environment.uat: '',
    Environment.live: '',
  };

  static String getBaseUrl() {
    String? baseUrl = urls[environment];
    if (baseUrl == null) {
      logger.e('Base URL not provided for the current environment');
      throw Exception('Base URL not provided for the current environment');
    }
    return baseUrl;

  }

  static void setBaseUrl(Environment environment, String baseUrl) {
    urls[environment] = baseUrl;
  }

  static void setToken(String newToken) {
    token = newToken;
  }

  static void setApiKey(String newApiKey) {
    apiKey = newApiKey;
  }

  static void setRequestTimedOut(int value) {
    requestTimedOut = value;
  }

  static void setRequestDataLimit(int value) {
    requestDataLimit = value;
  }
}