import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String text;

  const CustomCard({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.all(10.0),
        elevation: 4.0,
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        color: const Color.fromARGB(133, 128, 127, 128),
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ));
  }
}
