import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final Icon prefixIcon;
  final String title;
  final TextInputType textInputType;
  const AppTextField({
    super.key,
    required this.prefixIcon,
    required this.title,
    required this.textInputType,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(15),
        hintText: title,
        prefixIcon: prefixIcon,
        border: InputBorder.none,
        hintStyle: const TextStyle(
          color: Colors.white,
        ),
      ),
      keyboardType: textInputType,
    );
  }
}
