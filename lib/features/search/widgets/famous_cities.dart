import 'package:flutter/material.dart';
import 'package:weather_app/core/core.dart';

import '../../features.dart';

class FamousCities extends StatelessWidget {
  const FamousCities({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: famousCities.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        final city = famousCities[index];
        return FamousCityTile(index: index, city: city);
      },
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    );
  }
}
