import 'package:flutter/material.dart';

class RegisterController1 extends StatefulWidget {
  const RegisterController1({super.key});

  @override
  State<RegisterController1> createState() => _RegisterControllerState();
}

class _RegisterControllerState extends State<RegisterController1> {
  final List<String> _options = [
    'In pregnancy',
    'Child under 5 years',
    'Adult over 60 years',
    'Obesity',
    'Arterial hypertension',
    'Patient with end-stage renal failure',
    'None of the above'
  ];
  final List<bool> _selected = [
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  void _selectOption(int index, bool? selected) {
    setState(() {
      _selected[index] = selected!;
    });
  }

  //Filtramos las opciones y si el valor es true entonces es agregada a la lista selectedOptions.
  void _acceptSelection() {
    final selectedOptions = _options
        .where((option) => _selected[_options.indexOf(option)])
        .toList();

    //Cerramos la pantalla actual y regresamos a la pantalla anterior.
    Navigator.pop(context, selectedOptions);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Risk factors'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView.builder(
          itemCount: _options.length,
          itemBuilder: (context, index) => CheckboxListTile(
            title: Text(_options[index]),
            value: _selected[index],
            onChanged: (selected) => _selectOption(index, selected),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _acceptSelection,
        child: const Icon(Icons.check),
      ),
    );
  }
}
