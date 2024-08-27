import 'package:flutter/material.dart';
import 'screen/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: " Finance Guru",
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 167, 232, 240),
      ),
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}
