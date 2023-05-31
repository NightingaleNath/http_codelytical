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
  ApiConfig.setToken(token ?? "");
  ApiConfig.setApiKey(apiKey ?? "");
}