import 'package:flutter/material.dart';
import 'package:solution/controllers/firebase_storage_controllers/reference_controller.dart';
import 'package:solution/screen/dashboard/dashboard.dart';
import 'package:solution/widgets/custom_container_link.dart';

class ReferencesScreen extends StatefulWidget {
  const ReferencesScreen({super.key});

  @override
  State<ReferencesScreen> createState() => _ReferencesScreenState();
}

class _ReferencesScreenState extends State<ReferencesScreen> {
  // Create an instance of the controller and declare a variable of type Future.
  final ReferenceController _controller = ReferenceController();
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
        title: const Text("References"),
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
                    children: [
                      // In this case, the CustomContainerLink widget is being used, only below it there is another custom
                      // ElevatedButton widget that receives a url string parameter so that clicking on it shows a page with
                      // information related to the app.

                      //Image 1 and Text 1
                      CustomContainerLink(
                          imageUrl: _controller.urlImage1,
                          text:
                              'National Guide to Chikungunya Disease Management',
                          url:
                              'https://www.minsalud.gob.bo/38-libros-y-normas/fichas-bibliograficas/1574-area-dengue'),

                      const SizedBox(height: 16.0),

                      //Image 2 and Text 2
                      CustomContainerLink(
                          imageUrl: _controller.urlImage2,
                          text:
                              'Planning of mobilization and social communication for the prevention and control of dengue',
                          url:
                              'https://www.paho.org/es/documentos/planificacion-movilizacion-comunicacion-social-para-prevencion-control-dengue-2004'),

                      const SizedBox(height: 16.0),

                      //Image 3 and Text 3
                      CustomContainerLink(
                          imageUrl: _controller.urlImage3,
                          text:
                              'Algorithms for the clinical management of dengue cases',
                          url:
                              'https://www.paho.org/es/documentos/algoritmos-para-manejo-clinico-casos-dengue'),

                      const SizedBox(height: 16.0),

                      //Image 4 and Text 4
                      CustomContainerLink(
                        imageUrl: _controller.urlImage4,
                        text:
                            'Guidelines for diagnosis, treatment, prevention and control',
                        url: 'https://iris.paho.org/handle/10665.2/31071',
                      ),

                      const SizedBox(height: 40.0),
                    ],
                  );
                }
              }),
        ),
      ),
    );
  }
}
