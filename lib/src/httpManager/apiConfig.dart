import 'package:http_codelytical/src/enums/appEnums.dart';

class ApiConfig {
  static int requestTimedOut = 30000; // Default value
  static int requestDataLimit = 30; // Default value

  static Environment environment = Environment.dev;
  static String apiKey = '';
  static String token = '';

  static Map<Environment, String> urls = {
    Environment.dev: 'https://api.dev.example.com',
    Environment.uat: 'https://api.uat.example.com',
    Environment.live: 'https://api.example.com',
  };

  static String getBaseUrl() {
    String? baseUrl = urls[environment];
    if (baseUrl == null) {
      throw Exception('Base URL not provided for the current environment');
    }
    return baseUrl;

  }

  static void setRequestTimedOut(int value) {
    requestTimedOut = value;
  }

  static void setRequestDataLimit(int value) {
    requestDataLimit = value;
  }
}