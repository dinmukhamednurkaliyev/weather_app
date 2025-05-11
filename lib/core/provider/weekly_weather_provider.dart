import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../services/services.dart';

final weeklyWeatherProvider = FutureProvider.autoDispose((ref) {
  return ApiHelper.getWeeklyForecast();
});
