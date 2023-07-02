import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Clase para los idiomas
class LanguageOption {
  final String id;
  final String name;
  final IconData icon;

  LanguageOption({required this.id, required this.name, required this.icon});
}

class LanguageController extends GetxController {
  // Lista de opciones de los idiomas
  List<LanguageOption> languageOptions = [
    LanguageOption(id: 'en', name: 'English', icon: Icons.language),
    LanguageOption(id: 'es', name: 'Español', icon: Icons.language),
    LanguageOption(id: 'qu', name: 'Quechua', icon: Icons.language),
    LanguageOption(id: 'ay', name: 'Aymara', icon: Icons.language),
    LanguageOption(id: 'gu', name: 'Guaraní', icon: Icons.language),
  ];

  LanguageOption? selectedLanguage;

  @override
  void onInit() async {
    super.onInit();

    // Obteger el idioma seleccionado
    final prefs = await SharedPreferences.getInstance();
    String languageCode = prefs.getString('languageCode') ?? 'en';

    selectedLanguage =
        languageOptions.firstWhere((language) => language.id == languageCode);
  }

  void setLanguaje(LanguageOption language) async {
    selectedLanguage = language;

    // Guardamos el idioma seleccionada
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('languageCode', language.id);

    update();
  }

  void navigateToNextScreen() {
    // Navegar a la siguiente pantalla: LoginPage()
    Get.toNamed('/LoginPage');
  }
}
