import 'package:flutter/material.dart';
import 'package:solution/screen/dashboard/list_view_options/dengue_symptoms/symptoms_1.dart';
import 'package:solution/screen/dashboard/list_view_options/diagnostic_test/test.dart';
import 'package:solution/screen/dashboard/list_view_options/informative_videos/informative_1.dart';
import 'package:solution/screen/dashboard/list_view_options/preventive_measures/prevencion_1.dart';
import 'package:solution/screen/dashboard/list_view_options/references/references.dart';

import 'custom_card.dart';

class DrawerOptions extends StatelessWidget {
  const DrawerOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      //backgroundColor: Colors.lightBlue,
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text(
              'User name',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            accountEmail: Text(
              'correo@example.com',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('images/profile.jpg'),
            ),
            margin: EdgeInsets.zero,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.pink, Colors.orange, Colors.yellow],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),

          CustomCard(
            icon: Icons.edit,
            text: 'Edit profile',
            onTap: () {},
          ),

          //Options of the screens
          CustomCard(
            icon: Icons.warning,
            text: 'Preventive measures',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PrevencionPage1(),
                ),
              );
            },
          ),

          CustomCard(
            icon: Icons.sick_outlined,
            text: 'Dengue symptoms',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SymptomsPage1()));
            },
          ),

          CustomCard(
              icon: Icons.receipt_long_outlined,
              text: 'Diagnostic test',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const TestPage1()));
              }),

          CustomCard(
            icon: Icons.video_collection,
            text: 'Informative videos',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const InformativePage1()));
            },
          ),

          CustomCard(
            icon: Icons.open_in_new,
            text: 'References',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ReferencesPage()));
            },
          ),

          CustomCard(icon: Icons.settings, text: "Settings", onTap: () {}),

          const Divider(
            height: 5.0,
            color: Colors.blue,
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
