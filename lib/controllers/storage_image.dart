import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class StorageImage extends StatefulWidget {
  const StorageImage({super.key});

  @override
  State<StorageImage> createState() => _StorageImageState();
}

class _StorageImageState extends State<StorageImage> {
  late String url;
  final storage = FirebaseStorage.instance;

  @override
  void initState() {
    super.initState();
    //Coloca el valor initial de la cadena en vacio
    url = '';

    //Recupera la imagen desde el Firebase Storage
    getImage();
  }

  Future<void> getImage() async {
    //Recupera la referencia de la imagen
    final ref = storage.ref().child('reference_1.png');
    final getUrl = await ref.getDownloadURL();

    setState(() {
      url = getUrl;
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
          child: url == ""
              ? const Center(child: CircularProgressIndicator())
              : Image.network(url),
        ));
  }
}
