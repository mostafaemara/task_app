import 'package:flutter/material.dart';

class SiteTitle extends StatelessWidget {
  const SiteTitle({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
    );
  }
}
