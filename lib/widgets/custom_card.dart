import 'package:flutter/material.dart';
import 'package:solution/widgets/custom_icon.dart';

class CustomCard extends StatelessWidget {
  final CustomIcon icon;
  final String text;
  final Function() onTap;

  const CustomCard({
    super.key,
    required this.icon,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10.0),
      elevation: 4.0,
      shadowColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      color: Colors.white,
      child: ListTile(
        leading: icon,
        title: Text(text),
        onTap: onTap,
      ),
    );
  }
}
