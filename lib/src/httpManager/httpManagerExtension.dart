import 'package:http_codelytical/src/enums/appEnums.dart';
import 'package:http_codelytical/src/httpManager/httpManager.dart';

extension HttpManagerExtension on String {
  Future<Object> get({
    bool includeToken = false,
    bool includeApiKey = false,
  }) async {
    return await HttpManager.request(
      this,
      type: HttpReqType.get,
      includeToken: includeToken,
      includeApiKey: includeApiKey,
    );
  }

  Future<Object> post({
    String body = '',
    bool includeToken = false,
    bool includeApiKey = false,
  }) async {
    return await HttpManager.request(
      this,
      type: HttpReqType.post,
      body: body,
      includeToken: includeToken,
      includeApiKey: includeApiKey,
    );
  }

  Future<Object> put({
    String body = '',
    bool includeToken = false,
    bool includeApiKey = false,
  }) async {
    return await HttpManager.request(
      this,
      type: HttpReqType.put,
      body: body,
      includeToken: includeToken,
      includeApiKey: includeApiKey,
    );
  }

  Future<Object> delete({
    String body = '',
    bool includeToken = false,
    bool includeApiKey = false,
  }) async {
    return await HttpManager.request(
      this,
      type: HttpReqType.delete,
      body: body,
      includeToken: includeToken,
      includeApiKey: includeApiKey,
    );
  }

  Future<Object> patch({
    String body = '',
    bool includeToken = false,
    bool includeApiKey = false,
  }) async {
    return await HttpManager.request(
      this,
      type: HttpReqType.patch,
      body: body,
      includeToken: includeToken,
      includeApiKey: includeApiKey,
    );
  }
}