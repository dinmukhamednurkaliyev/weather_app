import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/core.dart';

class FamousCityTile extends ConsumerWidget {
  final FamousCity city;
  final int index;
  const FamousCityTile({required this.city, required this.index, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weatherData = ref.watch(weatherByCityNameProvider(city.name));
    return weatherData.when(
      data: (weather) {
        return Material(
          color: index == 0 ? AppColors.lightBlue : AppColors.accentBlue,
          elevation: index == 0 ? 8 : 0,
          borderRadius: BorderRadius.circular(25),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Text(weather.main.temp.round().toString()),
                        const SizedBox(height: 10),
                        Text(weather.weather[0].description),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
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
