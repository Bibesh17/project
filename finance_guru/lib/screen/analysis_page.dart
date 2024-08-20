import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:finance_guru/data/data.dart';

class AnalysisPage extends StatelessWidget {
  const AnalysisPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            // first container

            Container(
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFF32ADE6),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // Expenses and income container (middle )

            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFF32ADE6),
                borderRadius: BorderRadius.circular(16),
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
                  color: const Color(0xFF32ADE6),
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
