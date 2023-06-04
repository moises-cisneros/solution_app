import 'package:flutter/material.dart';
import 'package:solution/controllers/storage_image_symptoms_controller/symptoms_2_controller.dart';
import 'package:solution/screen/dashboard/dashboard.dart';
import 'package:solution/widgets/item_image_text.dart';

class SymptomsPage2 extends StatefulWidget {
  const SymptomsPage2({Key? key}) : super(key: key);

  @override
  State<SymptomsPage2> createState() => _SymptomsPage2State();
}

class _SymptomsPage2State extends State<SymptomsPage2> {
  // Create an instance of the controller and declare a variable of type Future.
  final SymptomsScreen2Controller _controller = SymptomsScreen2Controller();
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
        title: const Text('Dengue symptoms'),
        backgroundColor: const Color.fromRGBO(33, 172, 131, 10),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DashboardPage(),
                ),
              );
            },
            icon: const Icon(Icons.exit_to_app),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Next, a custom Widget is used that receives 2 parameters:
                      // the URL of an image and the text, returning an image and a text.

                      ItemImageText(
                        imageUrl: _controller.urlImage1,
                        text: 'Intense headache, especially behind the eyes.',
                      ),
                      const SizedBox(height: 10.0),
                      ItemImageText(
                        imageUrl: _controller.urlImage2,
                        text:
                            'High fever (39°C/102°F) that lasts for 2 to 7 days.',
                      ),
                      const SizedBox(height: 10.0),
                      ItemImageText(
                        imageUrl: _controller.urlImage3,
                        text: 'Pain in the muscles and joints.',
                      ),
                      const SizedBox(height: 10.0),
                      ItemImageText(
                        imageUrl: _controller.urlImage4,
                        text:
                            'Skin rash that appears after 2 to 5 days of fever.',
                      ),
                      const SizedBox(height: 10.0),
                      ItemImageText(
                        imageUrl: _controller.urlImage5,
                        text: 'Nausea and vomiting.',
                      ),
                      const SizedBox(height: 10.0),
                      ItemImageText(
                        imageUrl: _controller.urlImage6,
                        text: 'Loss of appetite.',
                      ),
                      const SizedBox(height: 10.0),
                      ItemImageText(
                        imageUrl: _controller.urlImage7,
                        text: 'Fatigue and weakness.',
                      ),
                      const SizedBox(height: 10.0),
                      ItemImageText(
                        imageUrl: _controller.urlImage8,
                        text: 'Mild bleeding in the gums or nose.',
                      ),
                    ],
                  );
                }
              }),
        ),
      ),
    );
  }
}
