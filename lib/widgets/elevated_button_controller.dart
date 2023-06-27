// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:solution/screen/maps/google_maps.dart';

class ButtonDevice extends StatelessWidget {
  const ButtonDevice({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: const ButtonStyle(
        backgroundColor:
            MaterialStatePropertyAll<Color>(Color.fromRGBO(33, 172, 131, 10)),
      ),
      onPressed: () async {
        //Request permission to access the location
        var status = await Permission.locationWhenInUse.request();
        if (status.isGranted) {
          //We will add the page where the device is located on the map
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const GoogleMapsPage()));
        } else {
          // If location permission is not granted, displays a dialog or error message
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Permiso denegado'),
                  content: const Text(
                      'Debe otorgar permiso de ubicación para ver el dispositivo.'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text('OK'),
                    ),
                  ],
                );
              });
        }
      },
      child: const Text("Start"),
    );
  }
}
