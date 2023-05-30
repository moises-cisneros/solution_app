import 'package:solution/services/firebase_storage_service.dart';

class SymptomsScreen1Controller {
  final FirebaseStorageService _storageService = FirebaseStorageService();
  late String urlImage;

  Future<void> initialize() async {
    urlImage = await _storageService.getImageUrl('images/prevencion_1.png');
  }
}
