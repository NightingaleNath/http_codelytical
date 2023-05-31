import 'package:http_codelytical/src/httpManager/apiConfig.dart';

class Headers {
  static Map<String, String> getHeader({
    bool includeToken = false,
    bool includeApiKey = false,
  }) {
    var headers = {
      "Content-type": "application/json",
      "Accept": "application/json",
    };

    if (includeToken) {
      headers["Authorization"] = "Bearer ${ApiConfig.token}";
    }

    if (includeApiKey) {
      headers["x-api-key"] = ApiConfig.apiKey;
    }
    // Add any other common headers here

    return headers;
  }
}