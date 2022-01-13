import 'package:flutter/material.dart';

import 'content_field.dart';
import 'site_title.dart';

class SiteContent extends StatelessWidget {
  const SiteContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsetsDirectional.only(top: 8, start: 8, end: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SiteTitle(),
          const SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: const [
                  ContentField(title: "Title", subtitle: "Subtitle"),
                  ContentField(title: "Title", subtitle: "Subtitle")
                ],
              ),
              Column(
                children: const [
                  ContentField(title: "Title", subtitle: "Subtitle"),
                  ContentField(title: "Title", subtitle: "Subtitle")
                ],
              ),
            ],
          )
        ],
      ),
    ));
  }
}
