import 'package:flutter/material.dart';
import 'package:solution/screen/dashboard/widgets/chart_controller.dart';
import 'package:solution/screen/dashboard/widgets/drawer_options.dart';
import 'package:solution/screen/dashboard/widgets/elevated_button_controller.dart';
import 'package:solution/screen/dashboard/widgets/table_cases_dengue.dart';
import 'package:flutter/services.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  List<DengueData> dengueData = [];
  charts.LineChart chart = charts.LineChart(const []);
  @override
  void initState() {
    super.initState();

    //A list of fictitious data is created to represent the evolution of dengue cases:
    dengueData = [
      DengueData(2015, 28510),
      DengueData(2016, 17311),
      DengueData(2017, 6289),
      DengueData(2018, 4885),
      DengueData(2019, 3112),
      DengueData(2020, 59418),
      DengueData(2021, 1810),
      DengueData(2022, 4414),
      DengueData(2023, 36416),
    ];
    chart = DengueChart(dengueData).createChart();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 171, 225, 235),
      appBar: AppBar(
          title: const Text('DASHBOARD'),
          //backgroundColor: const Color.fromARGB(255, 238, 207, 104),
          backgroundColor: Colors.amber,
          actions: <Widget>[
            IconButton(
              tooltip: "Exit",
              onPressed: () {
                SystemNavigator.pop(); // Cierra la aplicación
              },
              icon: const Icon(Icons.exit_to_app),
            )
          ]),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Card(
                  color: Colors.amber,
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        //Device Map
                        Card(
                          elevation: 4.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          child: Container(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                const Text(
                                  'MAP: VIEW OF ALL MOSQUITO TRAP DEVICES',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.map,
                                        color: Colors.blue,
                                        size: 40.0,
                                      ),

                                      SizedBox(
                                        width: 16.0,
                                      ),

                                      //Button to display the device
                                      ButtonDevice(),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        const SizedBox(
                          height: 20,
                        ),

                        //Device Map
                        Card(
                          elevation: 4.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          child: Container(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: const [
                                Text(
                                  'DASHBOARD',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                const Text(
                  'EVOLUTION OF THE NUMBER OF DENGUE CASES OVER THE YEARS',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 350, height: 350, child: chart),
                const SizedBox(
                  height: 20,
                ),

                //Table of dengue case
                const Text(
                  'TABLE OF DENGUE CASE',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                TableDengueCases(),

                const SizedBox(
                  height: 5,
                ),

                //Total text
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Text(
                      'Total: 36416',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),

      //Drop down list
      drawer: const DrawerOptions(),
    );
  }
}
