import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactChat extends StatelessWidget {
  const ContactChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(
        child: Center(
          child: Text("Contact Chat",
          style: GoogleFonts.dmSans(
            color: Color(0xfff86320),
          ),
          ),
        ),
      )),
    );
  }
}