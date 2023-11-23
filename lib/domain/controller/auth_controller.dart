import 'dart:convert';

import 'package:booking_app/config/config.dart';
import 'package:booking_app/data/endpoint/endpoint.dart';
import 'package:booking_app/domain/repository/auth_repository.dart';

class AuthController implements AuthRepository {
  final ApiClient _client = ApiClient();
  final HttpState _httpState;

  AuthController(this._httpState);

  @override
  Future<BaseResponse> forgotPassword(String email) async {
    String method = "POST";
    String url = Endpoint.forgotPassword;
    _httpState.onStartRequest(url, method);
    late final BaseResponse baseResponse;
    final response = await _client.post(
      Uri.parse(url),
      body: {'email': email},
    );
    _httpState.onEndRequest(url, method);
    if (response.statusCode < 500) {
      _httpState.onSuccesRequest(url, method);
      baseResponse = BaseResponse.fromJson(jsonDecode(response.body));
    } else {
      _httpState.onErrorRequest(url, method);
      baseResponse = BaseResponse(message: response.statusCode.toString());
    }

    return baseResponse;
  }

  @override
  Future<BaseResponse> login(String email, String password) async {
    String method = "POST";
    String url = Endpoint.login;
    _httpState.onStartRequest(url, method);
    late final BaseResponse baseResponse;
    final response = await _client.post(
      Uri.parse(url),
      body: {
        'email': email,
        "password": password,
      },
    );
    _httpState.onEndRequest(url, method);
    if (response.statusCode < 500) {
      _httpState.onSuccesRequest(url, method);
      baseResponse = BaseResponse.fromJson(jsonDecode(response.body));
    } else {
      _httpState.onErrorRequest(url, method);
      baseResponse = BaseResponse(message: response.statusCode.toString());
    }

    return baseResponse;
  }

  @override
  Future<void> logout() async {
    await _client.post(
      Uri.parse(Endpoint.logout),
      body: {},
    );
  }

  @override
  Future<BaseResponse> register(
      String email, String password, String name) async {
    String method = "POST";
    String url = Endpoint.register;
    _httpState.onStartRequest(url, method);
    late final BaseResponse baseResponse;
    final response = await _client.post(
      Uri.parse(url),
      body: {
        'email': email,
        'password': password,
        'name': name,
      },
    );
    _httpState.onEndRequest(url, method);
    if (response.statusCode < 500) {
      if (response.statusCode > 199 && response.statusCode < 300) {
        _httpState.onSuccesRequest(url, method);
        baseResponse = BaseResponse.fromJson(jsonDecode(response.body));
      } else {
        _httpState.onErrorRequest(url, method);
        baseResponse = BaseResponse(message: response.statusCode.toString());
      }
    } else {
      _httpState.onErrorRequest(url, method);
      baseResponse = BaseResponse(message: response.statusCode.toString());
    }

    return baseResponse;
  }
}
