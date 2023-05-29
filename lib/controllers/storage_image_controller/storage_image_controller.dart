import 'package:get/get.dart';
import 'package:solution/services/firebase_storage_image.dart';

class StorageImageController extends GetxController {
  final allImages = <String>[].obs;

  //Cargar los datos
  @override
  void onReady() {
    getAllImages();
    super.onReady();
  }

  //Obtener todas las imagenes
  Future<void> getAllImages() async {
    //Lista de imagenes correlacionados con las imagenes en el firebase
    List<String> listNameImage = [
      'reference_1.png',
      'reference_2.png',
      'reference_3.png',
      'reference_4.png'
    ];

    try {
      for (final img in listNameImage) {
        final getUrlImage = await Get.find<FirebaseStorageImage>()
            .getImage(img); //obtener la ruta de la imagen
        allImages.add(getUrlImage!);
      }
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }
}
