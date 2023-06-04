import 'package:get/get.dart';
import 'package:solution/screen/login/login.dart';

class AppRoutes {
  //Lista de rutas estaticas
  static List<GetPage> routes() => [
        //Aqui va LoginPage() o LangauejeScreen
        GetPage(name: "/", page: () => const LoginPage()), //Screen de prueba
      ];
}
