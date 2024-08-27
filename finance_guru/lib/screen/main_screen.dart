import 'package:finance_guru/widgets/monthly_report.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:finance_guru/data/data.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          //main column
          children: [
            Row(
              //person icon, good morning and notification
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      //person icon
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.yellow,
                        ),
                        child: const Icon(CupertinoIcons.person_fill, size: 24),
                      ),
                      const SizedBox(width: 8),
                      //good morning text
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Good morning!",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w900,
                              color: Colors.black87,
                            ),
                          ),
                          Text(
                            "Roman",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                //notification icon
                IconButton(
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.bell_circle_fill),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // container

            Container(
              //income, expense and balance
              height: 220,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 91, 193, 233),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    //shrawan 2081, search icon and menu icon
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Shrawan 2081',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Colors.white70,
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.search),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.more_vert_outlined),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MonthlyReport(
                            icon: CupertinoIcons.arrow_up_circle,
                            transactionType: 'Income',
                            amount: '45000',
                          ),
                          MonthlyReport(
                            icon: CupertinoIcons.arrow_down_circle,
                            transactionType: 'Expense',
                            amount: '4500',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    const MonthlyReport(
                      icon: CupertinoIcons.money_dollar_circle,
                      transactionType: 'Balance',
                      amount: '40500',
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 91, 193, 233),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Expanded(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Categories",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white70,
                                    fontSize: 20),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.more_vert_outlined),
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: PieChart(
                              dataMap: dataMap,
                              animationDuration:
                                  const Duration(milliseconds: 1200),
                              chartLegendSpacing: 35,
                              chartRadius:
                                  MediaQuery.of(context).size.width / 1.7,
                              initialAngleInDegree: 0,
                              chartType: ChartType.ring,
                              ringStrokeWidth: 15,
                              legendOptions: const LegendOptions(
                                showLegendsInRow: false,
                                legendPosition: LegendPosition.right,
                                showLegends: true,
                                legendShape: BoxShape.circle,
                                legendTextStyle: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 10,
                                    color: Colors.black87),
                              ),
                              chartValuesOptions: const ChartValuesOptions(
                                showChartValueBackground: false,
                                showChartValues: false,
                                showChartValuesInPercentage: false,
                                showChartValuesOutside: false,
                                decimalPlaces: 1,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
