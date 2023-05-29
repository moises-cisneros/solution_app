import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';

Reference get storage => FirebaseStorage.instance.ref();

class FirebaseStorageImage extends GetxService {
  //Cargar imagenes desde el firebase firebase Storage
  Future<String?> getImage(String? imgName) async {
    if (imgName == null) {
      return null;
    }
    try {
      //Obtener la referencia de la url de la imagen en el Storage
      final getUrl = storage.child('${imgName.toLowerCase()}.png');

      //Obtener la url de la imagen
      final getImageUrl = await getUrl.getDownloadURL();
      return getImageUrl;
    } catch (e) {
      return null;
    }
  }
}
