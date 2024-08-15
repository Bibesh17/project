import 'package:flutter/material.dart';
import 'login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: " Expense_app",
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(
            255, 60, 129, 158), // Set the global background color
      ),
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}
