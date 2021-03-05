import 'package:geolocator/geolocator.dart';

class Location {
  double _latitude;
  double _longitude;

  Location({double latitude, double longitude}) {
    this._latitude = latitude;
    this._longitude = longitude;
  }

  void setLatitude(double latitude) => this._latitude = latitude;
  double getLatitude() => this._latitude;

  void setLongitude(double longitude) => this._longitude;
  double getLongitude() => this._longitude;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.lowest);
      _latitude = position.latitude;
      _longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
