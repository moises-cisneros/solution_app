// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:solution/controllers/storage_image_controller/preventive_measures_controllers/prevencion_1_controller.dart';
import 'package:solution/screen/dashboard/widgets/custom_image_container.dart';

import 'prevencion_2.dart';

class PruebaDartScreen extends StatefulWidget {
  const PruebaDartScreen({Key? key}) : super(key: key);

  @override
  _PruebaDartScreenState createState() => _PruebaDartScreenState();
}

class _PruebaDartScreenState extends State<PruebaDartScreen> {
  final PrevencionScreen1Controller _controller = PrevencionScreen1Controller();
  late Future<void> _initializeData;

  @override
  void initState() {
    super.initState();
    _initializeData = _controller.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Preventive measures 2"),
      ),
      body: FutureBuilder<void>(
        future: _initializeData,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return const Center(child: Text("Error occurred"));
          } else {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Title text
                  const Center(
                    child: SizedBox(
                      width: 287,
                      height: 96,
                      child: Text(
                        "The WHO states that the only way to control or prevent the transmission of dengue is to fight against the transmitting mosquitoes.",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),

                  // Image 1 and Text 1
                  CustomImageContainer(
                    imageUrl: _controller.urlImage,
                    text:
                        "Clean and empty every week the containers where domestic water is stored.",
                  ),

                  const SizedBox(height: 16.0),

                  // Image 2 and Text 2
                  CustomImageContainer(
                    imageUrl: _controller.urlImage2,
                    text: "Properly dispose of solid waste.",
                  ),

                  const SizedBox(height: 30.0),
                ],
              ),
            );
          }
        },
      ),

      // Design of the next button
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PrevencionPage2(),
            ),
          );
        },
        icon: const Icon(Icons.chevron_right),
        label: const Text("Next"),
      ),
    );
  }
}