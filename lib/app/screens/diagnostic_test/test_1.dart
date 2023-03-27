import 'package:flutter/material.dart';

class TestPage1 extends StatefulWidget {
  const TestPage1({super.key});

  @override
  State<TestPage1> createState() => _TestPage1State();
}

class _TestPage1State extends State<TestPage1> {
  final _formKey = GlobalKey<FormState>();
  String? _selectedOption;
  String? _selectedFactor; // nueva variable para el DropdownButtonFormField

  @override
  void initState() {
    super.initState();
    _selectedOption = null; // Cambiar el valor predeterminado a null
    _selectedFactor = null; // Inicializar el valor predeterminado a null
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mi formulario')),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Sexo'),
              RadioListTile(
                title: const Text('Masculino'),
                value: 'Masculino',
                groupValue: _selectedOption,
                onChanged: (value) {
                  setState(() {
                    _selectedOption = value;
                  });
                },
              ),
              RadioListTile(
                title: const Text('Femenino'),
                value: 'Femenino',
                groupValue: _selectedOption,
                onChanged: (value) {
                  setState(() {
                    _selectedOption = value;
                  });
                },
              ),
              const SizedBox(height: 16.0),
              const Text('Edad'),
              TextFormField(
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, introduce una edad válida';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              const Text('Talla'),
              TextFormField(
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, introduce una talla válida';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              const Text('Factores de riesgo'),
              DropdownButtonFormField<String>(
                value: _selectedFactor,
                onChanged: (value) {
                  setState(() {
                    _selectedFactor = value;
                  });
                },
                items: const [
                  DropdownMenuItem(
                      value: null, child: Text('Ninguna opción seleccionada')),
                  DropdownMenuItem(value: 'Opción 1', child: Text('Opción 1')),
                  DropdownMenuItem(value: 'Opción 2', child: Text('Opción 2')),
                  DropdownMenuItem(value: 'Opción 3', child: Text('Opción 3')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
