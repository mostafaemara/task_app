import 'package:flutter/material.dart';
import 'package:task/src/data/model/site.dart';
import 'package:task/src/data/model/site_entery.dart';
import 'package:task/src/data/model/site_type.dart';
import 'package:task/src/data/model/visibillity.dart';
import 'content_field.dart';
import 'site_title.dart';

class SiteContent extends StatelessWidget {
  const SiteContent({
    Key? key,
    required this.site,
  }) : super(key: key);
  final Site site;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsetsDirectional.only(top: 8, start: 8, end: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SiteTitle(
            title: site.name,
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  ContentField(
                      title: "Max Depth", subtitle: "${site.maxDepth} m"),
                  ContentField(
                      title: "Dive Entry", subtitle: site.siteEntry.name())
                ],
              ),
              Column(
                children: [
                  ContentField(
                      title: "Site Type", subtitle: site.siteType.name()),
                  ContentField(
                      title: "Visibility", subtitle: site.visibility.name())
                ],
              ),
            ],
          )
        ],
      ),
    ));
  }
}
