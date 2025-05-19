import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/core.dart';
import '../../features.dart';

class WeatherDetailPage extends StatelessWidget {
  final String cityName;
  const WeatherDetailPage({super.key, required this.cityName});

  @override
  Widget build(BuildContext context) {
    return WeatherDetailView(cityName: cityName);
  }
}

class WeatherDetailView extends ConsumerWidget {
  final String cityName;
  const WeatherDetailView({required this.cityName, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weatherData = ref.watch(weatherByCityNameProvider(cityName));
    return weatherData.when(
      data: (weather) {
        final String iconName = weather.weather[0].icon.replaceAll('n', 'd');

        final AssetGenImage? weatherIconAsset = weatherIcons[iconName];
        return GradientContainer(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(width: double.infinity),
                Text(weather.name, style: AppTextStyles.h1),
                const SizedBox(height: 20),
                Text(
                  DateTime.now().dateTime,
                  style: AppTextStyles.subtitleText,
                ),
                const SizedBox(height: 50),

                SizedBox(
                  height: 260,
                  child:
                      weatherIconAsset != null
                          ? weatherIconAsset.image(width: 260, height: 260)
                          : Text('Icon not found for $iconName'),
                ),
                const SizedBox(height: 50),
                Text(
                  weather.weather[0].description.capitalize,
                  style: AppTextStyles.h2,
                ),
              ],
            ),

            const SizedBox(height: 40),
            WeatherInfo(weather: weather),
            const SizedBox(height: 15),
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
