import 'package:flutter/material.dart';
import 'package:task/src/data/model/city.dart';

class CityTitle extends StatelessWidget {
  const CityTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline6,
    );
  }
}
