import 'dart:io';

import 'package:location/location.dart';
import 'package:url_launcher/url_launcher.dart';

class LocationService {
  sendLocation() async {
    Location location = Location();
    bool serviceEnabled;
    PermissionStatus permissionGranted;

    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return;
      }
    }
    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return;
      }
    }
  }

  getLocation() async {
    LocationData locationData;
    Location location = Location();
      locationData = await location.getLocation();
      // location.onLocationChanged.listen((LocationData currentLocation) {
      //   locationData = currentLocation;
      // });
      return locationData;
    
  }

  Future<void> goToMap(double lat, double lng) async {
    String url = '';
    if (Platform.isAndroid) {
      url = 'https://www.google.com/maps/search/?api=1&query=$lat,$lng';
      if (await canLaunchUrl(Uri.parse(url))) {
        await launchUrl(Uri.parse(url));
      } else {
        throw 'Could not launch $url';
      }
    }
  }
}
