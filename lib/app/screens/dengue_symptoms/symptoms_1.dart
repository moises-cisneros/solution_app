import 'package:flutter/material.dart';
import 'package:solution/app/screens/dengue_symptoms/symptoms_2.dart';

class SymptomsPage1 extends StatefulWidget {
  const SymptomsPage1({super.key});

  @override
  State<SymptomsPage1> createState() => _SymptomsPage1State();
}

class _SymptomsPage1State extends State<SymptomsPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Symptoms')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Imagen 1 y Texto 1
            Container(
              padding: const EdgeInsets.all(10.0),
              width: 289,
              height: 112,

              //Diseño del contenedor
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.grey, width: 2),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),

              //Diseño del texto

              child: const Center(
                child: SizedBox(
                  child: Text(
                    'Los síntomas del dengue pueden variar desde leves a graves y suelen aparecer entre 3 y 14 días después de la picadura del mosquito infectado. Los síntomas incluyen:',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 16.0),

            Image.asset(
              'images/sintomas_esquema.png',
              width: 287,
              height: 320,
            )
          ],
        ),
      ),
      //Diseño del boton siguiente
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SymptomsPage2()));
          },
          icon: const Icon(Icons.chevron_right),
          label: const Text("Next")),
    );
  }
}
