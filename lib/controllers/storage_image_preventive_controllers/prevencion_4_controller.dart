import 'package:solution/services/firebase_storage_service.dart';

class PrevencionScreen4Controller {
  final FirebaseStorageService _storageService = FirebaseStorageService();
  late String urlImage1;

  Future<void> initialize() async {
    // Get the url of the images
    urlImage1 = await _storageService.getImageUrl('images/prevencion_9.png');
  }
}
