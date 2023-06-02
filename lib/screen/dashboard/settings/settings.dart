import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: const Color.fromRGBO(33, 172, 131, 10),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text('Notifications'),
            onTap: () {
              // Navegar a la pantalla de configuración de notificaciones
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Account'),
            onTap: () {
              // Navegar a la pantalla de configuración de cuenta
            },
          ),
          ListTile(
            leading: const Icon(Icons.security),
            title: const Text('Privacy'),
            onTap: () {
              // Navegar a la pantalla de configuración de privacidad
            },
          ),
          ListTile(
            leading: const Icon(Icons.language),
            title: const Text('Language'),
            onTap: () {
              // Navegar a la pantalla de configuración de idioma
            },
          ),
          ListTile(
            leading: const Icon(Icons.help),
            title: const Text('Help & Support'),
            onTap: () {
              // Navegar a la pantalla de ayuda y soporte
            },
          ),
          // Agrega más opciones de configuración según tus necesidades
        ],
      ),
    );
  }
}
