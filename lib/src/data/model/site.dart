import 'package:task/src/data/model/location.dart';
import 'package:task/src/data/model/site_entery.dart';
import 'package:task/src/data/model/site_type.dart';
import 'package:task/src/data/model/visibillity.dart';

class Site {
  Site(
      {required this.id,
      required this.name,
      required this.cover,
      required this.images,
      required this.location,
      required this.maxDepth,
      required this.siteType,
      required this.visibility,
      required this.siteEntry,
      required this.rate,
      required this.isSpecial,
      required this.distanceFromCity});

  factory Site.fromMap(Map<String, dynamic> map) {
    return Site(
        id: map["id"],
        name: map["name"],
        cover: map["cover"],
        images: List<String>.from(map["images"].map((x) => x)),
        location: Location.fromMap(map["location"]),
        maxDepth: map["max_depth"],
        siteType: (map["site_type"] as String).mapToSiteType(),
        visibility: (map["visibility"] as String).mapToVisibility(),
        siteEntry: (map["site_entry"] as String).mapToSiteEntry(),
        rate: map["rate"].toDouble(),
        isSpecial: map["isSpecial"] == 0 ? false : true,
        distanceFromCity: map["distance_from_city"].toDouble());
  }

  final int id;
  final String name;
  final String cover;
  final List<String> images;
  final Location location;
  final int maxDepth;
  final SiteType siteType;
  final Visibility visibility;
  final SiteEntry siteEntry;
  final double rate;
  final bool isSpecial;
  final double distanceFromCity;
}
