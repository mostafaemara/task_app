import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/src/data/model/site.dart';
import 'package:task/src/ui/screens/sites/widgets/site_image.dart';

import 'site_content.dart';

class SiteListItem extends StatelessWidget {
  const SiteListItem({Key? key, required this.site}) : super(key: key);
  final Site site;

  @override
  Widget build(BuildContext context) {
    Get.put(site);
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: SizedBox(
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SiteImage(url: site.cover),
            SiteContent(
              site: site,
            )
          ],
        ),
      ),
    );
  }
}
