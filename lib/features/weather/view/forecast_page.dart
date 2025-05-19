import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/core/core.dart';

class ForecastPage extends StatelessWidget {
  const ForecastPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ForecastView();
  }
}

class ForecastView extends StatelessWidget {
  const ForecastView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientContainer(
        children: [
          Align(
            alignment: Alignment.center,
            child: const Text('Forecast Report', style: AppTextStyles.h1),
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Today', style: AppTextStyles.h2),
              Text(DateTime.now().dateTime, style: AppTextStyles.subtitleText),
            ],
          ),
          const SizedBox(height: 20),
          const HourlyForecastView(),
          const SizedBox(height: 20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Next Forecast', style: AppTextStyles.h2),
              Icon(Icons.calendar_month_outlined, color: Colors.white),
            ],
          ),
        ],
      ),
    );
  }
}
