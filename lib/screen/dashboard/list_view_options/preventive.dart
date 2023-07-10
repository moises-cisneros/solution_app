import 'package:flutter/material.dart';
import 'package:solution/controllers/firebase_storage_controllers/preventive_controller.dart';
import 'package:solution/screen/dashboard/dashboard.dart';
import 'package:solution/widgets/custom_container_h.dart';

class PreventiveScreen extends StatefulWidget {
  const PreventiveScreen({super.key});

  @override
  State<PreventiveScreen> createState() => _PreventiveScreenState();
}

class _PreventiveScreenState extends State<PreventiveScreen> {
  // Create an instance of the controller and declare a variable of type Future.
  final PrevencionController _controller = PrevencionController();
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
      // Using FutureBuilder to manage snapshot state.
      body: SingleChildScrollView(
        child: FutureBuilder<void>(
          future: _initializeData,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                  child:
                      // TODO: Arreglar el CircularProgressIndicator para que aparezca al medio
                      CircularProgressIndicator()); // Display a loading indicator while waiting to get the data.
            } else if (snapshot.hasError) {
              return const Center(
                  child: Text(
                      "Error occurred")); // Display an error message in case there was an error getting the data.
            } else {
              // Show the obtained data
              return Column(
                children: [
                  // Title text
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: const Text(
                      'The WHO states that the only way to control or prevent the transmission of dengue is to fight against the transmitting mosquitoes.',
                      maxLines: 5,
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  // TODO: Buscar las imágenes para colocar en la pantalla PreventiveScreen
                  // Image 1 and Text 1
                  CustomContainer(
                    imageUrl: _controller.urlImage1,
                    title: "Weekly Cleaning",
                    text:
                        "Clean and empty the containers in which water for domestic use is stored weekly.",
                  ),

                  // Image 2 and Text 2
                  CustomContainer(
                    imageUrl: _controller.urlImage2,
                    title: "Efficient solid waste management+",
                    text: "Eliminate or properly dispose of solid waste.",
                  ),

                  // Image 3 and Text 3
                  CustomContainer(
                    imageUrl: _controller.urlImage3,
                    title: "Sting-free protection",
                    text: "Using mosquito repellents effectively.",
                  ),

                  // Image 4 and Text 4
                  CustomContainer(
                    imageUrl: _controller.urlImage4,
                    title: "Responsible recycling",
                    text: "Dispose of tires that are no longer used",
                  ),

                  // Image 5 and Text 5
                  CustomContainer(
                    imageUrl: _controller.urlImage5,
                    title: "Peaceful sleep",
                    text:
                        "Protect yourself from mosquitoes by using mosquito nets.",
                  ),

                  //Image 6 and Text 6
                  CustomContainer(
                      imageUrl: _controller.urlImage6,
                      title: "Functional fashion",
                      text:
                          'Use of long-sleeved clothing and pants to protect yourself from insects.'),

                  //Image 7 and Text 7
                  CustomContainer(
                      imageUrl: _controller.urlImage7,
                      title: "Flower care",
                      text:
                          'Change the water in vases every 3 days to maintain freshness and prevent insects.'),

                  //Image 8 and Text 8
                  CustomContainer(
                      imageUrl: _controller.urlImage8,
                      title: "Protect your home from insects",
                      text:
                          "Cover the water containers to prevent their proliferation."),

                  //Image 9 and Text 9
                  CustomContainer(
                      imageUrl: _controller.urlImage9,
                      title: "United against dengue!",
                      text: "Let's work together to fight this disease."),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
