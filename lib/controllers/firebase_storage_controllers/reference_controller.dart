import 'package:solution/services/firebase_storage_service.dart';

class ReferenceController {
  final FirebaseStorageService _storageService = FirebaseStorageService();
  late String urlImage1;
  late String urlImage2;
  late String urlImage3;
  late String urlImage4;

  Future<void> initialize() async {
    // Get the url of the image
    urlImage1 = await _storageService.getImageUrl('images/libro_ref_1.jpg');
    urlImage2 = await _storageService.getImageUrl('images/libro_ref_2.jpg');
    urlImage3 = await _storageService.getImageUrl('images/libro_ref_3.jpg');
    urlImage4 = await _storageService.getImageUrl('images/libro_ref_4.jpg');
  }
}
