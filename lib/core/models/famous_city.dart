List<FamousCity> famousCities = const [
  FamousCity(name: 'Tokyo', latitude: 35.6833, longitude: 139.7667),
  FamousCity(name: 'New Delhi', latitude: 28.5833, longitude: 77.2),
  FamousCity(name: 'Paris', latitude: 48.85, longitude: 2.3333),
  FamousCity(name: 'London', latitude: 51.4833, longitude: -0.0833),
  FamousCity(name: 'New York', latitude: 40.7167, longitude: -74.0167),
  FamousCity(name: 'Tehran', latitude: 35.6833, longitude: 51.4167),
];

class FamousCity {
  final String name;
  final double latitude;
  final double longitude;

  const FamousCity({
    required this.name,
    required this.latitude,
    required this.longitude,
  });
}
