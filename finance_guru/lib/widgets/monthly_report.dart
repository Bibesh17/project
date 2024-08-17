import 'package:flutter/material.dart';

class MonthlyReport extends StatelessWidget {
  final IconData icon;
  final String transactionType;
  final String amount;

  const MonthlyReport(
      {super.key,
      required this.icon,
      required this.transactionType,
      required this.amount});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 39, 159, 196),
          // color: Colors.pink,
          borderRadius: BorderRadius.circular(30.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(icon),
          Column(
            children: [
              Text(
                transactionType,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                amount,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
