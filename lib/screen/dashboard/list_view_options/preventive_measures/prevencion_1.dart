import 'package:flutter/material.dart';
import 'package:solution/controllers/storage_image_preventive_controllers/prevencion_1_controller.dart';
import 'package:solution/widgets/custom_image_container.dart';
import 'prevencion_2.dart';

class PrevencionPage1 extends StatefulWidget {
  const PrevencionPage1({super.key});

  @override
  State<PrevencionPage1> createState() => _PrevencionPage1State();
}

class _PrevencionPage1State extends State<PrevencionPage1> {
  // Create an instance of the controller and declare a variable of type Future.
  final PrevencionScreen1Controller _controller = PrevencionScreen1Controller();
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
      // Using FutureBuilder to manage snapshot state.
      body: FutureBuilder<void>(
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
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Title text
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Card(
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      child: Container(
                        padding: const EdgeInsets.all(16.0),
                        child: const Text(
                          'The WHO states that the only way to control or prevent the transmission of dengue is to fight against the transmitting mosquitoes.',
                          maxLines: 5,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  // Next, a custom Container is used that receives 2 parameters: the URL of an image and the text,
                  // returning in the Container with a ClipRRect of the image and the corresponding text.

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
        backgroundColor: const Color.fromRGBO(33, 172, 131, 10),
        icon: const Icon(Icons.chevron_right),
        label: const Text("Next"),
      ),
    );
  }
}
