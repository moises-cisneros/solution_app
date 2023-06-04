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
            title: const Text('General Settings'),
            subtitle: const Text('Change general app settings'),
            leading: const Icon(Icons.settings),
            onTap: () {
              // Future: Navegar a la pantalla de ajustes generales
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Account'),
            subtitle: const Text('Manage your account'),
            onTap: () {
              // Future: Navegar a la pantalla de configuración de cuenta
            },
          ),
          ListTile(
            title: const Text('Visual Preferences'),
            subtitle: const Text('Customize visual appearance'),
            leading: const Icon(Icons.color_lens),
            onTap: () {
              // Future: Navegar a la pantalla de preferencias visuales
            },
          ),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text('Notifications'),
            subtitle: const Text('Configure app notifications'),
            onTap: () {
              // Future: Navegar a la pantalla de configuración de notificaciones
            },
          ),
          ListTile(
            leading: const Icon(Icons.security),
            title: const Text('Privacy & Security'),
            subtitle: const Text('Manage privacy and security settings'),
            onTap: () {
              // Future: Navegar a la pantalla de configuración de privacidad
            },
          ),
          ListTile(
            leading: const Icon(Icons.language),
            title: const Text('Language'),
            subtitle: const Text('Change app language'),
            onTap: () {
              // Future: Navegar a la pantalla de configuración de idioma
            },
          ),
          ListTile(
            leading: const Icon(Icons.help),
            title: const Text('Help & Support'),
            subtitle: const Text('Get help and support'),
            onTap: () {
              // Future: Navegar a la pantalla de ayuda y soporte
            },
          ),
        ],
      ),
    );
  }
}
