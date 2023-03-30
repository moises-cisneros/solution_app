// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:solution/app/pages/maps/google_maps.dart';

class ButtonDevice extends StatelessWidget {
  const ButtonDevice({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        //Pide permiso par acceder a la ubicacion
        var status = await Permission.locationWhenInUse.request();
        if (status.isGranted) {
          //Agregaremos la pagina donde se encuentra el dispositivo en el mapa
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const GoogleMapsPage()));
        } else {
          // Si no se otorga el permiso de ubicación, muestra un diálogo o mensaje de error
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
      child: const Text("Ver dispositivo"),
    );
  }
}
