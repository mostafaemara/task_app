import 'package:flutter/material.dart';
import 'package:task/src/data/model/city.dart';
import 'package:task/src/ui/screens/sites/widgets/site_list_item.dart';

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
          CityTitle(city: city),
          const SizedBox(
            height: 18,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              children: List.generate(
                  city.sites.length, (index) => const SiteListItem()).toList(),
            ),
          )
        ],
      ),
    );
  }
}

class CityTitle extends StatelessWidget {
  const CityTitle({
    Key? key,
    required this.city,
  }) : super(key: key);

  final City city;

  @override
  Widget build(BuildContext context) {
    return Text(
      city.name,
      style: Theme.of(context).textTheme.headline6,
    );
  }
}
