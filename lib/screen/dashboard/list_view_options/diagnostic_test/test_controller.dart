import 'package:flutter/material.dart';

class TestController {
  //Boton accept data
  SizedBox buttonAcept() {
    return SizedBox(
      width: 100,
      height: 40,
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)))),
        child: const Text(
          'Accept',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}
