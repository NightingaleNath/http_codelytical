import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as client;
import 'package:http_codelytical/src/httpManager/keyHandler.dart';
import 'package:http_codelytical/src/requestResponse/requestResponse.dart';
// import 'package:logger/logger.dart';

Object responseHandler(client.Response response) {

  // final logger = Logger(
  //   printer: PrettyPrinter(),
  // );

  var decodedResponse = json.decode(response.body);
  if (kDebugMode) {
    print('[responseHandler] Decoded response: $decodedResponse');
  }

  var statusKey = KeyHandler.getStatusKey(response);

  var messageKey = KeyHandler.getMessageKey(response);

  if (statusKey.isEmpty) {
    statusKey = 'responseCode'; // Default status key if empty or null
  }

  if (messageKey.isEmpty) {
    messageKey = 'responseMessage'; // Default message key if empty or null
  }

  num statusCode = num.parse(decodedResponse[statusKey]?.toString() ?? "0");

  if (statusCode == 498) {
    //RequestSession.onExpire();
    return "SESSION EXPIRED";
  }

  return statusCode == 200 || statusCode == 201
      ? SuccessResponse(
    response: decodedResponse,
    responseCode:
    int.parse(decodedResponse[statusKey]?.toString() ?? "0"),
  )
      : FailedResponse(
    response: decodedResponse[messageKey]?.toString(),
    responseCode:
    int.parse(decodedResponse[statusKey]?.toString() ?? "0"),
  );
}
