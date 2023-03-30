import 'package:flutter/material.dart';
import 'package:solution/app/screens/dashboard.dart';

class InformativePage2 extends StatefulWidget {
  const InformativePage2({super.key});

  @override
  State<InformativePage2> createState() => _InformativePage2State();
}

class _InformativePage2State extends State<InformativePage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Informative videos"),
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
            //Imagen 4 y Texto 4
            Container(
              padding: const EdgeInsets.all(10.0),
              width: 295,
              height: 122,

              //Diseño del contenedor
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.circular(30),
                border:
                    Border.all(color: Colors.grey.withOpacity(0.5), width: 2),
              ),

              child: Row(
                children: <Widget>[
                  Expanded(
                    //Diseño de la imagen
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset(
                            'images/informative_4.png',
                            width: 127,
                            height: 94,
                          ),
                        ),
                        // El reproductor de video encima de la imagen
                        Center(
                          child: IconButton(
                            icon: const Icon(Icons.play_circle_fill),
                            iconSize: 50.0,
                            color: Colors.white,
                            onPressed: () {
                              // Aquí colocarías la lógica para reproducir el video
                            },
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(width: 16.0),

                  //Diseño del texto
                  const Expanded(
                    child: Text(
                        '#SEDES ¿Sabes cuáles son las fases del dengue? Aquí te presentamos esta información a través...'),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16.0),

            //Imagen 5 y Texto 5
            Container(
              padding: const EdgeInsets.all(10.0),
              width: 295,
              height: 122,

              //Diseño del contenedor
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.circular(30),
                border:
                    Border.all(color: Colors.grey.withOpacity(0.5), width: 2),
              ),

              child: Row(
                children: <Widget>[
                  Expanded(
                    //Diseño de la imagen
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset(
                            'images/informative_5.png',
                            width: 127,
                            height: 94,
                          ),
                        ),
                        // El reproductor de video encima de la imagen
                        Center(
                          child: IconButton(
                            icon: const Icon(Icons.play_circle_fill),
                            iconSize: 50.0,
                            color: Colors.white,
                            onPressed: () {
                              // Aquí colocarías la lógica para reproducir el video
                            },
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(width: 16.0),

                  //Diseño del texto
                  const Expanded(
                    child: Text(
                        '#SEDES ¿Dónde acudir en caso de presentar síntomas del dengue? Conoce más a cerca de esta ...'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.0),

            //Imagen 6 y Texto 6
            Container(
              padding: const EdgeInsets.all(10.0),
              width: 295,
              height: 122,

              //Diseño del contenedor
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.circular(30),
                border:
                    Border.all(color: Colors.grey.withOpacity(0.5), width: 2),
              ),

              child: Row(
                children: <Widget>[
                  Expanded(
                    //Diseño de la imagen
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset(
                            'images/informative_6.png',
                            width: 127,
                            height: 94,
                          ),
                        ),
                        // El reproductor de video encima de la imagen
                        Center(
                          child: IconButton(
                            icon: const Icon(Icons.play_circle_fill),
                            iconSize: 50.0,
                            color: Colors.white,
                            onPressed: () {
                              // Aquí colocarías la lógica para reproducir el video
                            },
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(width: 16.0),

                  //Diseño del texto
                  const Expanded(
                    child: Text(
                        '#SEDES ¡La lucha continúa! Podemos prevenir el dengue realizando acciones sencillas y permanen...'),
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
