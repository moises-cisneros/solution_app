import 'package:flutter/material.dart';
import 'package:solution/pages/dashboard/widgets/chart_controller.dart';
import 'package:solution/pages/dashboard/widgets/drawer_options.dart';
import 'package:solution/pages/dashboard/widgets/elevated_button_controller.dart';
import 'package:solution/pages/dashboard/widgets/table_cases_dengue.dart';
import '../login/login.dart';
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
      appBar: AppBar(actions: <Widget>[
        IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LoginPage()));
            },
            icon: const Icon(Icons.exit_to_app)),
      ]),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  'EVOLUTION OF THE NUMBER OF DENGUE CASES OVER THE YEARS',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),

                Center(
                    //Graph on the evolution of dengue cases
                    child: SizedBox(
                        height: 350,
                        width: 350,
                        child: Expanded(child: chart))),

                const SizedBox(
                  height: 20,
                ),

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
                  'MAP: VIEW OF ALL MOSQUITO TRAP DEVICES',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),

                const SizedBox(
                  height: 10,
                ),

                //Button to display the device
                const ButtonDevice(),
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
