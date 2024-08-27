import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:finance_guru/data/data.dart';

class AnalysisPage extends StatefulWidget {
  const AnalysisPage({super.key});

  @override
  State<AnalysisPage> createState() => _AnalysisPageState();
}

class _AnalysisPageState extends State<AnalysisPage> {
  List<bool> isSelected = [true, false];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            // first container

            Container(
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 91, 193, 233),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: ToggleButtons(
                  borderColor: Colors.white,
                  fillColor: const Color.fromARGB(255, 14, 86, 119),
                  borderWidth: 2,
                  selectedBorderColor: Colors.white,
                  selectedColor: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  onPressed: (int index) {
                    setState(() {
                      for (int i = 0; i < isSelected.length; i++) {
                        isSelected[i] = i == index;
                      }
                    });
                  },
                  isSelected: isSelected,
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.0),
                      child: Text("Week"),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.0),
                      child: Text("Months"),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // Expenses and income container (middle )

            Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 91, 193, 233),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_left),
                        ),
                        const Text(
                          "Shrawan 2081",
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_right_outlined),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Expenses ",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                        Text(
                          "Income ",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),

            const SizedBox(
              height: 10,
            ),

            // analysis of pie chart container

            Container(
                height: 370,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 91, 193, 233),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: PieChart(
                    dataMap: dataMap,
                    animationDuration: const Duration(milliseconds: 1200),
                    chartLegendSpacing: 35,
                    chartRadius: MediaQuery.of(context).size.width / 1.7,
                    initialAngleInDegree: 0,
                    chartType: ChartType.disc,
                    ringStrokeWidth: 15,
                    legendOptions: const LegendOptions(
                      showLegendsInRow: false,
                      legendPosition: LegendPosition.right,
                      showLegends: true,
                      legendShape: BoxShape.circle,
                      legendTextStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 10,
                          color: Color.fromARGB(99, 0, 0, 0)),
                    ),
                    chartValuesOptions: const ChartValuesOptions(
                      showChartValueBackground: false,
                      showChartValues: true,
                      showChartValuesInPercentage: true,
                      chartValueStyle: TextStyle(
                          background: null,
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.black87),
                      showChartValuesOutside: false,
                      decimalPlaces: 1,
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
