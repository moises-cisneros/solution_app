import 'package:firebase_storage/firebase_storage.dart';

class FirebaseStorageService {
  final FirebaseStorage _storage = FirebaseStorage.instance;

  Future<String> getImageUrl(String imagePath) async {
    // Retrieve the image reference
    final ref = _storage.ref().child(imagePath);

    // Retrieve Url de la imagen y lo retorna de la funcion
    final getUrl = await ref.getDownloadURL();
    return getUrl;
  }
}
