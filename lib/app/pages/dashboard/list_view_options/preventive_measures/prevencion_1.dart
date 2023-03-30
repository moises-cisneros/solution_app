import 'package:flutter/material.dart';
import 'prevencion_2.dart';

class PrevencionPage1 extends StatefulWidget {
  const PrevencionPage1({super.key});

  @override
  State<PrevencionPage1> createState() => _PrevencionPage1State();
}

class _PrevencionPage1State extends State<PrevencionPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Preventive measures"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Texto titulo

            const Center(
              child: SizedBox(
                width: 287,
                height: 96,
                child: Text(
                  "The WHO states that the only way to control or prevent the transmission of dengue is to fight against the transmitting mosquitoes.",
                  textAlign: TextAlign.center,
                ),
              ),
            ),

            //Imagen 1 y Texto 1
            Container(
              padding: const EdgeInsets.all(10.0),
              width: 304,
              height: 144,

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

              child: Row(
                children: <Widget>[
                  Expanded(
                    //Diseño de la imagen
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.asset(
                        'images/prevencion_1.png',
                        width: 136,
                        height: 111,
                      ),
                    ),
                  ),

                  const SizedBox(width: 16.0),

                  //Diseño del texto
                  const Expanded(
                    child: Text(
                      "Clean and empty every week the containers where domestic water is stored.",
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16.0),

            //Imagen 2 y Texto 2
            Container(
              padding: const EdgeInsets.all(10.0),
              width: 304,
              height: 144,

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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  //Diseño del texto
                  const Expanded(
                    child: Center(
                      child: Text(
                        "Properly dispose of solid waste.",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),

                  const SizedBox(width: 16.0),

                  //Diseño de la imagen
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.asset(
                        'images/prevencion_2.png',
                        width: 108,
                        height: 118,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30.0),
          ],
        ),
      ),

      //Diseño del boton siguiente
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PrevencionPage2()));
          },
          icon: const Icon(Icons.chevron_right),
          label: const Text("Next")),
    );
  }
}
