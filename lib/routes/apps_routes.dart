import 'package:get/get.dart';
//import 'package:solution/screen/dashboard/list_view_options/dengue_symptoms/symptoms_2.dart';
import 'package:solution/screen/login/login.dart';

class AppRoutes {
  //Lista de rutas estaticas
  static List<GetPage> routes() => [
        //Aqui va LoginPage()
        GetPage(name: "/", page: () => const LoginPage()), //Screen de prueba
      ];
}
