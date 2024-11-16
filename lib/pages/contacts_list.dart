import 'package:chat_app/components/costom_navbar.dart';
import 'package:chat_app/components/header_iconset.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              "HALODECK",
              style: GoogleFonts.nunito(
                color: const Color(0xfff86320),
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            HeaderIconset(size: 30),
          ]),
          const SizedBox(height: 20),

          // custom navigation bar
          const Expanded(child: CustomNavBar()),
        ]),
      ),
    ));
  }
}
