import 'package:flutter/material.dart';
import 'package:solution/controllers/firebase_storage_controllers/symptoms_controller.dart';
import 'package:solution/screen/dashboard/dashboard.dart';
import 'package:solution/widgets/custom_container_text.dart';
import 'package:solution/widgets/custom_container_v.dart';

class SymptomsScreen extends StatefulWidget {
  const SymptomsScreen({super.key});

  @override
  State<SymptomsScreen> createState() => _SymptomsScreenState();
}

class _SymptomsScreenState extends State<SymptomsScreen> {
  // Create an instance of the controller and declare a variable of type Future.
  final SymptomsController _controller = SymptomsController();
  late Future<void> _initializeData;

  // Initialize the data by calling the controller's initialize() method and assign the result to the _initializeData variable.
  @override
  void initState() {
    super.initState();
    _initializeData = _controller.initialize();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dengue Symptoms'),
        backgroundColor: const Color.fromRGBO(33, 172, 131, 10),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DashboardPage()));
              },
              icon: const Icon(Icons.exit_to_app)),
        ],
      ),
      body: Center(
        // Using FutureBuilder to manage snapshot state.
        child: SingleChildScrollView(
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
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Next, a custom Container is used that receives 2 parameters: the URL of an image and the text,
                      // returning in the Container with a ClipRRect of the image and the corresponding text.

                      const SizedBox(height: 30),

                      //Image 1 and Text 1
                      const CustomTextContainer(
                        text:
                            "The symptoms of dengue can vary from mild to severe and usually appear between 3 and 14 days after being bitten by an infected mosquito. Symptoms include:",
                      ),

                      const SizedBox(height: 16.0),

                      Container(
                        padding: const EdgeInsets.all(15),
                        margin: const EdgeInsets.only(left: 30, right: 30),
                        //width: screenSize.width,
                        height: screenSize.height * 7 / 16,
                        decoration: const BoxDecoration(
                            //color: Color(0xFFECECEC),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: _controller.urlImage1.isEmpty
                            ? const Center(child: CircularProgressIndicator())
                            : Image.network(
                                _controller.urlImage1,
                                height: screenSize.height * 9 / 16,
                              ),
                      ),

                      const SizedBox(height: 15.0),

                      CustomContainerV(
                        imageUrl: _controller.urlImage2,
                        text: 'Intense headache, especially behind the eyes.',
                      ),

                      const SizedBox(height: 15.0),

                      CustomContainerV(
                        imageUrl: _controller.urlImage3,
                        text:
                            'High fever (39°C/102°F) that lasts for 2 to 7 days.',
                      ),

                      const SizedBox(height: 15.0),

                      CustomContainerV(
                        imageUrl: _controller.urlImage4,
                        text: 'Pain in the muscles and joints.',
                      ),

                      const SizedBox(height: 15.0),

                      CustomContainerV(
                        imageUrl: _controller.urlImage5,
                        text:
                            'Skin rash that appears after 2 to 5 days of fever.',
                      ),

                      const SizedBox(height: 15.0),

                      CustomContainerV(
                        imageUrl: _controller.urlImage6,
                        text: 'Nausea and vomiting.',
                      ),

                      const SizedBox(height: 15.0),

                      CustomContainerV(
                        imageUrl: _controller.urlImage7,
                        text: 'Loss of appetite.',
                      ),

                      const SizedBox(height: 15.0),

                      CustomContainerV(
                        imageUrl: _controller.urlImage8,
                        text: 'Fatigue and weakness.',
                      ),

                      const SizedBox(height: 15.0),

                      CustomContainerV(
                        imageUrl: _controller.urlImage9,
                        text: 'Mild bleeding in the gums or nose.',
                      ),

                      const SizedBox(height: 15)
                    ],
                  );
                }
              }),
        ),
      ),
    );
  }
}
