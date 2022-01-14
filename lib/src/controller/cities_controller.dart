import 'dart:developer';

import 'package:get/get.dart';
import 'package:task/src/data/model/city.dart';
import 'package:task/src/services/cities_service.dart';

import 'auth_controller.dart';

class CitiesController extends GetxController with StateMixin<List<City>> {
  @override
  void onInit() {
    super.onInit();
    init();
  }

  void init() {
    final AuthController authController = Get.find();
    final CitiesService citiesService = Get.find();
    authController.state.listen((state) {
      state.whenOrNull(
        authenticated: (user) async {
          try {
            change([], status: RxStatus.loading());
            final cities = await citiesService.readCities(user.token);
            change(cities, status: RxStatus.success());
          } catch (e) {
            change([], status: RxStatus.error(e.toString()));
          }
        },
      );
    });
  }
}
