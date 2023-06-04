import 'package:flutter/material.dart';
import 'package:solution/screen/dashboard/dashboard.dart';
import 'package:solution/widgets/custom_container_img.dart';
import 'package:solution/widgets/custom_elevated_button_link.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                // In this case, the CustomImgContainer widget is being used, only below it there is another custom
                // ElevatedButton widget that receives a url string parameter so that clicking on it shows a page with
                // information related to the app.

                //Image 1 and Text 1
                CustomImgContainer(
                    image: 'images/reference_1.png',
                    text: 'National Guide to Chikungunya Disease Management',
                    heigthImg: 0.8,
                    widthImg: 0.8,
                    url: ''),
                CustomElevatedButtonLink(
                    urlBook:
                        'https://www.minsalud.gob.bo/38-libros-y-normas/fichas-bibliograficas/1574-area-dengue'),

                SizedBox(height: 16.0),

                //Image 2 and Text 2
                CustomImgContainer(
                    image: 'images/reference_2.png',
                    text:
                        'Planning of mobilization and social communication for the prevention and control of dengue',
                    heigthImg: 0.8,
                    widthImg: 0.8,
                    url: ''),

                CustomElevatedButtonLink(
                    urlBook:
                        'https://www.paho.org/es/documentos/planificacion-movilizacion-comunicacion-social-para-prevencion-control-dengue-2004'),

                SizedBox(height: 16.0),

                //Image 3 and Text 3
                CustomImgContainer(
                    image: 'images/reference_3.png',
                    text:
                        'Algorithms for the clinical management of dengue cases',
                    heigthImg: 0.8,
                    widthImg: 0.8,
                    url: ''),

                CustomElevatedButtonLink(
                    urlBook:
                        'https://www.paho.org/es/documentos/algoritmos-para-manejo-clinico-casos-dengue'),

                SizedBox(height: 16.0),

                //Image 4 and Text 4
                CustomImgContainer(
                  image: 'images/reference_4.png',
                  text:
                      'Guidelines for diagnosis, treatment, prevention and control',
                  heigthImg: 0.8,
                  widthImg: 0.8,
                  url: '',
                ),
                CustomElevatedButtonLink(
                    urlBook: 'https://iris.paho.org/handle/10665.2/31071'),

                SizedBox(height: 40.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
