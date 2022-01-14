class Location {
  Location({required this.lat, required this.long});

  factory Location.fromMap(Map<String, dynamic> map) {
    return Location(lat: map["lat"], long: map["long"]);
  }
  final String lat;
  final String long;
}
