import 'package:http_codelytical/src/enums/appEnums.dart';
import 'package:http_codelytical/src/httpManager/apiConfig.dart';

void initializeLibrary({
  String? baseUrl,
  Environment? env,
  String? token,
  String? apiKey,
}) {
  // Set the base URL, token, and API key for your library
  ApiConfig.setBaseUrl(env ?? Environment.uat, baseUrl ?? "");

  // Set the token if provided
  if (token != null) {
    ApiConfig.setToken(token);
  }

  // Set the API key if provided
  if (apiKey != null) {
    ApiConfig.setApiKey(apiKey);
  }
}