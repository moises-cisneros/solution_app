import 'package:flutter/material.dart';

class CustomImageContainer extends StatelessWidget {
  final String imageUrl;
  final String text;

  const CustomImageContainer({
    super.key,
    required this.imageUrl,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      width: 304,
      height: 144,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.grey, width: 2),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          Expanded(
            child: SizedBox(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: imageUrl.isEmpty
                    ? const Center(child: CircularProgressIndicator())
                    : Image.network(
                        imageUrl,
                        width: 300,
                        height: 300,
                      ),
              ),
            ),
          ),
          const SizedBox(width: 16.0),
          Text(text, style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
