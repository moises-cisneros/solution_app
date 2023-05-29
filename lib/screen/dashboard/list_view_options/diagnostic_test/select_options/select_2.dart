import 'package:flutter/material.dart';

class RegisterController2 extends StatefulWidget {
  const RegisterController2({super.key});

  @override
  State<RegisterController2> createState() => _RegisterControllerState();
}

class _RegisterControllerState extends State<RegisterController2> {
  //List of fictitious data
  final List<String> _options = [
    'Intense and continuous abdominal pain.',
    'Chest pain or dyspnea',
    'Pleural effusion or pericardial effusion',
    'Mucous bleeding (gingival bleeding, epistaxis, metrorrhagia and hypermenorrhea)',
    'Arterial hypertension',
    'Decreased diuresis (decreased urinary volume)',
    'Excessive decay or fainting',
    'Altered mental status (drowsiness, restlessness, irritability, or seizures)',
    'Hepatomegaly',
    'Progressive increase in hematocrit',
    'None of the above'
  ];

  //Boolean list indicating whether an option has been selected or not.
  final List<bool> _selected = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  //Este método actualiza la lista "_selected" con el valor seleccionado en el índice correspondiente
  void _selectOption(int index, bool? selected) {
    setState(() {
      _selected[index] = selected!;
    });
  }

  //We filter the options and if the value is true, it is added to the selectedOptions list.
  void _acceptSelection() {
    final selectedOptions = _options
        .where((option) => _selected[_options.indexOf(option)])
        .toList();

    //Close the current screen and return to the previous screen.
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
        //Create a list of options with checkboxes
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
