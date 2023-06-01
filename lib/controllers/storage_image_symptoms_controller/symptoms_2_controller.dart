import 'package:solution/services/firebase_storage_service.dart';

class SymptomsScreen2Controller {
  final FirebaseStorageService _storageService = FirebaseStorageService();
  late String urlImage1;
  late String urlImage2;
  late String urlImage3;
  late String urlImage4;
  late String urlImage5;
  late String urlImage6;
  late String urlImage7;
  late String urlImage8;

  Future<void> initialize() async {
    urlImage1 = await _storageService.getImageUrl('images/sintomas_1.png');
    urlImage2 = await _storageService.getImageUrl('images/sintomas_2.png');
    urlImage3 = await _storageService.getImageUrl('images/sintomas_3.png');
    urlImage4 = await _storageService.getImageUrl('images/sintomas_4.png');
    urlImage5 = await _storageService.getImageUrl('images/sintomas_5.png');
    urlImage6 = await _storageService.getImageUrl('images/sintomas_6.png');
    urlImage7 = await _storageService.getImageUrl('images/sintomas_7.png');
    urlImage8 = await _storageService.getImageUrl('images/sintomas_8.png');
  }
}
