

import 'package:dio/dio.dart';
import 'package:provider_usage_code/http/api.dart';
import 'package:provider_usage_code/http/dio_requests.dart';
import 'package:provider_usage_code/http/server_response.dart';

Future<ServerResponse> loginToServer({
  required String phone,
  required String password,
}) async {
  try {
    Map<String, dynamic> data = {
      "password": password,
      "phoneNumber": {
        "number": int.parse(phone),
      }
    };


    Response? response = await dioPostJson(
      url: Api.login,
      data: data,
    );
    if (response == null) return ServerResponse.defaultError();
    if (successResponse(response.statusCode)) {
      return ServerResponse.defaultSuccess(
        value: response.data['token'],
      );
    }
  } catch (e) {
    return ServerResponse.defaultSuccess();
  }

  return ServerResponse.defaultError();
}
