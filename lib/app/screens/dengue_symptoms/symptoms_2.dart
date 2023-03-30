import 'package:flutter/material.dart';
import 'package:solution/app/screens/dashboard.dart';

class SymptomsPage2 extends StatefulWidget {
  const SymptomsPage2({super.key});

  @override
  State<SymptomsPage2> createState() => _SymptomsPage2State();
}

class _SymptomsPage2State extends State<SymptomsPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dengue sympyoms'),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DashboardPage()));
              },
              icon: const Icon(Icons.exit_to_app)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //Sintoma 1
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/sintomas_1.png',
                      width: 40,
                      height: 40,
                    ),

                    //Separador entre filas
                    const SizedBox(width: 16.0),

                    Container(
                      padding: const EdgeInsets.all(10.0),
                      width: 241,
                      height: 58,

                      //Diseño del contenedor
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                            color: Colors.grey.withOpacity(0.5), width: 2),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        'Dolor de cabeza intenso especialmente detras de los ojos',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),

              //Separador entre columnas
              const SizedBox(height: 10.0),

              //Sintoma 2
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/sintomas_2.png',
                      width: 40,
                      height: 40,
                    ),

                    //Separador entre filas
                    const SizedBox(width: 16.0),

                    Container(
                      padding: const EdgeInsets.all(10.0),
                      width: 241,
                      height: 58,

                      //Diseño del contenedor
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                            color: Colors.grey.withOpacity(0.5), width: 2),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        'Fiebre alta (39°C/ 102°F) que dura de 2 a 7 días.',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),

              //Separador entre columnas
              const SizedBox(height: 10.0),

              //Sintoma 3
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/sintomas_3.png',
                      width: 40,
                      height: 40,
                    ),

                    //Separador entre filas
                    const SizedBox(width: 16.0),

                    Container(
                      padding: const EdgeInsets.all(10.0),
                      width: 241,
                      height: 58,

                      //Diseño del contenedor
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                            color: Colors.grey.withOpacity(0.5), width: 2),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        'Erupción cutánea que aparece después de  2 a 5 días de fiebre.',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),

              //Separador entre columnas
              const SizedBox(height: 10.0),

              //Sintoma 4
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/sintomas_4.png',
                      width: 40,
                      height: 40,
                    ),

                    //Separador entre filas
                    const SizedBox(width: 16.0),

                    Container(
                      padding: const EdgeInsets.all(10.0),
                      width: 241,
                      height: 58,

                      //Diseño del contenedor
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                            color: Colors.grey.withOpacity(0.5), width: 2),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        'Erupción cutánea que aparece después de  2 a 5 días de fiebre.',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),

              //Separador entre columnas
              const SizedBox(height: 10.0),

              //Sintoma 5
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/sintomas_5.png',
                      width: 40,
                      height: 40,
                    ),

                    //Separador entre filas
                    const SizedBox(width: 16.0),

                    Container(
                      padding: const EdgeInsets.all(10.0),
                      width: 241,
                      height: 40,

                      //Diseño del contenedor
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                            color: Colors.grey.withOpacity(0.5), width: 2),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        'Náuseas y vómitos.',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),

              //Separador entre columnas
              const SizedBox(height: 10.0),

              //Sintoma 6
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/sintomas_6.png',
                      width: 40,
                      height: 40,
                    ),

                    //Separador entre filas
                    const SizedBox(width: 16.0),

                    Container(
                      padding: const EdgeInsets.all(10.0),
                      width: 241,
                      height: 40,

                      //Diseño del contenedor
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                            color: Colors.grey.withOpacity(0.5), width: 2),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        'Pérdida de apetito.',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),

              //Separador entre columnas
              const SizedBox(height: 10.0),

              //Sintoma 7
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/sintomas_7.png',
                      width: 40,
                      height: 40,
                    ),

                    //Separador entre filas
                    const SizedBox(width: 16.0),

                    Container(
                      padding: const EdgeInsets.all(10.0),
                      width: 241,
                      height: 40,

                      //Diseño del contenedor
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                            color: Colors.grey.withOpacity(0.5), width: 2),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        'Fatiga y debilidad.',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),

              //Separador entre columnas
              const SizedBox(height: 10.0),

              //Sintoma 8
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/sintomas_8.png',
                      width: 40,
                      height: 40,
                    ),

                    //Separador entre filas
                    const SizedBox(width: 16.0),

                    Container(
                      padding: const EdgeInsets.all(10.0),
                      width: 241,
                      height: 58,

                      //Diseño del contenedor
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                            color: Colors.grey.withOpacity(0.5), width: 2),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        'Sangrado leve en las encías o la nariz.',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
