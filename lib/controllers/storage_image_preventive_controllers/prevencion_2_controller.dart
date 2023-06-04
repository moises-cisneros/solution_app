import 'package:solution/services/firebase_storage_service.dart';

class PrevencionScreen2Controller {
  final FirebaseStorageService _storageService = FirebaseStorageService();
  late String urlImage1;
  late String urlImage2;
  late String urlImage3;

  Future<void> initialize() async {
    // Get the url of the image
    urlImage1 = await _storageService.getImageUrl('images/prevencion_3.png');
    urlImage2 = await _storageService.getImageUrl('images/prevencion_4.png');
    urlImage3 = await _storageService.getImageUrl('images/prevencion_5.png');
  }
}
