import 'package:flutter/material.dart';
import 'package:solution/controllers/storage_image_symptoms_controller/symptoms_1_controller.dart';
import 'package:solution/screen/dashboard/list_view_options/dengue_symptoms/symptoms_2.dart';
import 'package:solution/widgets/custom_container_text.dart';

class SymptomsPage1 extends StatefulWidget {
  const SymptomsPage1({super.key});

  @override
  State<SymptomsPage1> createState() => _SymptomsPage1State();
}

class _SymptomsPage1State extends State<SymptomsPage1> {
  // Create an instance of the controller and declare a variable of type Future.
  final SymptomsScreen1Controller _controller = SymptomsScreen1Controller();
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
          title: const Text('Symptoms'),
          backgroundColor: const Color.fromRGBO(33, 172, 131, 10)),

      body: Center(
        // Using FutureBuilder to manage snapshot state.
        child: FutureBuilder<void>(
            future: _initializeData,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                // Display a loading indicator while waiting to get the data.
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                // Display an error message in case there was an error getting the data.
                return const Center(child: Text("Error occurred"));
              } else {
                // Show the obtained data
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Next, a custom Container is used that receives 2 parameters: the URL of an image and the text,
                    // returning in the Container with a ClipRRect of the image and the corresponding text.

                    //Image 1 and Text 1
                    const CustomTextContainer(
                        text:
                            "The symptoms of dengue can vary from mild to severe and usually appear between 3 and 14 days after being bitten by an infected mosquito. Symptoms include:",
                        width: 289,
                        height: 119),

                    const SizedBox(height: 16.0),

                    Image.asset(
                      'images/sintomas_esquema.png',
                      width: 287,
                      height: 320,
                    )
                  ],
                );
              }
            }),
      ),
      //Design of the next button
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SymptomsPage2()));
          },
          backgroundColor: const Color.fromRGBO(33, 172, 131, 10),
          icon: const Icon(Icons.chevron_right),
          label: const Text("Next")),
    );
  }
}
