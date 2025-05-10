import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show immutable;
import 'package:weather_app/core/services/geolocator.dart';

@immutable
class ApiHelper {
  static const baseUrl = 'https://api.openweathermap.org/data/2.5';
  static const weeklyWeatherUrl =
      'https://api.open-meteo.com/v1/forecast?current=&daily=weather_code,temperature_2m_max,temperature_2m_min&timezone=auto';

  static double lat = 0.0;
  static double lon = 0.0;
  static final dio = Dio();

  /// Get lat and lon
  static Future<void> fetchLocation() async {
    final location = await getLocation();
    lat = location.latitude;
    lon = location.longitude;
  }

  // TODO: Create Key Storage
  //static String _constructWeatherUrl() => '$baseUrl/weather?lat=$lat&lon=$lon&units=metric&appid=${}';
}
