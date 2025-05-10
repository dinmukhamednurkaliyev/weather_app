import 'package:geolocator/geolocator.dart';

Future<Position> getLocation() async {
  /// bool ServiceEnabled
  LocationPermission permission;
  permission = await Geolocator.requestPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      return Future.error("Location permissions are denied");
    }
  }
  if (permission == LocationPermission.deniedForever) {
    /// Permission are denied forever, handle appropriately.
    return Future.error(
      'Location permissions are permanently denied, we cannot request permissions.',
    );
  }
  return await Geolocator.getCurrentPosition();
}
