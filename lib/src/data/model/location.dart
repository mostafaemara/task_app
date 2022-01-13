class Location {
  final String lat;
  final String long;

  Location({required this.lat, required this.long});

  factory Location.fromMap(Map<String, dynamic> map) {
    return Location(lat: map["lat"], long: map["long"]);
  }
}
