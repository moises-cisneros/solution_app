import 'package:flutter/material.dart';
import 'package:solution/screen/dashboard/list_view_options/informative_videos/informative_2.dart';
import 'package:solution/widgets/custom_container_img.dart';

class InformativePage1 extends StatefulWidget {
  const InformativePage1({super.key});

  @override
  State<InformativePage1> createState() => _InformativePage1State();
}

class _InformativePage1State extends State<InformativePage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Informative videos"),
        backgroundColor: const Color.fromRGBO(33, 172, 131, 10),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            /*
              Widget CustomImgContainer:
              Next, the custom widget is a Container that receives 5 parameter values: 3 Strings parameters: Of which 
              one is for the address of the image, another for the text that will appear on the screen and the other 
              text is for a URL which will be integrated into IconButton (in a future implementation), as it is 
              responsive and adapts to the size of the screen, 2 values are sent as a parameter: a width and a height.
            */

            //Image 1 and Text 1
            CustomImgContainer(
              image: 'images/informative_1.png',
              text:
                  '#SEDES: Do you know how to prevent dengue? We present this information to you through Dr. Catherine A',
              heigthImg: 0.99,
              widthImg: 0.99,
              url: "1", //Entrará una url
            ),

            SizedBox(height: 20.0),

            //Image 2 and Text 2
            CustomImgContainer(
              image: 'images/informative_2.png',
              text:
                  '#SEDES: Is it okay to give my child vitamin C if they have symptoms of dengue? We present this information to you through Dr. Catherine A',
              heigthImg: 0.99,
              widthImg: 0.99,
              url: "1", //Entrará una url
            ),
            SizedBox(height: 20.0),

            //Image 3 and Text 3
            CustomImgContainer(
              image: 'images/informative_3.png',
              text:
                  '#SEDES: Do you know how the critical phase of dengue presents itself in children? We present this information to you through Dr. Catherine A',
              heigthImg: 0.99,
              widthImg: 0.99,
              url: "1", //Ingresará como parámetro una url
            ),
          ],
        ),
      ),

      //Design of the next button
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const InformativePage2()));
          },
          backgroundColor: const Color.fromRGBO(33, 172, 131, 10),
          icon: const Icon(Icons.chevron_right),
          label: const Text("Next")),
    );
  }
}
