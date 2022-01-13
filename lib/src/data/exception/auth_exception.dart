enum AuthError {
  unkownError,
  emailAlreadyexist,
  emailOrPasswordNotCorrect,
} //etc

class AuthException implements Exception {
  final AuthError error;
  final String? message;

  AuthException({required this.error, this.message});
}
