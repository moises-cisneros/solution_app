import 'package:flutter/material.dart';
import 'package:solution/screen/login/login.dart';
import 'package:solution/widgets/custom_card.dart';

class ScreenLanguaje extends StatefulWidget {
  const ScreenLanguaje({super.key});

  @override
  State<ScreenLanguaje> createState() => _ScreenLanguajeState();
}

class _ScreenLanguajeState extends State<ScreenLanguaje> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(217, 217, 217, 217)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.language,
                        size: 40,
                      ),
                      Text(
                        "Seleccionar Idioma",
                        style: TextStyle(fontSize: 25),
                      ),
                    ],
                  ),
                  const Divider(
                    color: Colors.black,
                  ),
                  const CustomCard(text: "Inglés"),
                  const CustomCard(text: "Español"),
                  const CustomCard(text: "Guaraní"),
                  const CustomCard(text: "Aymara"),
                  const CustomCard(text: "Quechua"),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            FloatingActionButton.extended(
              backgroundColor: const Color.fromARGB(217, 217, 217, 217),
              onPressed: () {
                //Navigation to the screen panel
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LoginPage()));
              },
              label: const Text(
                "Aceptar",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
    );
  }
}
