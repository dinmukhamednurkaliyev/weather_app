import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/features/weather/widgets/subscript_text.dart';

class WeeklyWeatherTile extends StatelessWidget {
  final String dayOfWeek;
  final String date;
  final int temp;
  final AssetGenImage icon;
  const WeeklyWeatherTile({
    required this.dayOfWeek,
    required this.date,
    required this.temp,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      margin: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.accentBlue,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(dayOfWeek, style: AppTextStyles.h3),
              const SizedBox(height: 5),
              Text(date, style: AppTextStyles.subtitleText),
            ],
          ),
          SuperscriptText(
            text: temp.toString(),
            superScript: '°C',
            color: Colors.white,
            superscriptColor: Colors.grey,
          ),

          icon.image(width: 40, height: 40),
        ],
      ),
    );
  }
}
