import 'package:hive/hive.dart';
import 'package:task/data/model/user.dart';

class UserDataSource {
  final _boxName = "userBox";
  final _userKey = "user";

  void saveUser(User user) async {
    var box = await Hive.openBox(_boxName);
    await box.put(_userKey, user.toMap());
    await box.close();
  }

  Future<User?> readUser() async {
    var box = await Hive.openBox(_boxName);

    final userMap = await box.get(_userKey) as Map<String, dynamic>;
    await box.close();
    return User.fromMap(userMap);
  }

  Future<bool> isUserExist() async {
    var box = await Hive.openBox(_boxName);

    if (box.containsKey(_userKey)) {
      return true;
    }
    return false;
  }
}
