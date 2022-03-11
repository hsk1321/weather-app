import 'dart:html';

import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

Future<bool> requestLocationPermission(BuildContext context) async {
  PermissionStatus status = await Permission.location.request();

  if (!status.isGranted) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Text("access permission"),
            actions: [FlatButton(onPressed: () {}, child: Text("setting"))],
          );
        });
  }

  return true;
}
