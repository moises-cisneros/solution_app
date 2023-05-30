import 'package:flutter/material.dart';
import 'package:solution/controllers/storage_image_controller/preventive_measures_controllers/prevencion_3_controller.dart';
import 'package:solution/screen/dashboard/list_view_options/preventive_measures/prevencion_4.dart';
import 'package:solution/screen/dashboard/widgets/custom_image_container.dart';

class PrevencionPage3 extends StatefulWidget {
  const PrevencionPage3({super.key});

  @override
  State<PrevencionPage3> createState() => _PrevencionPage3State();
}

class _PrevencionPage3State extends State<PrevencionPage3> {
  final PrevencionScreen3Controller _controller = PrevencionScreen3Controller();
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
        title: const Text("Preventive measures"),
      ),
      body: Center(
        child: FutureBuilder<void>(
            future: _initializeData,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return const Center(child: Text("Error occurred"));
              } else {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //Image 6 and Text 6
                    CustomImageContainer(
                        imageUrl: _controller.urlImage1,
                        text: 'Wear clothes that cover arms and legs'),

                    const SizedBox(height: 16.0),

                    //Image 7 and Text 7
                    CustomImageContainer(
                        imageUrl: _controller.urlImage2,
                        text: 'Change the water in the vases every 3 days'),

                    const SizedBox(height: 16.0),

                    //Image 8 and Text 8
                    CustomImageContainer(
                        imageUrl: _controller.urlImage3,
                        text:
                            "Cover containers that hold water (barrels, tanks, etc.)."),

                    const SizedBox(height: 40.0),
                  ],
                );
              }
            }),
      ),

      //Design of the next button
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PrevencionPage4()));
          },
          icon: const Icon(Icons.chevron_right),
          label: const Text("Next")),
    );
  }
}
