import 'dart:convert';
import 'package:http/http.dart' as client;

class KeyHandler {
  static String getStatusKey(client.Response response) {
    var decodedResponse = json.decode(response.body);

    // Define the commonly used status keys in the preferred order
    List<String> statusKeys = [
      'status',
      'responseCode',
      'response_code',
      'statusCode'
    ];

    // Find the first non-zero status key in the response
    var statusKey = statusKeys.firstWhere(
          (key) => num.parse(decodedResponse[key]?.toString() ?? "0") != 0,
      orElse: () => '',
    );

    return statusKey;
  }

  static String getMessageKey(client.Response response) {
    var decodedResponse = json.decode(response.body);

    // Define the commonly used message keys in the preferred order
    List<String> messageKeys = [
      'message',
      'responseMessage',
      'messageCode',
      'response_message'
    ];

    // Find the first non-empty message key in the response
    var messageKey = messageKeys.firstWhere(
          (key) => decodedResponse[key] != null && decodedResponse[key] != '',
      orElse: () => '',
    );

    return messageKey;
  }
}
