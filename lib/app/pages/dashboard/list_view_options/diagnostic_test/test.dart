import 'package:flutter/material.dart';
import 'package:solution/app/pages/dashboard/list_view_options/diagnostic_test/select_options/select_1.dart';
import 'package:solution/app/pages/dashboard/list_view_options/diagnostic_test/select_options/select_2.dart';
import 'package:solution/app/pages/dashboard/list_view_options/diagnostic_test/select_options/select_3.dart';
import 'package:solution/app/pages/dashboard/list_view_options/diagnostic_test/test_controller.dart';

class TestPage1 extends StatefulWidget {
  const TestPage1({super.key});

  @override
  State<TestPage1> createState() => _TestPage1State();
}

class _TestPage1State extends State<TestPage1> {
  final _formkey = GlobalKey<FormState>();
  final controller = TestController();

  //Datos a registrar
  String? option1;
  String? option2;
  String? option3;
  String? option4;
  String? option5;
  String? option6;
  String? option7;

  @override
  void initState() {
    super.initState();
    option1 = null;
    option2 = null;
    option3 = null;
    option4 = null;
    option5 = null;
    option6 = null;
    option7 = null;
  }

  //Registros de datos con mas opciones a elegir
  final List<String> _selectedOptions1 = [];
  final List<String> _selectedOptions2 = [];
  final List<String> _selectedOptions3 = [];

  Future<void> _navigateToOptions(
    List<String> selectedOptions,
    Widget builder,
  ) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => builder),
    );
    if (result != null) {
      setState(() {
        selectedOptions = result;
      });
    }
  }

  //Cuando den a seleccionar se iran a otra pantalla con checklist
  void _navigateToOptions1() async {
    await _navigateToOptions(_selectedOptions1, const RegisterController1());
  }

  void _navigateToOptions2() async {
    await _navigateToOptions(_selectedOptions2, const RegisterController2());
  }

  void _navigateToOptions3() async {
    await _navigateToOptions(_selectedOptions3, const RegisterController3());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Diagnostic test')),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Center(
                  child: Text(
                "ENTER YOUR DATA",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
              const SizedBox(
                height: 20,
              ),
              Form(
                  key: _formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 16.0),
                      const Text('Biological sex'),
                      DropdownButtonFormField<String>(
                        value: option1,
                        onChanged: (value) {
                          setState(() {
                            option1 = value;
                          });
                        },
                        items: [
                          DropdownMenuItem(
                            value: null,
                            child: Row(
                              children: const [
                                Icon(Icons.person),
                                SizedBox(width: 8),
                                Text('Select an option'),
                              ],
                            ),
                          ),
                          DropdownMenuItem(
                            value: 'Male',
                            child: Row(
                              children: const [
                                Icon(Icons.male),
                                SizedBox(width: 8),
                                Text('Male'),
                              ],
                            ),
                          ),
                          DropdownMenuItem(
                            value: 'Female',
                            child: Row(
                              children: const [
                                Icon(Icons.female),
                                SizedBox(width: 8),
                                Text('Female'),
                              ],
                            ),
                          ),
                        ],
                        validator: (value) {
                          if (value == null) {
                            return 'Please select an option';
                          } else if (option1 != value) {
                            return 'Multiple options selected';
                          }
                          return null;
                        },
                      ),

                      const SizedBox(height: 16.0),
                      const Text('Age'),

                      TextFormField(
                        decoration: const InputDecoration(
                            suffixIcon: Icon(Icons.access_time)),
                        keyboardType: TextInputType.number,
                        validator: (option2) {
                          if (option2!.isEmpty) {
                            return 'Please enter a valid age';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16.0),
                      const Text('Weight'),
                      TextFormField(
                        decoration: const InputDecoration(
                            suffixIcon: Icon(Icons.fitness_center)),
                        keyboardType: TextInputType.number,
                        validator: (option3) {
                          if (option3!.isEmpty) {
                            return 'Please enter a valid weight';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16.0),
                      const Text('Size'),
                      TextFormField(
                        decoration: const InputDecoration(
                            suffixIcon: Icon(Icons.accessibility_new)),
                        keyboardType: TextInputType.number,
                        validator: (option4) {
                          if (option4!.isEmpty) {
                            return 'Please enter a valid Size';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16.0),
                      const Text('Symptom onset date'),
                      TextFormField(
                        decoration: const InputDecoration(
                            suffixIcon: Icon(Icons.calendar_today)),
                        keyboardType: TextInputType.datetime,
                        validator: (option5) {
                          if (option5!.isEmpty) {
                            return 'Please enter a valid date';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16.0),
                      const Text('Evaluation date'),
                      TextFormField(
                        decoration: const InputDecoration(
                            suffixIcon: Icon(Icons.calendar_today)),
                        keyboardType: TextInputType.datetime,
                        validator: (option6) {
                          if (option6!.isEmpty) {
                            return 'Please enter a valid date';
                          }
                          return null;
                        },
                      ),

                      const SizedBox(height: 16.0),

                      //Registro extra #1
                      Row(
                        children: [
                          const Expanded(
                            child: Text('Risk factors:'),
                          ),
                          ElevatedButton(
                            onPressed: _navigateToOptions1,
                            child: const Text('Seleccionar'),
                          ),
                        ],
                      ),

                      const SizedBox(height: 16.0),

                      //Registro extra #2
                      Row(
                        children: [
                          const Expanded(
                            child: Text('Warning signs:'),
                          ),
                          ElevatedButton(
                            onPressed: _navigateToOptions2,
                            child: const Text('Seleccionar'),
                          ),
                        ],
                      ),

                      const SizedBox(height: 16.0),

                      //Registro extra #3
                      Row(
                        children: [
                          const Expanded(
                            child: Text('signs of severity:'),
                          ),
                          ElevatedButton(
                            onPressed: _navigateToOptions3,
                            child: const Text('Seleccionar'),
                          ),
                        ],
                      ),

                      const SizedBox(height: 16.0),

                      const Text('Blood pressure'),
                      DropdownButtonFormField<String>(
                        value: option7,
                        onChanged: (value) {
                          setState(() {
                            option7 = value;
                          });
                        },
                        items: [
                          DropdownMenuItem(
                            value: null,
                            child: Row(
                              children: const [
                                Icon(Icons.person),
                                SizedBox(width: 8),
                                Text('Select an option'),
                              ],
                            ),
                          ),
                          DropdownMenuItem(
                            value: 'PAS',
                            child: Row(
                              children: const [
                                SizedBox(width: 8),
                                Text('PAS'),
                              ],
                            ),
                          ),
                          DropdownMenuItem(
                            value: 'PAD',
                            child: Row(
                              children: const [
                                SizedBox(width: 8),
                                Text('PAD'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
              const SizedBox(
                height: 10,
              ),
              const Text('*PAD: Diastolic blood pressure'),
              const Text('*PAS: Systolic blood pressure'),
              const SizedBox(
                height: 40,
              ),
              controller.buttonAcept(),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
