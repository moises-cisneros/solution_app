import 'package:flutter/material.dart';
import 'package:solution/screen/dashboard/list_view_options/dengue_symptoms/symptoms_1.dart';
import 'package:solution/screen/dashboard/list_view_options/diagnostic_test/test.dart';
import 'package:solution/screen/dashboard/list_view_options/edit%20profile/edit_profile.dart';
import 'package:solution/screen/dashboard/list_view_options/informative_videos/informative_1.dart';
import 'package:solution/screen/dashboard/list_view_options/preventive_measures/prevencion_1.dart';
import 'package:solution/screen/dashboard/list_view_options/references/references.dart';
import 'package:solution/screen/dashboard/list_view_options/settings/settings.dart';
import 'package:solution/widgets/custom_icon.dart';
import 'custom_card_icon.dart';

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
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            accountEmail: Text(
              'correo@example.com',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('images/profile.jpg'),
            ),
            margin: EdgeInsets.zero,
            decoration: BoxDecoration(
              color: Color.fromRGBO(33, 172, 131, 10),
            ),
          ),

          const Divider(
            height: 10,
            color: Colors.white,
          ),

          CustomCardIcon(
            icon: const CustomIcon(icon: Icons.edit, color: Colors.blue),
            text: 'Edit profile',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const EditProfileScreen(),
                ),
              );
            },
          ),

          //Options of the screens
          CustomCardIcon(
            icon: const CustomIcon(icon: Icons.warning, color: Colors.yellow),
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

          CustomCardIcon(
            icon: const CustomIcon(
                icon: Icons.sick_outlined, color: Colors.lightGreen),
            text: 'Dengue symptoms',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SymptomsPage1()));
            },
          ),

          CustomCardIcon(
              icon: const CustomIcon(
                  icon: Icons.receipt_long_outlined, color: Colors.grey),
              text: 'Diagnostic test',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const TestPage1()));
              }),

          CustomCardIcon(
            icon: const CustomIcon(
                icon: Icons.video_collection, color: Colors.red),
            text: 'Informative videos',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const InformativePage1()));
            },
          ),

          CustomCardIcon(
            icon: const CustomIcon(
              icon: Icons.open_in_new,
              color: Colors.grey,
            ),
            text: 'References',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ReferencesPage()));
            },
          ),

          CustomCardIcon(
              icon: const CustomIcon(
                icon: Icons.settings,
                color: Colors.grey,
              ),
              text: "Settings",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingsScreen(),
                  ),
                );
              }),

          const Divider(
            height: 5.0,
            color: Color.fromRGBO(33, 172, 131, 10),
          ),

          Column(
            children: [
              ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(
                        Color.fromRGBO(33, 172, 131, 10)),
                  ),
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
