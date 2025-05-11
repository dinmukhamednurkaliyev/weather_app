import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core.dart';

final weatherByCityNameProvider = FutureProvider.autoDispose
    .family<Weather, String>((ref, String cityName) {
      return ApiHelper.getWeatherByCity(cityName: cityName);
    });
