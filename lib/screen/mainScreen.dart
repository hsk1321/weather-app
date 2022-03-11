import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather_app/util/permission.dart';
import 'package:location/location.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Weather"),
          actions: [
            IconButton(
                onPressed: () {
                  Location location = new Location();

                  LocationData l;
                  LocationData a;

                  location.onLocationChanged
                      .listen((LocationData currentLocation) {
                    l = currentLocation.latitude as LocationData;
                    a = currentLocation.altitude as LocationData;
                  });
                },
                icon: FaIcon(
                  FontAwesomeIcons.locationArrow,
                  color: Colors.white,
                ))
          ],
        ),
        body: Container(child: Center(
          child: FloatingActionButton(onPressed: () {
            requestLocationPermission(context);
          }),
        )));
  }
}
