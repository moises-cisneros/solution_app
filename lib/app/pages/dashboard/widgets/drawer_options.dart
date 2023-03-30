import 'package:flutter/material.dart';
import 'package:solution/app/pages/dashboard/list_view_options/dengue_symptoms/symptoms_1.dart';
import 'package:solution/app/pages/dashboard/list_view_options/diagnostic_test/test.dart';
import 'package:solution/app/pages/dashboard/list_view_options/informative_videos/informative_1.dart';
import 'package:solution/app/pages/dashboard/list_view_options/preventive_measures/prevencion_1.dart';
import 'package:solution/app/pages/dashboard/list_view_options/references/references.dart';

class DrawerOptions extends StatelessWidget {
  const DrawerOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text('User name'),
            accountEmail: Text('correo@example.com'),
            currentAccountPicture: CircleAvatar(
                //backgroundImage: AssetImage('assets/images/profile_image.jpg'),
                ),
            margin: EdgeInsets.zero,
          ),

          ListTile(
            leading: const Icon(Icons.edit),
            title: const Text('Edit profile'),
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
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const InformativePage1()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.open_in_new),
            title: const Text('References'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ReferencesPage()));
            },
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
    );
  }
}
