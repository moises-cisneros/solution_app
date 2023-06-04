import 'package:flutter/material.dart';
import 'package:solution/controllers/storage_image_preventive_controllers/prevencion_2_controller.dart';
import 'package:solution/widgets/custom_image_container.dart';

import 'prevencion_3.dart';

class PrevencionPage2 extends StatefulWidget {
  const PrevencionPage2({super.key});

  @override
  State<PrevencionPage2> createState() => _PrevencionPage2State();
}

class _PrevencionPage2State extends State<PrevencionPage2> {
  // Create an instance of the controller and declare a variable of type Future.nitializeData variable.
  final PrevencionScreen2Controller _controller = PrevencionScreen2Controller();
  late Future<void> _initializeData;

  // Initialize the data by calling the controller's initialize() method and assign the result to the _initializeData variable.
  @override
  void initState() {
    super.initState();
    _initializeData = _controller.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Preventive measures"),
        backgroundColor: const Color.fromRGBO(33, 172, 131, 10),
      ),
      body: Center(
        // Using FutureBuilder to manage snapshot state.
        child: FutureBuilder<void>(
          future: _initializeData,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                  child:
                      CircularProgressIndicator()); // Display a loading indicator while waiting to get the data.
            } else if (snapshot.hasError) {
              return const Center(
                  child: Text(
                      "Error occurred")); // Display an error message in case there was an error getting the data.
            } else {
              // Show the obtained data
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Next, a custom Container is used that receives 2 parameters: the URL of an image and the text,
                  // returning in the Container with a ClipRRect of the image and the corresponding text.

                  // Image 3 and Text 3
                  CustomImageContainer(
                    imageUrl: _controller.urlImage1,
                    text: "Use mosquito repellents.",
                  ),

                  const SizedBox(height: 16.0),

                  // Image 4 and Text 4
                  CustomImageContainer(
                    imageUrl: _controller.urlImage2,
                    text: "Remove tyres that are no longer used.",
                  ),

                  const SizedBox(height: 16.0),

                  // Image 5 and Text 5
                  CustomImageContainer(
                    imageUrl: _controller.urlImage3,
                    text: "Use of mosquito nets.",
                  ),

                  const SizedBox(height: 40.0),
                ],
              );
            }
          },
        ),
      ),

      // Design of the next button
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PrevencionPage3(),
            ),
          );
        },
        backgroundColor: const Color.fromRGBO(33, 172, 131, 10),
        icon: const Icon(Icons.chevron_right),
        label: const Text("Next"),
      ),
    );
  }
}
