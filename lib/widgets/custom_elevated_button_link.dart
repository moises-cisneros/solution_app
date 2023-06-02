import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomElevatedButtonLink extends StatelessWidget {
  final String urlBook;
  //final String text;

  const CustomElevatedButtonLink(
      {super.key, required this.urlBook //, required this.text
      });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () async {
          // Here we will place the logic to play the video
          final url = Uri.parse(urlBook);

          if (!await canLaunchUrl(url)) {
            await launchUrl(url);
            // ignore: avoid_print
            print('Clicked');
          }
        },
        style: const ButtonStyle(
          backgroundColor:
              MaterialStatePropertyAll<Color>(Color.fromRGBO(33, 172, 131, 10)),
        ),
        child: const Text('Link'));
  }
}
