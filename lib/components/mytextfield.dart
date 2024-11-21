import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextfield extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;

  const MyTextfield(
      {super.key,
      required this.hintText, //for hint text
      required this.obscureText, //for hiding password
      required this.controller, //controller for email and password
      required this.validator, // validator for form validation
      required this.keyboardType //keyboard type
      });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.1),
      child: TextFormField(
          keyboardType: keyboardType,
          obscureText: obscureText,
          controller: controller,
          validator: validator,
          style: GoogleFonts.dmSans(color: Colors.grey),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color: Color(0xfff86320),
                width: 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color: Color(0xfff86320),
                width: 1,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color: Colors.red.shade700,
                width: 1,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  color: Color(0xfff86320),
                  width: 1,
                )),
            hintText: hintText,
            hintStyle: GoogleFonts.dmSans(color: Colors.grey),
          )),
    );
  }
}
