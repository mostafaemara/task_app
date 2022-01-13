class User {
  final int id;
  final String name;
  final String email;
  final String mobile;
  final int counteryId;
  final String token;

  User(
      {required this.name,
      required this.id,
      required this.email,
      required this.mobile,
      required this.counteryId,
      required this.token});

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
        name: map["name"],
        id: map["id"].toInt(),
        email: map["email"],
        mobile: map["mobile"],
        counteryId: map["country_id"].toInt(),
        token: map["token"]);
  }
  Map<String, dynamic> toMap() {
    return {
      "name": name,
      "email": email,
      "id": id,
      "mobile": mobile,
      "counteryId": counteryId,
      "token": token
    };
  }
}