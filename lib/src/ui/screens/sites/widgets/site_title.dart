import 'package:flutter/material.dart';

class SiteTitle extends StatelessWidget {
  const SiteTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Ricks Reef Ricks Reef",
      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
    );
  }
}
