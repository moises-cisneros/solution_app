import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

//Implementacion del storage V2
class ScreenFirebase extends StatefulWidget {
  @override
  State<ScreenFirebase> createState() => _ScreenFirebaseState();
}

class _ScreenFirebaseState extends State<ScreenFirebase> {
  //const ScreenFirebase({super.key});
  var refImage = FirebaseStorage.instance
      .ref()
      .child("reference_1.png")
      .getDownloadURL()
      .toString();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getImage();
  }

  String image = '';
  Future getImage() async {
    final st = FirebaseStorage.instance;
    final img = st.ref().child('images/Icono.png');
    String imgUrl = await img.getDownloadURL();
    image = imgUrl;
    print(image);
    setState(() {});
  }

//String strImage =  refImage.getDownloadURLs().toString(); //(wait reefImage.get))
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: 200,
            height: 200,
            child: image == null
                ? Center(child: CircularProgressIndicator())
                : Image.network(image)));
  }
}
