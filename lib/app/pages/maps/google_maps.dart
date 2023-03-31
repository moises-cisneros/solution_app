import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:solution/app/pages/maps/maps_controller.dart';

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
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('DEVICE LOCATION'), //title
        ),
        body: Stack(
          children: [
            Expanded(
              // Google Maps API
              child: GoogleMap(
                markers: _controller.marker,
                initialCameraPosition: _controller.initialCameraPosition,
              ),
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
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
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

        // Boton flotante para mostar informacion sobre el dispositivo
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            //Design of the modal blade
            showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: 200,
                    color: Colors.white,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,

                        //Additional data of the device
                        children: <Widget>[
                          const Text('Information'),
                          const Text('Number of insects: 15293'),
                          const SizedBox(
                            height: 16.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('Insect: Mosquito:'),
                              const SizedBox(
                                width: 20.0,
                              ),
                              Column(
                                children: const [
                                  Text("Dengue: 6002"),
                                  Text("Coolex: 5780"),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          ElevatedButton(
                            child: const Text('CLOSE'),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ],
                      ),
                    ),
                  );
                });
          },

          //Design of the button
          label: const Text('DETAILLS'),
          icon: const Icon(Icons.info_sharp),
          backgroundColor: Colors.blue,
        ),

        //Aciones of the floating button
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      );
}
