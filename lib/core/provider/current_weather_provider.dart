import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../services/services.dart';

final currentWeatherProvider = FutureProvider.autoDispose((ref) {
  return ApiHelper.getCurrentWeather();
});
