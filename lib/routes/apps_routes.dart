import 'package:get/get.dart';
import 'package:solution/screen/languaje/screen_languaje.dart';

class AppRoutes {
  //Lista de rutas estaticas
  static List<GetPage> routes() => [
        //Aqui va LoginPage() o LangauejeScreen
        GetPage(
            name: "/", page: () => const ScreenLanguaje()), //Screen de prueba
      ];
}
