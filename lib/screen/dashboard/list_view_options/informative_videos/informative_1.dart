import 'package:flutter/material.dart';
import 'package:solution/screen/dashboard/list_view_options/informative_videos/informative_2.dart';
import 'package:url_launcher/url_launcher.dart';

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
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Image 1 and Text 1
            Container(
              padding: const EdgeInsets.all(10.0),
              width: 295,
              height: 122,

              //Design of the container
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.circular(30),
                border:
                    Border.all(color: Colors.grey.withOpacity(0.5), width: 2),
              ),

              child: Row(
                children: <Widget>[
                  Expanded(
                    //Design of the image
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset(
                            'images/informative_1.png',
                            width: 127,
                            height: 94,
                          ),
                        ),
                        // The video player icon above the image
                        Center(
                          child: IconButton(
                            icon: const Icon(Icons.play_circle_fill),
                            iconSize: 50.0,
                            color: Colors.white,
                            onPressed: () {
                              // Here we will place the logic to play the video
                            },
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(width: 16.0),

                  //Design of the text
                  const Expanded(
                    child: Text(
                        "#SEDES: Do you know how to prevent dengue? We present this information to you through Dr. Catherine A..."),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16.0),

            //Image 2 and Text 2
            Container(
              padding: const EdgeInsets.all(10.0),
              width: 295,
              height: 122,

              //Design of the container
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.circular(30),
                border:
                    Border.all(color: Colors.grey.withOpacity(0.5), width: 2),
              ),

              child: Row(
                children: <Widget>[
                  Expanded(
                    //Design of the image
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset(
                            'images/informative_2.png',
                            width: 127,
                            height: 94,
                          ),
                        ),
                        // The video player icon above the image
                        Center(
                          child: IconButton(
                            icon: const Icon(Icons.play_circle_fill),
                            iconSize: 50.0,
                            color: Colors.white,
                            onPressed: () async {
                              // Here we will place the logic to play the video
                              final url =
                                  Uri.parse('https://youtu.be/EghJFnFiR4o');
                              if (!await canLaunchUrl(url)) {
                                await launchUrl(url);
                                // ignore: avoid_print
                                print('Clicked');
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(width: 16.0),

                  //Design of the text
                  const Expanded(
                    child: Text(
                        "#SEDES: Is it okay to give my child vitamin C if they have symptoms of dengue? We present this information to you through Dr. Catherine A..."),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.0),

            //Image 3 and Text 3
            Container(
              padding: const EdgeInsets.all(10.0),
              width: 295,
              height: 122,

              //Design of the container
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.circular(30),
                border:
                    Border.all(color: Colors.grey.withOpacity(0.5), width: 2),
              ),

              child: Row(
                children: <Widget>[
                  Expanded(
                    //Design of the image
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset(
                            'images/informative_3.png',
                            width: 127,
                            height: 94,
                          ),
                        ),
                        // The video player icon above the image
                        Center(
                          child: IconButton(
                            icon: const Icon(Icons.play_circle_fill),
                            iconSize: 50.0,
                            color: Colors.white,
                            onPressed: () async {
                              // Here we will place the logic to play the video
                              final url = Uri.parse(
                                  'https://www.facebook.com/watch/?v=1192311228154693');

                              if (!await canLaunchUrl(url)) {
                                await launchUrl(url);
                                // ignore: avoid_print
                                print('Clicked');
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(width: 16.0),

                  //Design of the text
                  const Expanded(
                    child: Text(
                        "#SEDES: Do you know how the critical phase of dengue presents itself in children? We present this information to you through Dr. Catherine A..."),
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
                    builder: (context) => const InformativePage2()));
          },
          icon: const Icon(Icons.chevron_right),
          label: const Text("Next")),
    );
  }
}
