import 'package:http_codelytical/src/requestResponse/responseCodes.dart';

class SuccessResponse {
  Object? response;
  int? responseCode;
  SuccessResponse({this.response, this.responseCode});
}

class FailedResponse {
  Object? response;
  int? responseCode;
  FailedResponse({this.response, this.responseCode});

  static FailedResponse get failedNetwork => FailedResponse(
      responseCode: noInternet,
      response:
      "Poor or no internet connection. Please check your internet connection and try again.");

  static FailedResponse get unknownError => FailedResponse(
      responseCode: unknownErrorCode,
      response:
      "We apologize, but an unexpected error has occurred. Please retry or cancel your request.");

  static FailedResponse get invalidFormatError => FailedResponse(
      responseCode: invalidFormat,
      response:
      "We apologize, but an unexpected error has occurred. Please retry or cancel your request.");

  static FailedResponse get timedOutError => FailedResponse(
      responseCode: timedOut,
      response:
      "Sorry, it seems your request has timed out. Please check your internet connection and try again.");
}
