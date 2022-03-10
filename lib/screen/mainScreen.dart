import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:location/location.dart';
import 'package:permission_handler/permission_handler.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> {
  final Location location = Location();

  late double w;
  late double k;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Weather"),
          actions: [
            IconButton(
                onPressed: () {
                  location.onLocationChanged
                      .listen((LocationData currentLocation) {
                    w = currentLocation.altitude!;
                    k = currentLocation.latitude!;
                  });
                },
                icon: FaIcon(
                  FontAwesomeIcons.locationArrow,
                  color: Colors.white,
                ))
          ],
        ),
        body: Container(
            child: Center(
          child: Text(""),
        )));
  }
}
