import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:get/get.dart' as getx;
import 'package:task/src/data/model/city.dart';

class CitiesService extends getx.GetxService {
  final _dio = Dio();
  final _sitesUrl = "http://app.amackapp.com/api/cities/search";

  Future<List<City>> readCities(String token) async {
    final Response<Map<String, dynamic>> response = await _dio.post(
      _sitesUrl,
      options: Options(headers: {
        HttpHeaders.contentTypeHeader: "application/json",
        "Authorization": "Bearer $token"
      }),
    );
    return _mapToCities(response.data!["data"]);
  }

  List<City> _mapToCities(List<dynamic> maps) {
    List<City> cities = [];

    for (final map in maps) {
      cities.add(City.fromMap(map));
    }
    log(cities.length.toString());

    return cities;
  }
}
