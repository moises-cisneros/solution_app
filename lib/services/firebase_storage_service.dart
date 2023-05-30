import 'package:firebase_storage/firebase_storage.dart';

class FirebaseStorageService {
  final FirebaseStorage _storage = FirebaseStorage.instance;

  Future<String> getImageUrl(String imagePath) async {
    final ref = _storage.ref().child(imagePath);
    final getUrl = await ref.getDownloadURL();
    return getUrl;
  }
}
