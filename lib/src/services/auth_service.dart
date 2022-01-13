import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:get/get.dart' as getx;
import 'package:task/src/data/exception/auth_exception.dart';
import 'package:task/src/data/model/login_input.dart';
import 'package:task/src/data/model/signup_input.dart';
import 'package:task/src/data/model/user.dart';

import 'user_database_service.dart';

class AuthService extends getx.GetxService {
  final UserDatabaseService _userDatabaseService = getx.Get.find();
  final _dio = Dio();
  final _loginUrl = "http://app.amackapp.com/api/login";
  final _signupUrl = "http://app.amackapp.com/api/register";

  Future<User> login(LoginInputs inputs) async {
    try {
      final Response<Map<String, dynamic>> response = await _dio.post(_loginUrl,
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
          }),
          data: inputs.toMap());
      final user = User.fromMap(response.data!["data"]);
      _userDatabaseService.saveUser(user);
      return user;
    } on DioError catch (e) {
      throw _handleDioError(e);
    } catch (e) {
      throw AuthException(error: AuthError.unkownError, message: e.toString());
    }
  }

  AuthError _parseErrorResponse(dynamic data) {
    //ToDO parse the invalid inputs response to AuthError
    return AuthError.emailOrPasswordNotCorrect;
  }

  Future<User> signup(SignupInputs inputs) async {
    try {
      final Response<Map<String, dynamic>> response =
          await _dio.post(_signupUrl,
              options: Options(headers: {
                HttpHeaders.contentTypeHeader: "application/json",
              }),
              data: inputs.toMap());
      log("response" + response.data.toString());
      final user = User.fromMap(response.data!["data"]);
      _userDatabaseService.saveUser(user);
      return user;
    } on DioError catch (e) {
      throw _handleDioError(e);
    } catch (e) {
      throw AuthException(error: AuthError.unkownError, message: e.toString());
    }
  }

  Future<void> logout() async {
    await _userDatabaseService.deleteUser();
  }

  _handleDioError(DioError e) {
    final response = e.response;
    final error = response!.data["error"];
    log("response" + response.data.toString());
    log("responseCode" + response.statusCode.toString());
    if (response.statusCode == 400) {
      final authError = _parseErrorResponse(response.data);
      throw AuthException(error: authError, message: error);
    }
  }

  Future<User?> checkIfUserAuth() async {
    final isUserExist = await _userDatabaseService.isUserExist();

    if (isUserExist) {
      final user = await _userDatabaseService.readUser();

      return user;
    }
  }
}
