import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextfield extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final Widget prefixIcon;

  const MyTextfield({
    super.key,
    required this.hintText, //for hint text
    required this.obscureText, //for hiding password
    required this.controller, //controller for email and password
    required this.validator, // validator for form validation
    required this.keyboardType, //keyboard type
    required this.prefixIcon, // prefix icon
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        keyboardType: keyboardType,
        obscureText: obscureText,
        controller: controller,
        validator: validator,
        style: GoogleFonts.dmSans(color: Colors.black),
        decoration: InputDecoration(
          filled: true,
          fillColor: Color.fromARGB(255, 225, 225, 211),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Color(0xffffffff),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Color(0xffffffff),
              width: 2,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.red.shade700,
              width: 1.5,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Color(0xfff86320),
                width: 1.5,
              )),
          prefixIcon: prefixIcon,
          prefixIconColor: Color(0xfff86320),
          hintText: hintText,
          hintStyle: GoogleFonts.dmSans(color: Colors.grey),
        ));
  }
}
