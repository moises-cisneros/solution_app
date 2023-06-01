import 'package:solution/services/firebase_storage_service.dart';

class PrevencionScreen3Controller {
  final FirebaseStorageService _storageService = FirebaseStorageService();
  late String urlImage1;
  late String urlImage2;
  late String urlImage3;

  Future<void> initialize() async {
    urlImage1 = await _storageService.getImageUrl('images/prevencion_6.png');
    urlImage2 = await _storageService.getImageUrl('images/prevencion_7.png');
    urlImage3 = await _storageService.getImageUrl('images/prevencion_8.png');
  }
}
