import 'package:flutter/material.dart';

class CasosDengue {
  final String departamento;
  final int casos;

  CasosDengue(this.departamento, this.casos);
}

class TableDengueCases extends StatelessWidget {
  TableDengueCases({super.key});

  final List<CasosDengue> casosDengue = [
    CasosDengue('La Paz', 1608),
    CasosDengue('Cochabamba', 1264),
    CasosDengue('Santa Cruz', 48555),
    CasosDengue('Oruro', 17),
    CasosDengue('Potosí', 8),
    CasosDengue('Chuquisaca', 1599),
    CasosDengue('Tarija', 4806),
    CasosDengue('Beni', 6405),
    CasosDengue('Pando', 1149),
  ];

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const [
        DataColumn(label: Text('Departament')),
        DataColumn(label: Text('Cases')),
      ],
      rows: casosDengue
          .map(
            (casos) => DataRow(
              cells: [
                DataCell(Text(casos.departamento)),
                DataCell(Text(casos.casos.toString())),
              ],
            ),
          )
          .toList(),

      //Design of the table
      dataRowColor: MaterialStateColor.resolveWith(
          (states) => Colors.blue[50] ?? Colors.transparent),
      dataRowHeight: 60,
      columnSpacing: 20,
      headingRowColor: MaterialStateColor.resolveWith(
          (states) => Colors.grey[300] ?? Colors.transparent),
      dividerThickness: 1,
      showBottomBorder: true,

      dataTextStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: Colors.black,
      ),

      headingTextStyle: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }
}
