import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:solution/controllers/language_controller.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  @override
  Widget build(BuildContext context) {
    // Creamos el controllador de los idiomas
    final controller = Get.find<LanguageController>();

    return WillPopScope(
      onWillPop: () async {
        final prefs = await SharedPreferences.getInstance();
        if (prefs.getString('languageCode') != null) {
          return false;
        } else {
          return true;
        }
      },
      child: Scaffold(
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
                      children: controller.languageOptions.map((language) {
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
                                controller.setLanguaje(language);
                              });
                            },
                            selected: controller.selectedLanguage == language,
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
              /*FloatingActionButton.extended(
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
              ),*/
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          label: const Text("ACCEPT"),
          icon: const Icon(Icons.navigate_next),
          backgroundColor: const Color.fromRGBO(33, 172, 131, 10),
          onPressed: () {
            controller.navigateToNextScreen();
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
