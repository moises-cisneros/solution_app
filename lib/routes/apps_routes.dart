import 'package:get/get.dart';
import 'package:solution/screen/languaje/language_screen.dart';

class AppRoutes {
  //Lista de rutas estaticas
  static List<GetPage> routes() => [
        //Aqui va LoginPage() o LanguageScreen
        GetPage(
            name: "/", page: () => const LanguageScreen()), //Screen de prueba
      ];
}
