import 'dart:convert';

import 'package:get/get_state_manager/get_state_manager.dart';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:task/src/data/model/user.dart';

class UserDatabaseService extends GetxService {
  final _boxName = "userBox";
  final _userKey = "user";
  late Box _box;
  Future<void> init() async {
    await Hive.initFlutter();
    _box = await Hive.openBox(_boxName);
  }

  void saveUser(User user) async {
    final jsonString = json.encode(user.toMap());
    await _box.put(_userKey, jsonString);
  }

  Future<User?> readUser() async {
    final jsonString = await _box.get(_userKey);

    final userMap = json.decode(jsonString);
    return User.fromMap(userMap);
  }

  Future<void> deleteUser() async {
    await _box.delete(_userKey);
  }

  Future<bool> isUserExist() async {
    if (_box.containsKey(_userKey)) {
      return true;
    }
    return false;
  }
}
