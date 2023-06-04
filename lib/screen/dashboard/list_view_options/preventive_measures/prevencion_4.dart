import 'package:flutter/material.dart';
import 'package:solution/controllers/storage_image_preventive_controllers/prevencion_4_controller.dart';
import 'package:solution/screen/dashboard/dashboard.dart';

class PrevencionPage4 extends StatefulWidget {
  const PrevencionPage4({super.key});

  @override
  State<PrevencionPage4> createState() => _PrevencionPage4State();
}

class _PrevencionPage4State extends State<PrevencionPage4> {
  final PrevencionScreen4Controller _controller = PrevencionScreen4Controller();
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
                    //Image 9 and Text 9
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      width: 297,
                      height: 68,

                      //Design of the container
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.grey, width: 2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),

                      //Design of the text

                      child: const Center(
                        child: SizedBox(
                          child: Text(
                            'We fight dengue together!',
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 16.0),

                    Image.network(_controller.urlImage1)
                  ],
                );
              }
            }),
      ),
    );
  }
}
