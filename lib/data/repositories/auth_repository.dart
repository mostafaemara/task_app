import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:task/data/exception/auth_exception.dart';
import 'package:task/data/model/login_input.dart';
import 'package:task/data/model/signup_input.dart';
import 'package:task/data/model/user.dart';
import 'package:task/data/repositories/user_data_source.dart';

class AuthRepository {
  final _userDataSource = UserDataSource();
  final _dio = Dio();
  final _loginUrl = "http://app.amackapp.com/api/login";
  final _signupUrl = "http://app.amackapp.com/api/register";
  final _sitesUrl = "http://app.amackapp.com/api/cities/search";
  Future<User> login(LoginInputs inputs) async {
    try {
      final Response<Map<String, dynamic>> response = await _dio.post(_loginUrl,
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application/json",
          }),
          data: inputs.toMap());
      final user = User.fromMap(response.data!["data"]);
      _userDataSource.saveUser(user);
      return user;
    } on DioError catch (e) {
      throw _handleDioError(e);
    } catch (e) {
      throw AuthException(error: AuthError.unkownError, message: e.toString());
    }
  }

  _handleDioError(DioError e) {
    final response = e.response;
    final error = response!.data["error"];
    log("response" + response.data.toString());
    if (response.statusCode == 400) {
      throw AuthException(
          error: AuthError.emailOrPasswordNotCorrect, message: error);
    }
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
      _userDataSource.saveUser(user);
      return user;
    } on DioError catch (e) {
      throw _handleDioError(e);
    } catch (e) {
      throw AuthException(error: AuthError.unkownError, message: e.toString());
    }
  }

  Future<void> logout() async {}
  Future<User?> checkIfUserAuth() async {
    final isUserExist = await _userDataSource.isUserExist();

    if (!isUserExist) {
      final user = await _userDataSource.readUser();
      return user;
    }
  }
}
