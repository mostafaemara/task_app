import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:task/src/controller/cities_controller.dart';
import 'package:task/src/ui/screens/sites/widgets/cities_list_view.dart';

import 'widgets/logout_button.dart';

class SitesScreen extends GetView<CitiesController> {
  SitesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: controller.obx(
        (state) => Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SafeArea(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  CitiesListView(
                    cities: state ?? [],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  LogutButton(),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            )),
          ),
        ),
      ),
    );
  }
}
