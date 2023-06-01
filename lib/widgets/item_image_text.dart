import 'package:flutter/material.dart';

class SymptomItem extends StatelessWidget {
  final String imageUrl;
  final String text;

  const SymptomItem({
    Key? key,
    required this.imageUrl,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          imageUrl.isEmpty
              ? const Center(child: CircularProgressIndicator())
              : Image.network(imageUrl),
          const SizedBox(width: 16.0),
          Container(
            padding: const EdgeInsets.all(10.0),
            width: 241,
            height: 58,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.5),
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: Colors.grey.withOpacity(0.5),
                width: 2,
              ),
            ),
            alignment: Alignment.center,
            child: Text(
              text,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
