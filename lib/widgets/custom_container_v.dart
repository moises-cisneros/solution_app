import 'package:flutter/material.dart';

class CustomContainerV extends StatelessWidget {
  final String imageUrl;
  final String text;

  const CustomContainerV({
    super.key,
    required this.imageUrl,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.only(left: 15, right: 15),
      width: screenSize.width,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey)),
      child: Row(
        children: [
          Container(
            width: 80,
            height: double.infinity,
            decoration: const BoxDecoration(
                color: Color(0xFFECECEC),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: imageUrl.isEmpty
                ? const Center(child: CircularProgressIndicator())
                : Image.network(imageUrl),
          ),
          const SizedBox(width: 16.0),
          Expanded(
            flex: 1,
            child: Wrap(alignment: WrapAlignment.start, children: [
              Text(
                text,
                textAlign: TextAlign.center,
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
