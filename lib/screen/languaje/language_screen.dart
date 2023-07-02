import 'package:flutter/material.dart';
import 'package:solution/screen/login/login.dart';

// Clase para los idiomas
class LanguageOption {
  final String id;
  final String name;
  final IconData icon;

  LanguageOption({required this.id, required this.name, required this.icon});
}

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  LanguageOption? selectedlanguage;

  // Lista de opciones de los idiomas
  List<LanguageOption> languageOptions = [
    LanguageOption(id: 'en', name: 'English', icon: Icons.language),
    LanguageOption(id: 'es', name: 'Español', icon: Icons.language),
    LanguageOption(id: 'qu', name: 'Quechua', icon: Icons.language),
    LanguageOption(id: 'ay', name: 'Aymara', icon: Icons.language),
    LanguageOption(id: 'gu', name: 'Guaraní', icon: Icons.language),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(217, 217, 217, 217)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Seleccionar Idioma",
                        style: TextStyle(fontSize: 25),
                      ),
                      Icon(
                        Icons.touch_app,
                        size: 40,
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                    ],
                  ),
                  ListView(
                    padding: const EdgeInsets.all(0),
                    shrinkWrap: true,
                    //
                    children: languageOptions.map((language) {
                      return Card(
                        margin: const EdgeInsets.all(10.0),
                        elevation: 4.0,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        color: Colors.white,
                        key: Key(language.id),
                        child: ListTile(
                          leading: Icon(language.icon),
                          title: Text(language.name),
                          onTap: () {
                            setState(() {
                              selectedlanguage = language;
                            });
                          },
                          selected: selectedlanguage == language,
                        ),
                      );
                    }).toList(),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            FloatingActionButton.extended(
              backgroundColor: const Color.fromARGB(217, 217, 217, 217),
              onPressed: () {
                //Navigation to the screen panel
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LoginPage()));
              },
              label: const Text(
                "Aceptar",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
    );
  }
}
