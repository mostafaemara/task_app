import 'package:flutter/material.dart';

import 'site_Image.dart';
import 'site_content.dart';

class SiteListItem extends StatelessWidget {
  const SiteListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: SizedBox(
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [SiteImage(), SiteContent()],
        ),
      ),
    );
  }
}
