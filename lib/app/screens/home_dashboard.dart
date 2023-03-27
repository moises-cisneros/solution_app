import 'package:flutter/material.dart';
import 'package:solution/app/screens/dengue_symptoms/symptoms_1.dart';
import 'package:solution/app/screens/diagnostic_test/test_1.dart';
import 'package:solution/app/screens/preventive_measures/prevencion_1.dart';
import 'login.dart';

class ScreenDashboard extends StatefulWidget {
  const ScreenDashboard({super.key});

  @override
  State<ScreenDashboard> createState() => _ScreenDashboardState();
}

class _ScreenDashboardState extends State<ScreenDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: <Widget>[
        IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LoginPage()));
            },
            icon: const Icon(Icons.exit_to_app)),
      ]),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('Nombre del usuario'),
              accountEmail: Text('correo@example.com'),
              currentAccountPicture: CircleAvatar(
                  //backgroundImage: AssetImage('assets/images/profile_image.jpg'),
                  ),
              margin: EdgeInsets.zero,
            ),

            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text('Editar perfil'),
              onTap: () {},
            ),
            const Divider(
              height: 18.0,
              color: Colors.white,
            ),

            //Opciones de las pantallas
            ListTile(
              leading: const Icon(Icons.warning),
              title: const Text('Preventive measures'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PrevencionPage1()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.sick_outlined),
              title: const Text('Dengue symptoms'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SymptomsPage1()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.receipt_long_outlined),
              title: const Text('Diagnostic test'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const TestPage1()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.video_collection),
              title: const Text('Informative videos'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.open_in_new),
              title: const Text('References'),
              onTap: () {},
            ),

            const Divider(
              height: 25.0,
              color: Colors.white,
            ),

            Column(
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text("CLOSE")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
