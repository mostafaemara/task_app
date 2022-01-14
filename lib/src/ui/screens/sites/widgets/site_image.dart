import 'package:flutter/material.dart';

class SiteImage extends StatelessWidget {
  const SiteImage({
    Key? key,
    required this.url,
  }) : super(key: key);
  final String url;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 84,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(7)),
          child: Image.network(
            url,
            fit: BoxFit.cover,
          ),
        ));
  }
}
