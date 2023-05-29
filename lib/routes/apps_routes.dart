import 'package:get/get.dart';
import 'package:solution/controllers/storage_image.dart';
import 'package:solution/controllers/storage_image_controller/storage_image_controller.dart';
import 'package:solution/screen/home/screen_home.dart';
//import 'package:solution/screen/screen_firebase.dart';
//import 'package:solution/screen/login/login.dart';

class AppRoutes {
  //Lista de rutas estaticas
  static List<GetPage> routes() => [
        //Aqui va LoginPage()
        GetPage(name: "/", page: () => const StorageImage()), //Screen de prueba
        GetPage(
            name: "/home",
            page: () => const HomeScreen(),
            binding: BindingsBuilder(() {
              Get.put(StorageImageController());
            }))
      ];
}
