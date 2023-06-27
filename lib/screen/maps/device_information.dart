import 'package:flutter/material.dart';

class DeviceInformation extends StatelessWidget {
  const DeviceInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Design of the Modal widget with data regarding the theme of the app
      padding: const EdgeInsets.all(10.0),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                children: const [
                  Icon(Icons.info, color: Colors.blue),
                  SizedBox(width: 8.0),
                  Text(
                    'Device Information #3',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Number of Insects: 15,293',
                style: TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Insect Types:',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              Row(
                children: const [
                  Text(
                    'Mosquito: ',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Text(
                    'Dengue: 6,002',
                    style: TextStyle(fontSize: 14.0),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
            ],
          ),
          Flexible(
            child: Image.asset(
              'images/mosquito.jpg',
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
