import 'package:flutter/material.dart';
import 'package:solution/widgets/chart_controller.dart';
import 'package:solution/widgets/drawer_options.dart';
import 'package:solution/widgets/elevated_button_controller.dart';
import 'package:solution/widgets/table_cases_dengue.dart';
import 'package:flutter/services.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  //A list of fictitious data is created to represent the evolution of dengue cases:
  List<DengueData> dengueData = [
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

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('DASHBOARD'),
          backgroundColor: const Color.fromRGBO(33, 172, 131, 10),
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
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      //Device Map
                      Card(
                        elevation: 4.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Container(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'VIEW DEVICE',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),

                              SizedBox(
                                width: 26.0,
                              ),

                              //Button to display the device
                              ButtonDevice(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Card(
                        elevation: 4.0,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        child: Container(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'DASHBOARD',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 26.0,
                              ),
                              Icon(
                                Icons.dashboard_customize_sharp,
                                color: Colors.blueAccent,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Center(
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(10)),
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.all(5),
                          child: const Text("data"),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Expanded(
                      child: Center(
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10)),
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.all(5),
                          child: const Text("data"),
                        ),
                      ),
                    )
                  ],
                ),

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
                const Text(
                  'EVOLUTION OF THE NUMBER OF DENGUE CASES OVER THE YEARS',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),

                SizedBox(
                    width: 350,
                    height: 350,
                    child: DengueChart(
                      dengueData: dengueData,
                    )),

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
