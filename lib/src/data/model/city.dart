import 'location.dart';
import 'site.dart';

class City {
  final int id;
  final String name;
  final String cover;
  final List<Site> sites;
  final int rate;
  final Location location;
  final int diveSites;

  City(
      {required this.id,
      required this.name,
      required this.cover,
      required this.sites,
      required this.rate,
      required this.location,
      required this.diveSites});

  factory City.fromMap(Map<String, dynamic> map) {
    return City(
        id: map["id"].toInt(),
        name: map["name"],
        cover: map["cover"],
        sites: List.generate(3, (index) => Site()).toList(),
        rate: map["rate"].toInt(),
        location: Location.fromMap(map["location"]),
        diveSites: map["dive_sites"].toInt());
  }
}
