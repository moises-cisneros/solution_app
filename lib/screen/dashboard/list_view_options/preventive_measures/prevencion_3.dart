import 'package:flutter/material.dart';
import 'package:solution/screen/dashboard/list_view_options/preventive_measures/prevencion_4.dart';

class PrevencionPage3 extends StatefulWidget {
  const PrevencionPage3({super.key});

  @override
  State<PrevencionPage3> createState() => _PrevencionPage3State();
}

class _PrevencionPage3State extends State<PrevencionPage3> {
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
            //Image 6 and Text 6
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
                        'images/prevencion_6.png',
                        width: 128,
                        height: 114,
                      ),
                    ),
                  ),

                  const SizedBox(width: 16.0),

                  //Design of the text
                  const Expanded(
                    child: Text(
                      'Wear clothes that cover arms and legs',
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16.0),

            //Image 7 and Text 7
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
                        'Change the water in the vases every 3 days',
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
                        'images/prevencion_7.png',
                        width: 132,
                        height: 98,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16.0),

            //Image 8 and Text 8
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
                        'images/prevencion_8.png',
                        width: 150,
                        height: 94,
                      ),
                    ),
                  ),

                  const SizedBox(width: 16.0),

                  //Design of the text
                  const Expanded(
                    child: Text(
                      "Cover containers that hold water (barrels, tanks, etc.).",
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
                    builder: (context) => const PrevencionPage4()));
          },
          icon: const Icon(Icons.chevron_right),
          label: const Text("Next")),
    );
  }
}
