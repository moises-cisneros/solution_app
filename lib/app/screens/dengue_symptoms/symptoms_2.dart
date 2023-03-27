import 'package:flutter/material.dart';

class SymptomsPage2 extends StatefulWidget {
  const SymptomsPage2({super.key});

  @override
  State<SymptomsPage2> createState() => _SymptomsPage2State();
}

class _SymptomsPage2State extends State<SymptomsPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dengue sympyoms')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
                  const SizedBox(height: 16.0),
                  const SizedBox(
                    width: 241,
                    height: 48,
                    child: Center(
                      child: Text(
                        'Dolor de cabeza intenso especialmente detras de los ojos',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
