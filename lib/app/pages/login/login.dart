import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:solution/app/pages/dashboard/dashboard.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _rememberPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        //Diseño de la flecha de retroceder
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(40.0),
        children: <Widget>[
          //Titulo
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(20.0),
            child: const Text(
              'LOG IN',
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
          ),

          //Contenedor del usuario
          TextField(
            enableInteractiveSelection: false,
            autofocus: true,
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9]')),
            ],
            decoration: InputDecoration(
              icon: const Icon(Icons.account_circle),
              hintText: 'User name',
              labelText: 'User',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),

          const Divider(
            height: 18.0,
            color: Colors.white,
          ),

          //Contenedor de la contraseña
          TextField(
            enableInteractiveSelection: false,
            obscureText: true,
            autofocus: true,
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9]')),
            ],
            decoration: InputDecoration(
              icon: const Icon(Icons.lock_outline),
              hintText: 'Password',
              labelText: 'Password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),

          //Diseño del remember password
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Checkbox(
                value: _rememberPassword,
                onChanged: (bool? value) {
                  setState(() {
                    _rememberPassword = value ?? false;
                  });
                },
              ),
              const Text('Remember password'),
            ],
          ),

          const Divider(
            height: 18.0,
            color: Colors.white,
          ),

          //Boton de ingreso
          Column(children: [
            ElevatedButton(
                onPressed: () {
                  //Navegacion hacia el screen dashboard
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DashboardPage()));
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                child: const Text(
                  "Continue",
                ))
          ]),

          const Divider(
            height: 18.0,
            color: Colors.white,
          ),

          //Data adicional
          Container(
              alignment: Alignment.center,
              child: const Text("You do not have an account?")),
          const Divider(
            height: 18.0,
            color: Colors.white,
          ),

          //Boton de registro
          Column(children: [
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                child: const Text(
                  "Sign up here",
                ))
          ]),

          const Divider(
            height: 18.0,
            color: Colors.white,
          ),

          //Boton de skip
          Column(children: [
            ElevatedButton(
                onPressed: () {
                  //Navegacion hacia el screen dashboard
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DashboardPage()));
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                child: const Text(
                  "Maybe later",
                ))
          ]),
        ],
      ),
    );
  }
}
