import 'location.dart';
import 'site.dart';

class City {
  City(
      {required this.images,
      required this.id,
      required this.name,
      required this.cover,
      required this.sites,
      required this.rate,
      required this.location,
      required this.diveSites});

  factory City.fromMap(Map<String, dynamic> map) {
    return City(
        images: List<String>.from(map["images"].map((x) => x)),
        id: map["id"],
        name: map["name"],
        cover: map["cover"],
        sites: List<Site>.from(map["sites"].map((x) => Site.fromMap(x))),
        rate: map["rate"],
        location: Location.fromMap(map["location"]),
        diveSites: map["dive_sites"]);
  }

  final int id;
  final String name;
  final String cover;
  final List<Site> sites;
  final int rate;
  final Location location;
  final int diveSites;

  final List<String> images;
}
