import 'package:flutter/material.dart';
import 'package:solution/pages/dashboard/dashboard.dart';

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
              //Symptom 1
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

                    //Separator between rows
                    const SizedBox(width: 16.0),

                    Container(
                      padding: const EdgeInsets.all(10.0),
                      width: 241,
                      height: 58,

                      //Design of the container
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                            color: Colors.grey.withOpacity(0.5), width: 2),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        "Intense headache, especially behind the eyes.",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),

              //Separator between columns
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
                        "High fever (39°C/102°F) that lasts for 2 to 7 days.",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),

              //Separator between columns
              const SizedBox(height: 10.0),

              //Symptom 3
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

                    //Separator between rows
                    const SizedBox(width: 16.0),

                    Container(
                      padding: const EdgeInsets.all(10.0),
                      width: 241,
                      height: 58,

                      //Design of the container
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                            color: Colors.grey.withOpacity(0.5), width: 2),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        "Pain in the muscles and joints.",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),

              //Separator between columns
              const SizedBox(height: 10.0),

              //Symptom 4
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

                    //Separator between rows
                    const SizedBox(width: 16.0),

                    Container(
                      padding: const EdgeInsets.all(10.0),
                      width: 241,
                      height: 58,

                      //Design of the container
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                            color: Colors.grey.withOpacity(0.5), width: 2),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        "Skin rash that appears after 2 to 5 days of fever.",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),

              //Separator between columns
              const SizedBox(height: 10.0),

              //Symptom 5
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

                    //Separator between rows
                    const SizedBox(width: 16.0),

                    Container(
                      padding: const EdgeInsets.all(10.0),
                      width: 241,
                      height: 40,

                      //Design of the container
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                            color: Colors.grey.withOpacity(0.5), width: 2),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        "Nausea and vomiting.",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),

              //Separator between columns
              const SizedBox(height: 10.0),

              //Symptom 6
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

                    //Separator between rows
                    const SizedBox(width: 16.0),

                    Container(
                      padding: const EdgeInsets.all(10.0),
                      width: 241,
                      height: 40,

                      //Design of the container
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                            color: Colors.grey.withOpacity(0.5), width: 2),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        "Loss of appetite.",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),

              //Separator between columns
              const SizedBox(height: 10.0),

              //Symptom 7
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

                    //Separator between rows
                    const SizedBox(width: 16.0),

                    Container(
                      padding: const EdgeInsets.all(10.0),
                      width: 241,
                      height: 40,

                      //Design of the container
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                            color: Colors.grey.withOpacity(0.5), width: 2),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        "Fatigue and weakness.",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),

              //Separator between columns
              const SizedBox(height: 10.0),

              //Symptom 8
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

                    //Separator between rows
                    const SizedBox(width: 16.0),

                    Container(
                      padding: const EdgeInsets.all(10.0),
                      width: 241,
                      height: 58,

                      //Design of the container
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                            color: Colors.grey.withOpacity(0.5), width: 2),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        "Mild bleeding in the gums or nose.",
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
