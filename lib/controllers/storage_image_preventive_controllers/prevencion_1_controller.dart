import 'package:solution/services/firebase_storage_service.dart';

class PrevencionScreen1Controller {
  final FirebaseStorageService _storageService = FirebaseStorageService();
  late String urlImage1;
  late String urlImage2;
  late String urlImage3;
  late String urlImage4;
  late String urlImage5;
  late String urlImage6;
  late String urlImage7;
  late String urlImage8;
  late String urlImage9;

  Future<void> initialize() async {
    // Get the url of the image
    urlImage1 = await _storageService.getImageUrl('images/prevencion_1.png');
    urlImage2 = await _storageService.getImageUrl('images/prevencion_2.png');
    urlImage3 = await _storageService.getImageUrl('images/prevencion_3.png');
    urlImage4 = await _storageService.getImageUrl('images/prevencion_4.png');
    urlImage5 = await _storageService.getImageUrl('images/prevencion_5.png');
    urlImage6 = await _storageService.getImageUrl('images/prevencion_6.png');
    urlImage7 = await _storageService.getImageUrl('images/prevencion_7.png');
    urlImage8 = await _storageService.getImageUrl('images/prevencion_8.png');
    urlImage9 = await _storageService.getImageUrl('images/prevencion_9.png');
  }
}
