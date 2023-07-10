import 'package:solution/services/firebase_storage_service.dart';

class SymptomsController {
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
    urlImage1 =
        await _storageService.getImageUrl('images/sintomas_esquema.png');
    urlImage2 = await _storageService.getImageUrl('images/sintomas_1.png');
    urlImage3 = await _storageService.getImageUrl('images/sintomas_2.png');
    urlImage4 = await _storageService.getImageUrl('images/sintomas_3.png');
    urlImage5 = await _storageService.getImageUrl('images/sintomas_4.png');
    urlImage6 = await _storageService.getImageUrl('images/sintomas_5.png');
    urlImage7 = await _storageService.getImageUrl('images/sintomas_6.png');
    urlImage8 = await _storageService.getImageUrl('images/sintomas_7.png');
    urlImage9 = await _storageService.getImageUrl('images/sintomas_8.png');
  }
}
