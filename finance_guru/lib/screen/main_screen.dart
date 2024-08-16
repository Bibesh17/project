import 'package:finance_guru/widgets/monthly_report.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                Row(
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
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFF32ADE6),
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
                    const Row(
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
          ],
        ),
      ),
    );
  }
}
