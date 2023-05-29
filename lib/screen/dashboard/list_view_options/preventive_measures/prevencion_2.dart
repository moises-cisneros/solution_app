import 'package:flutter/material.dart';

import 'prevencion_3.dart';

class PrevencionPage2 extends StatefulWidget {
  const PrevencionPage2({super.key});

  @override
  State<PrevencionPage2> createState() => _PrevencionPage2State();
}

class _PrevencionPage2State extends State<PrevencionPage2> {
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
            //Image 3 and Text 3
            Container(
              padding: const EdgeInsets.all(10.0),
              width: 304,
              height: 128,

              //Design of the container
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
                    //Design of the image
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.asset(
                        'images/prevencion_3.png',
                        width: 128,
                        height: 114,
                      ),
                    ),
                  ),

                  const SizedBox(width: 16.0),

                  //Design of the text
                  const Expanded(
                    child: Text(
                      "Use mosquito repellents.",
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16.0),

            //Image 4 and Text 4
            Container(
              padding: const EdgeInsets.all(10.0),
              width: 304,
              height: 128,

              //Design of the container
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
                  //Design of the text
                  const Expanded(
                    child: Center(
                      child: Text(
                        'Remove tyres that are no longer used',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),

                  const SizedBox(width: 16.0),

                  //Design of the image
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.asset(
                        'images/prevencion_4.png',
                        width: 132,
                        height: 98,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16.0),

            //Imagen 5 y Texto 5
            Container(
              padding: const EdgeInsets.all(10.0),
              width: 304,
              height: 128,

              //Design of the container
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
                    //Design of the image
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.asset(
                        'images/prevencion_5.png',
                        width: 150,
                        height: 94,
                      ),
                    ),
                  ),

                  const SizedBox(width: 16.0),

                  //Design of the text
                  const Expanded(
                    child: Text(
                      'Use of mosquito nets',
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40.0),
          ],
        ),
      ),

      //Design of the next button
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PrevencionPage3()));
          },
          icon: const Icon(Icons.chevron_right),
          label: const Text("Next")),
    );
  }
}
