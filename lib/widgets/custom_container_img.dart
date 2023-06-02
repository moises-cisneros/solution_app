import 'package:flutter/material.dart';

class CustomImgContainer extends StatelessWidget {
  final String image;
  final String text;

  const CustomImgContainer({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        // Obtener el ancho disponible en la pantalla
        final double availableWidth = constraints.maxWidth;

        // Definir el ancho y alto del contenedor según el ancho disponible
        final double containerWidth = availableWidth * 0.9;
        final double containerHeight = containerWidth * 0.2;

        return Container(
          padding: const EdgeInsets.all(10.0),
          width: containerWidth,
          height: containerHeight,

          // Diseño del contenedor
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.5),
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.grey.withOpacity(0.5), width: 2),
          ),

          child: Row(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(
                  image,
                  width: containerHeight * 0.8,
                  height: containerHeight * 0.8,
                ),
              ),
              const SizedBox(width: 16.0),
              Expanded(
                child: Text(
                  text,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
