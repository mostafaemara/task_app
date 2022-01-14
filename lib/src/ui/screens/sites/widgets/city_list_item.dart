import 'package:flutter/material.dart';
import 'package:task/src/data/model/city.dart';
import 'package:task/src/ui/screens/sites/widgets/site_list_item.dart';

import 'city_title.dart';

class CityListItem extends StatelessWidget {
  const CityListItem({Key? key, required this.city}) : super(key: key);
  final City city;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CityTitle(title: city.name),
          const SizedBox(
            height: 18,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              children: List.generate(
                  city.sites.length,
                  (index) => SiteListItem(
                        key: Key(city.sites[index].id.toString()),
                        site: city.sites[index],
                      )).toList(),
            ),
          )
        ],
      ),
    );
  }
}
