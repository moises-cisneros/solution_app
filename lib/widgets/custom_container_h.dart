import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  // Atributos
  final String imageUrl;
  final String title;
  final String text;

  const CustomContainer(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.text});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
      margin: const EdgeInsets.all(15.0),
      width: screenSize.width,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 200,
            decoration: const BoxDecoration(
                color: Color(0xFFECECEC),
                borderRadius:
                    BorderRadius.vertical(top: Radius.circular(10.0))),
            child: imageUrl.isEmpty
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : Image.network(
                    width: screenSize.width,
                    height: screenSize.height * 9 / 16,
                    imageUrl,
                  ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0, right: 5.0, top: 10.0),
            child: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
          const Divider(
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 5.0, right: 5.0, top: 5.0, bottom: 15.0),
            child: Text(
              text,
              style: const TextStyle(fontWeight: FontWeight.w300),
            ),
          ),
        ],
      ),
    );
  }
}
