import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomContainerVideo extends StatelessWidget {
  final String image;
  final String text;
  final String url;

  const CustomContainerVideo(
      {super.key, required this.image, required this.text, required this.url});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
      margin: const EdgeInsets.only(left: 15, right: 15),
      width: screenSize.width,
      height: 130,
      decoration: BoxDecoration(
          color: const Color.fromARGB(225, 241, 232, 232).withOpacity(0.3),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey)),
      child: Row(
        children: <Widget>[
          Expanded(
            //Design of the image
            child: Stack(
              children: [
                Center(
                  child: Card(
                    child: Image.asset(
                      image,
                    ),
                  ),
                ),
                Center(
                  child: IconButton(
                    icon: const Icon(Icons.play_circle_fill),
                    iconSize: 50.0,
                    color: Colors.white,
                    onPressed: () async {
                      // Using url_launcher to open videos via url
                      final urlLaunc = Uri.parse(url);
                      if (await canLaunchUrl(urlLaunc)) {
                        await launchUrl(urlLaunc,
                            mode: LaunchMode.externalNonBrowserApplication);
                      }
                    },
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(width: 10.0),

          //Design of the text
          Expanded(
            flex: 1,
            child: Wrap(
              alignment: WrapAlignment.start,
              children: [
                Text(
                  text,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
