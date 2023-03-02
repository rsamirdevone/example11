import 'package:flutter/material.dart';
import 'package:d_chart/d_chart.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(224, 224, 224, 224),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Padding(padding: EdgeInsets.only(top: 100, left: 10)),
                Container(
                  width: 110,
                  height: 75,
                  decoration: BoxDecoration(
                    color: Colors.blue[700],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      '+500',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 11,
                ),
                Container(
                  width: 120,
                  height: 75,
                  decoration: BoxDecoration(
                    color: Colors.pink[700],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      '+300',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 11,
                ),
                Container(
                  width: 120,
                  height: 75,
                  decoration: BoxDecoration(
                    color: Colors.green[500],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      '+1200',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  width: 370,
                  height: 260,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Sales',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                            top: 20,
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 170,
                                height: 170,
                                child: Container(
                                  height: 150,
                                  width: 150,
                                  child: DChartPie(
                                    data: [
                                      {'domain': 'Flutter', 'measure': 50},
                                      {'domain': 'Frontend', 'measure': 50},
                                    ],
                                    fillColor: (pieData, index) {
                                      switch (pieData['domain']) {
                                        case 'Flutter':
                                          return Colors.blue[300];
                                        case 'Frontend':
                                          return Colors.yellow[700];
                                        case 'Backend':
                                          return Colors.blue[800];
                                        default:
                                          return Colors.red;
                                      }
                                    },
                                    showLabelLine: false,
                                    pieLabel: (pieData, index) {
                                      return "${pieData['domain']}";
                                    },
                                    labelPosition: PieLabelPosition.inside,
                                    labelPadding: 0,
                                    labelColor: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                child: Container(
                                  height: 170,
                                  width: 170,
                                  child: DChartPie(
                                    data: [
                                      {'domain': 'Flutter', 'measure': 50},
                                      {'domain': 'Scratch', 'measure': 50},
                                      {'domain': 'Backend', 'measure': 50},
                                    ],
                                    fillColor: (pieData, index) {
                                      switch (pieData['domain']) {
                                        case 'Flutter':
                                          return Colors.blue[300];
                                        case 'Scratch':
                                          return Colors.green[600];
                                        case 'Backend':
                                          return Colors.yellow[800];
                                        default:
                                          return Colors.red;
                                      }
                                    },
                                    showLabelLine: false,
                                    pieLabel: (pieData, index) {
                                      return "${pieData['domain']}";
                                    },
                                    labelPosition: PieLabelPosition.inside,
                                    labelPadding: 0,
                                    labelColor: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ]),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Container(
                  width: 370,
                  height: 260,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Activites',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
