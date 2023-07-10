import 'package:flutter/material.dart';

class CustomTextContainer extends StatelessWidget {
  final String text;

  const CustomTextContainer({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.only(left: 15.0, right: 15.0),
      width: screenSize.width,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.9),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.withOpacity(0.9))),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Wrap(
              children: [
                Text(
                  text,
                  style: const TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
