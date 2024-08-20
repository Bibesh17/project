import 'package:finance_guru/screen/analysis_page.dart';
import 'package:finance_guru/screen/main_screen.dart';
import 'package:finance_guru/screen/transaction_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.doc_text_search), label: 'Analysis'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.doc_on_doc), label: 'transaction'),
        ],
      ),
      //floating action buttom
      /*  floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(),
        child: const Icon(CupertinoIcons.doc_text_search),
      ),*/

      body: index == 0
          ? const MainScreen()
          : index == 1
              ? const AnalysisPage()
              : const TransactionPage(),
    );
  }
}
