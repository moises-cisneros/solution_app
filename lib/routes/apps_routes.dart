import 'package:get/get.dart';
import 'package:solution/controllers/language_controller.dart';
import 'package:solution/screen/languaje/language_screen.dart';
import 'package:solution/screen/login/login.dart';

class AppRoutes {
  //Lista de rutas estaticas
  static List<GetPage> routes() {
    // Inyectar el controllador de Idiomas
    Get.put(LanguageController());

    return [
      //Aqui va LoginPage() o LanguageScreen
      GetPage(
          name: "/",
          page: () =>
              const LanguageScreen()), //Screen de prueba: LanguageScreen
      GetPage(name: "/LoginPage", page: () => const LoginPage())
    ];
  }
}
