import 'package:finance_guru/screen/analysis_page.dart';
import 'package:finance_guru/screen/main_screen.dart';
import 'package:finance_guru/screen/search_page.dart';
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
      appBar: AppBar(
        title: const Text('Finance Guru'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        backgroundColor: const Color.fromARGB(255, 233, 226, 226),
        selectedItemColor: Colors.blue, // Customize selected item color
        unselectedItemColor: Colors.grey, // Customize unselected item color
        items: const [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.doc_text_search), label: 'Analysis'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.doc_on_doc), label: 'Transaction'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search), label: 'Search'),
        ],
      ),
      body: index == 0
          ? const MainScreen()
          : index == 1
              ? const AnalysisPage()
              : index == 2
                  ? const TransactionPage()
                  : const SearchPage(),
    );
  }
}
