import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../services/services.dart';

final hourlyWeatherProvider = FutureProvider.autoDispose((ref) {
  return ApiHelper.getHourlyForecast();
});
