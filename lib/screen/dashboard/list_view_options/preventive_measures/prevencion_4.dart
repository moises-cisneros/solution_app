import 'package:flutter/material.dart';
import 'package:solution/screen/dashboard/dashboard.dart';

class PrevencionPage4 extends StatefulWidget {
  const PrevencionPage4({super.key});

  @override
  State<PrevencionPage4> createState() => _PrevencionPage4State();
}

class _PrevencionPage4State extends State<PrevencionPage4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Preventive measures"),
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
                    offset: const Offset(0, 3), // changes position of shadow
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

            Image.asset(
              'images/prevencion_9.png',
              width: 286,
              height: 304,
            )
          ],
        ),
      ),
    );
  }
}
