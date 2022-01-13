class SignupInputs {
  final String email;
  final String password;
  final String mobile;
  final String name;
  final int countryId;

  SignupInputs(
      {required this.email,
      required this.password,
      required this.mobile,
      required this.name,
      required this.countryId});

  Map<String, dynamic> toMap() {
    return {
      "name": name,
      "email": email,
      "password": password,
      "mobile": mobile,
      "country_id": 64 //leve this id static
    };
  }
}
