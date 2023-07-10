import 'package:flutter/material.dart';
import 'package:solution/screen/dashboard/dashboard.dart';
import 'package:solution/widgets/custom_container_video.dart';

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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              /*
                Widget CustomContainerVideo:
                Next, the custom widget is a Container that receives 5 parameter values: 3 Strings parameters: Of which 
                one is for the address of the image, another for the text that will appear on the screen and the other 
                text is for a URL which will be integrated into IconButton (in a future implementation), as it is 
                responsive and adapts to the size of the screen, 2 values are sent as a parameter: a width and a height.
              */

              SizedBox(height: 16.0),

              //Image 1 and Text 1
              CustomContainerVideo(
                image: 'images/informative_1.png',
                text:
                    '#SEDES Do you know how to prevent dengue? We show you this information through Dr. Catherine Arispe Guerra, a pediatrician specializing in dengue fever and a member of the Santa Cruz Scientific Committee.',
                url:
                    "https://www.facebook.com/watch/?v=156647400540587", //Entrará una url
              ),

              SizedBox(height: 20.0),

              //Image 2 and Text 2
              CustomContainerVideo(
                image: 'images/informative_2.png',
                text:
                    '#SEDES Is it okay to give vitamin C to my child with dengue symptoms? We show you this information through Dr. Catherine Arispe Guerra, a pediatrician specializing in dengue fever and a member of the Santa Cruz Scientific Committee.',
                url:
                    "https://www.facebook.com/watch/?v=1192311228154693", //Entrará una url
              ),
              SizedBox(height: 20.0),

              //Image 3 and Text 3
              CustomContainerVideo(
                image: 'images/informative_3.png',
                text:
                    '#SEDES Do you know how the critical phase of dengue occurs in children? We show you this information through Dr. Catherine Arispe Guerra, a pediatrician specializing in dengue fever and a member of the Santa Cruz Scientific Committee.',
                url:
                    "https://www.facebook.com/watch/?v=1096213391772010", //Ingresará como parámetro una url
              ),

              SizedBox(height: 16.0),

              //Image 4 and Text 4
              CustomContainerVideo(
                image: 'images/informative_4.png',
                text:
                    '#SEDES Do you know how the critical phase of dengue occurs in children? We show you this information through Dr. Catherine Arispe Guerra, a pediatrician specializing in dengue fever and a member of the Santa Cruz Scientific Committee.',
                url:
                    "https://www.facebook.com/watch/?v=1903847389967629", //Entrará una url
              ),
              SizedBox(height: 16.0),

              //Image 5 and Text 5
              CustomContainerVideo(
                image: 'images/informative_5.png',
                text:
                    '#SEDES Do you know where to go if you have dengue symptoms? Learn more about this disease through Ana Maria Sapag, member of the Scientific Committee.',
                url:
                    "https://www.facebook.com/watch/?v=721184862812084", //Entrará una url
              ),
              SizedBox(height: 16.0),

              //Image 6 and Text 6
              CustomContainerVideo(
                image: 'images/informative_6.png',
                text:
                    '#SEDES The fight continues!. We can prevent dengue by carrying out simple and permanent actions inside our houses and patios.',
                url:
                    "https://www.facebook.com/watch/?v=717928659942813", //Entrará una url
              ),

              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }
}
