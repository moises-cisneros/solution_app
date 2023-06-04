import 'package:solution/services/firebase_storage_service.dart';

class PrevencionScreen1Controller {
  final FirebaseStorageService _storageService = FirebaseStorageService();
  late String urlImage;
  late String urlImage2;

  Future<void> initialize() async {
    // Get the url of the image
    urlImage = await _storageService.getImageUrl('images/prevencion_1.png');
    urlImage2 = await _storageService.getImageUrl('images/prevencion_2.png');
  }
}
