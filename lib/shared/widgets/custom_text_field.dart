import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,
      required this.hinttext,
      required this.obscureText,
      required this.validator,
      required this.controller});
  String? hinttext;
  final bool obscureText;
  final FormFieldValidator<String> validator;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      validator: validator,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        isDense: true,
        hintText: hinttext,
        hintStyle: TextStyle(color: Color.fromARGB(255, 216, 219, 224)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 0, 21, 51))),
        fillColor: Color.fromARGB(255, 0, 21, 51),
        filled: true,
      ),
    );
  }
}
