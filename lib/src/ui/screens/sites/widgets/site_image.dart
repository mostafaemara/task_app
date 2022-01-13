import 'package:flutter/material.dart';

class SiteImage extends StatelessWidget {
  const SiteImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 84,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(7)),
          child: Image.asset(
            "assets/images/bg.jpg",
            fit: BoxFit.cover,
          ),
        ));
  }
}
