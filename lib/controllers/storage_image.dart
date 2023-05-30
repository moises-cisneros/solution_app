import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class StorageImage extends StatefulWidget {
  const StorageImage({super.key});

  @override
  State<StorageImage> createState() => _StorageImageState();
}

class _StorageImageState extends State<StorageImage> {
  late String urlImage;
  final storage = FirebaseStorage.instance;

  @override
  void initState() {
    super.initState();
    //Coloca el valor initial de la cadena en vacio
    urlImage = '';

    //Recupera la imagen desde el Firebase Storage
    getImage();
  }

  Future<void> getImage() async {
    //Recupera la referencia de la imagen
    final ref = storage.ref().child('reference_1.png');
    final getUrl = await ref.getDownloadURL();

    setState(() {
      urlImage = getUrl;
    });
  }

  //Implementacion del storage V1 y mejorada: Funciona
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('data'),
        ),
        body: SizedBox(
          width: 200,
          height: 200,
          child: urlImage == ""
              ? const Center(child: CircularProgressIndicator())
              : Image.network(urlImage),
        ));
  }
}
