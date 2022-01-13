class LoginInputs {
  final String email;
  final String password;

  LoginInputs({required this.email, required this.password});
  Map<String, dynamic> toMap() {
    return {"email": email, "password": password};
  }
}
