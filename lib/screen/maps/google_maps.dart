import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:solution/screen/maps/device_information.dart';
import 'package:solution/screen/maps/maps_controller.dart';

class GoogleMapsPage extends StatefulWidget {
  const GoogleMapsPage({super.key});

  @override
  State<GoogleMapsPage> createState() => _GoogleMapsPageState();
}

class _GoogleMapsPageState extends State<GoogleMapsPage> {
  final _controller = MapsController();

  //Database of test markers
  final List<String> dataMarker = [
    '-17.788792',
    '-63.174853',
    '-17.787578',
    '-63.186425',
    '-17.780920',
    '-63.178719',
    '-17.782961',
    '-63.166674',
    '-17.792267',
    '-63.160907',
    '-17.809968',
    '-63.173014',
    '-17.811415',
    '-63.196317',
    '-17.802135',
    '-63.193700',
    '-17.793752',
    '-63.209980',
    '-17.791892',
    '-63.181857'
  ];

  @override
  //We start by showing the loaded markers
  void initState() {
    super.initState();
    loadMarker();
  }

  //Loading markers to the addMarker method
  void loadMarker() {
    for (var i = 0; i <= dataMarker.length - 2; i += 2) {
      final latPos = double.parse(dataMarker[i].trim());
      final lngPos = double.parse(dataMarker[i + 1].trim());
      _controller.addMarker(latPos, lngPos);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final mapHeight = screenHeight * 2.5 / 4;
    final infoHeigt = screenHeight;

    return Scaffold(
      appBar: AppBar(
        title: const Text('DEVICE LOCATION'), //title
        backgroundColor: const Color.fromRGBO(33, 172, 131, 10),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                height: mapHeight,
                // Google Maps API
                child: GoogleMap(
                  markers: _controller.marker,
                  initialCameraPosition: _controller.initialCameraPosition,
                  /*onTap: (LatLng latLng) {
                    print(
                        'Coordenadas tocadas: ${latLng.latitude}, ${latLng.longitude}');
                  },*/
                ),
              ),
              Expanded(
                child: Container(
                  height: infoHeigt,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: const DeviceInformation(),
                ),
              ),
            ],
          ),

          //Design of the floating text message
          AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeOut,
              // Controls the horizontal position of the floating message
              top: 16.0,
              right: 16.0,

              //Container design for the text
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: const Offset(0, 2),
                      )
                    ]),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Column(
                  children: const [
                    //Design of the text
                    Text(
                      "DISTRICT 4",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent),
                    ),
                    Text(
                      "Mosquito counter: 25426",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
