import 'package:flutter/material.dart';
import 'package:finance_guru/widgets/monthly_report.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 91, 193, 233),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  const Text(
                    "Rs. 45000",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
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
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MonthlyReport(
                          icon: Icons.start,
                          transactionType: "Starting ",
                          amount: "Rs .0"),
                      MonthlyReport(
                          icon: Icons.create,
                          transactionType: "Ending",
                          amount: "0"),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 450,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 91, 193, 233),
                borderRadius: BorderRadius.circular(16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
