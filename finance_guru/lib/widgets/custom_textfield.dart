import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final String labelText;
  const CustomTextfield({super.key, required this.labelText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(color: Colors.white),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromRGBO(255, 255, 255, 1)),
        ),
      ),
    );
  }
}
