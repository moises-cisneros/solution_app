import 'package:flutter/material.dart';

class CustomImgContainer extends StatelessWidget {
  final String image;
  final String text;
  final double widthImg;
  final double heigthImg;
  final bool showIconButton;
  final String url;

  const CustomImgContainer(
      {Key? key,
      required this.image,
      required this.text,
      required this.widthImg,
      required this.heigthImg,
      required this.url,
      this.showIconButton = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        // Obtener el ancho disponible en la pantalla
        final double availableWidth = constraints.maxWidth;

        // Definir el ancho y alto del contenedor según el ancho disponible
        final double containerWidth = availableWidth * 0.8;
        final double containerHeight = containerWidth * 0.38;

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
              Expanded(
                //Design of the image
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.asset(
                        image,
                        width: containerHeight * widthImg,
                        height: containerHeight * heigthImg,
                      ),
                    ),

                    // Si entro alguna Url y es diferente de vacio
                    if (showIconButton && url.isNotEmpty) ...[
                      Center(
                        // The video player icon above the image
                        child: IconButton(
                          icon: const Icon(Icons.play_circle_fill),
                          iconSize: 50.0,
                          color: Colors.white,
                          onPressed: () async {
                            // Future: Here we will place the logic to play the video
                            /*final urlLaunc =
                                  Uri.parse('url');
                              if (!await canLaunchUrl(urlLaunc)) {
                                await launchUrl(urlLaunc);
                                // ignore: avoid_print
                                print('Clicked');
                              }*/
                          },
                        ),
                      ),
                    ]
                  ],
                ),
              ),

              const SizedBox(width: 16.0),

              //Design of the text
              Expanded(
                child: Text(
                  text,
                  maxLines: 3,
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
