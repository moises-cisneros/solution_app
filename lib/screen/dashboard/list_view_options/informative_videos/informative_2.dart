import 'package:flutter/material.dart';
import 'package:solution/screen/dashboard/dashboard.dart';
import 'package:solution/widgets/custom_container_img.dart';

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            //Image 4 and Text 4
            CustomImgContainer(
              image: 'images/informative_4.png',
              text:
                  '#SEDES: Do you know what the phases of dengue are? Here we present this information to you.',
              heigthImg: 0.99,
              widthImg: 0.99,
              url: "1", //Entrará una url
            ),
            SizedBox(height: 16.0),

            //Image 5 and Text 5
            CustomImgContainer(
              image: 'images/informative_5.png',
              text:
                  '#SEDES: Where to go if you have dengue symptoms? Learn more about this.',
              heigthImg: 0.99,
              widthImg: 0.99,
              url: "1", //Entrará una url
            ),
            SizedBox(height: 16.0),

            //Image 6 and Text 6
            CustomImgContainer(
              image: 'images/informative_6.png',
              text:
                  '#SEDES: The fight continues! We can prevent dengue by taking simple and permanent actions. Learn more about this.',
              heigthImg: 0.99,
              widthImg: 0.99,
              url: "1", //Entrará una url
            ),
            SizedBox(height: 40.0),
          ],
        ),
      ),
    );
  }
}
