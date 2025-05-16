import 'package:app_ui/app_ui.dart';

AssetGenImage getWeatherIcon({required int weatherCode}) {
  if (weatherCode == 801) {
    return Assets.icons.a02d;
  } else if (weatherCode == 802) {
    return Assets.icons.a03d;
  } else if (weatherCode == 803) {
    return Assets.icons.a04d;
  } else if (weatherCode == 804) {
    return Assets.icons.a04d;
  } else if (weatherCode == 800) {
    return Assets.icons.a01d;
  } else if (weatherCode > 700) {
    return Assets.icons.a50d;
  } else if (weatherCode >= 600) {
    return Assets.icons.a50d;
  } else if (weatherCode >= 500) {
    return Assets.icons.a13d;
  } else if (weatherCode >= 300) {
    return Assets.icons.a10d;
  } else if (weatherCode >= 200) {
    return Assets.icons.a11d;
  }

  return Assets.icons.a01d;
}

//! Mpas weather codes (from opne-meteo) to image urls
AssetGenImage getWeatherIcon2(int id) {
  if (id == 0) {
    return Assets.icons.a01d;
  }
  if (id == 1) {
    return Assets.icons.a6;
  }
  if (id == 2) {
    return Assets.icons.a03d;
  }
  if (id == 3) {
    return Assets.icons.a04d;
  }
  if (id == 45) {
    return Assets.icons.a04d;
  }
  if (id == 48) {
    return Assets.icons.a04d;
  }
  if (id == 53) {
    return Assets.icons.a39;
  }
  if (id > 50 && id < 60) {
    return Assets.icons.a09d;
  }
  if (id > 60 && id < 70) {
    return Assets.icons.a7;
  }
  if (id >= 70 && id < 80) {
    return Assets.icons.a04d;
  }
  if (id >= 80 && id < 85) {
    return Assets.icons.a7;
  }
  if (id > 85) {
    return Assets.icons.a13d;
  }

  return Assets.icons.a01d;
}

/*
0: Clear sky
1: Mainly clear
2: Partly cloudy
3: Overcast
45: Fog
48: Depositing rime fog
51: Light drizzle
52: Moderate drizzle
53: Heavy drizzle
55: Freezing drizzle
56: Light freezing drizzle
57: Heavy freezing drizzle
61: Slight rain
63: Moderate rain
65: Heavy rain
66: Light freezing rain
67: Heavy freezing rain
71: Slight snowfall
73: Moderate snowfall
75: Heavy snowfall
77: Ice pellets
80: Light rain showers
81: Moderate rain showers
82: Violent rain showers
85: Light snow showers
86: Moderate snow showers
87: Violent snow showers
*/
