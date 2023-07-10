import 'package:flutter/material.dart';
import 'package:solution/widgets/custom_elevated_button_link.dart';

class CustomContainerLink extends StatelessWidget {
  final String imageUrl;
  final String text;
  final String url;

  const CustomContainerLink(
      {super.key,
      required this.imageUrl,
      required this.text,
      required this.url});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.only(left: 15, right: 15),
      width: screenSize.width,
      height: 200,
      decoration: BoxDecoration(
          color: const Color.fromARGB(225, 241, 232, 232).withOpacity(0.3),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey)),
      child: Row(
        children: <Widget>[
          Card(
            child: imageUrl.isEmpty
                ? const Center(child: CircularProgressIndicator())
                : Image.network(imageUrl),
          ),

          const SizedBox(width: 16.0),

          //Design of the text
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Wrap(
                  alignment: WrapAlignment.start,
                  children: [
                    Text(
                      text,
                    ),
                  ],
                ),
                CustomElevatedButtonLink(urlBook: url),
              ],
            ),
          )
        ],
      ),
    );
  }
}
