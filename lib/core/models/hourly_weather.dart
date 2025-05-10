import 'package:flutter/foundation.dart' show immutable;

import 'models.dart';

class City {
  final int id;
  final String name;
  final HourlyCoord coord;
  final String country;
  final int population;
  final int timezone;
  final int sunrise;
  final int sunset;

  City({
    required this.id,
    required this.name,
    required this.coord,
    required this.country,
    required this.population,
    required this.timezone,
    required this.sunrise,
    required this.sunset,
  });

  factory City.fromJson(Map<String, dynamic> json) {
    return City(
      id: json['id'],
      name: json['name'],
      coord: HourlyCoord.fromJson(json['coord']),
      country: json['country'],
      population: json['population'],
      timezone: json['timezone'],
      sunrise: json['sunrise'],
      sunset: json['sunset'],
    );
  }
}

@immutable
class HourlyClouds {
  final int all;

  const HourlyClouds({required this.all});

  factory HourlyClouds.fromJson(Map<String, dynamic> json) {
    return HourlyClouds(all: json['all']);
  }
}

@immutable
class HourlyCoord {
  final double lat;
  final double lon;

  const HourlyCoord({required this.lat, required this.lon});

  factory HourlyCoord.fromJson(Map<String, dynamic> json) {
    return HourlyCoord(
      lat: json['lat'].toDouble(),
      lon: json['lon'].toDouble(),
    );
  }
}

@immutable
class HourlyMain {
  final double temp;
  final double feelsLike;
  final double tempMin;
  final double tempMax;
  final int pressure;
  final int seaLevel;
  final int grndLevel;
  final int humidity;
  final double tempKf;

  const HourlyMain({
    required this.temp,
    required this.feelsLike,
    required this.tempMin,
    required this.tempMax,
    required this.pressure,
    required this.seaLevel,
    required this.grndLevel,
    required this.humidity,
    required this.tempKf,
  });

  factory HourlyMain.fromJson(Map<String, dynamic> json) {
    return HourlyMain(
      temp: json['temp'].toDouble(),
      feelsLike: json['feels_like'].toDouble(),
      tempMin: json['temp_min'].toDouble(),
      tempMax: json['temp_max'].toDouble(),
      pressure: json['pressure'],
      seaLevel: json['sea_level'],
      grndLevel: json['grnd_level'],
      humidity: json['humidity'],
      tempKf: json['temp_kf'].toDouble(),
    );
  }
}

@immutable
class HourlyRain {
  final double threeHours;

  const HourlyRain({required this.threeHours});

  factory HourlyRain.fromJson(Map<String, dynamic> json) {
    return HourlyRain(threeHours: json['3h'] ?? 0.0);
  }
}

@immutable
class HourlySysData {
  final String pod;

  const HourlySysData({required this.pod});

  factory HourlySysData.fromJson(Map<String, dynamic> json) {
    return HourlySysData(pod: json['pod'] ?? '');
  }
}

@immutable
class HourlyWeather {
  final String cod;
  final int message;
  final int cnt;
  final List<HourlyWeatherEntry> list;
  final City? city;

  const HourlyWeather({
    required this.cod,
    required this.message,
    required this.cnt,
    required this.list,
    required this.city,
  });

  factory HourlyWeather.fromJson(Map<String, dynamic> json) {
    return HourlyWeather(
      cod: json['cod'] ?? '',
      message: json['message'] ?? 0,
      cnt: json['cnt'] ?? 0,
      list:
          (json['list'] as List<dynamic>)
              .map((entry) => HourlyWeatherEntry.fromJson(entry))
              .toList(),
      city: json['city'] != null ? City.fromJson(json['city']) : null,
    );
  }
}

@immutable
class HourlyWeatherEntry {
  final int dt;
  final HourlyMain main;
  final List<WeatherData> weather;
  final HourlyClouds clouds;
  final HourlyWind wind;
  final int visibility;
  final dynamic pop;
  final HourlySysData? sys;
  final HourlyRain? rain;
  final String dtTxt;

  const HourlyWeatherEntry({
    required this.dt,
    required this.main,
    required this.weather,
    required this.clouds,
    required this.wind,
    required this.visibility,
    required this.pop,
    required this.sys,
    required this.rain,
    required this.dtTxt,
  });

  factory HourlyWeatherEntry.fromJson(Map<String, dynamic> json) {
    return HourlyWeatherEntry(
      dt: json['dt'] ?? 0,
      main: HourlyMain.fromJson(json['main']),
      weather:
          (json['weather'] as List<dynamic>)
              .map((weatherData) => WeatherData.fromJson(weatherData))
              .toList(),
      clouds: HourlyClouds.fromJson(json['clouds']),
      wind: HourlyWind.fromJson(json['wind']),
      visibility: json['visibility'] ?? 0,
      pop: json['pop'] ?? 0.0,
      sys: json['sys'] != null ? HourlySysData.fromJson(json['sys']) : null,
      rain: json['rain'] != null ? HourlyRain.fromJson(json['rain']) : null,
      dtTxt: json['dt_txt'],
    );
  }
}

@immutable
class HourlyWind {
  final double speed;
  final int deg;
  final double gust;

  const HourlyWind({
    required this.speed,
    required this.deg,
    required this.gust,
  });

  factory HourlyWind.fromJson(Map<String, dynamic> json) {
    return HourlyWind(
      speed: json['speed'].toDouble(),
      deg: json['deg'],
      gust: json['gust'].toDouble(),
    );
  }
}
