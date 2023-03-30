import 'package:flutter/material.dart';
import 'package:solution/app/pages/dashboard/dashboard.dart';

class ReferencesPage extends StatefulWidget {
  const ReferencesPage({super.key});

  @override
  State<ReferencesPage> createState() => _ReferencesPageState();
}

class _ReferencesPageState extends State<ReferencesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("References"),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Imagen 1 y Texto 1
            Container(
              padding: const EdgeInsets.all(10.0),
              width: 294,
              height: 81,

              //Diseño del contenedor
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.circular(30),
                border:
                    Border.all(color: Colors.grey.withOpacity(0.5), width: 2),
              ),

              child: Row(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset(
                      'images/reference_1.png',
                      width: 52,
                      height: 65,
                    ),
                  ),

                  const SizedBox(width: 16.0),

                  //Diseño del texto
                  const Expanded(
                    child: Text(
                        'National Guide to Chikungunya Disease Management'),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16.0),

            //Imagen 2 y Texto 2
            Container(
              padding: const EdgeInsets.all(10.0),
              width: 294,
              height: 81,

              //Diseño del contenedor
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.circular(30),
                border:
                    Border.all(color: Colors.grey.withOpacity(0.5), width: 2),
              ),

              child: Row(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset(
                      'images/reference_2.png',
                      width: 46,
                      height: 95,
                    ),
                  ),

                  const SizedBox(width: 16.0),

                  //Diseño del texto
                  const Expanded(
                    child: Text(
                        'Planning of mobilization and social communication for the prevention and control of dengue'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.0),

            //Imagen 3 y Texto 3
            Container(
              padding: const EdgeInsets.all(10.0),
              width: 294,
              height: 65,

              //Diseño del contenedor
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.circular(30),
                border:
                    Border.all(color: Colors.grey.withOpacity(0.5), width: 2),
              ),

              child: Row(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset(
                      'images/reference_3.png',
                      width: 39,
                      height: 49,
                    ),
                  ),

                  const SizedBox(width: 16.0),

                  //Diseño del texto
                  const Expanded(
                    child: Text(
                        'Algorithms for the clinical management of dengue cases'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.0),

            //Imagen 4 y Texto 4
            Container(
              padding: const EdgeInsets.all(10.0),
              width: 294,
              height: 75,

              //Diseño del contenedor
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.circular(30),
                border:
                    Border.all(color: Colors.grey.withOpacity(0.5), width: 2),
              ),

              child: Row(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset(
                      'images/reference_4.png',
                      width: 46,
                      height: 60,
                    ),
                  ),

                  const SizedBox(width: 16.0),

                  //Diseño del texto
                  const Expanded(
                    child: Text(
                        'Guidelines for diagnosis, treatment, prevention and control'),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40.0),
          ],
        ),
      ),
    );
  }
}