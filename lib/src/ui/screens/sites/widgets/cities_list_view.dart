import 'package:flutter/material.dart';

import 'package:task/src/data/model/city.dart';

import 'package:task/src/ui/screens/sites/widgets/city_list_item.dart';

class CitiesListView extends StatelessWidget {
  const CitiesListView({
    Key? key,
    required this.cities,
  }) : super(key: key);
  final List<City> cities;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
          cities.length,
          (index) => CityListItem(
              key: Key(cities[index].id.toString()), city: cities[index])),
    );
  }
}
