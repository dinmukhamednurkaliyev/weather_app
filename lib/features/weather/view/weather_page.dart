import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/core.dart';
import '../../features.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WeatherView();
  }
}

class WeatherView extends ConsumerWidget {
  const WeatherView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weatherData = ref.watch(currentWeatherProvider);
    return weatherData.when(
      data: (weather) {
        final String iconName = weather.weather[0].icon.replaceAll('n', 'd');

        final AssetGenImage? weatherIconAsset = weatherIcons[iconName];
        return GradientContainer(
          children: [
            Column(
              children: [
                const SizedBox(width: double.infinity),
                Text(weather.name, style: AppTextStyles.h1),
                const SizedBox(height: 20),
                Text(
                  DateTime.now().dateTime,
                  style: AppTextStyles.subtitleText,
                ),
                const SizedBox(height: 30),

                SizedBox(
                  height: 260,
                  child:
                      weatherIconAsset != null
                          ? weatherIconAsset.image(width: 260, height: 260)
                          : Text('Icon not found for $iconName'),
                ),
                const SizedBox(height: 40),
                Text(
                  weather.weather[0].description.capitalize,
                  style: AppTextStyles.h2,
                ),
              ],
            ),

            const SizedBox(height: 40),
            WeatherInfo(weather: weather),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Today', style: AppTextStyles.h2),
                TextButton(onPressed: () {}, child: const Text('View all')),
              ],
            ),
            const SizedBox(height: 15),
            HourlyForecastWeather(),
          ],
        );
      },
      error: (error, stackTrace) {
        return Center(child: Text(error.toString()));
      },
      loading: () {
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
