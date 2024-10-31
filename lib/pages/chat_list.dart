import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatListPage extends StatelessWidget {
  const ChatListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff86320),
      body: SafeArea(
          child: Container(
        color: Color(0xffffffff),
        child: Column(children: [
          Row(children: [
            Text("HELODEK",
            style: GoogleFonts.dmSans(
              color: Color(0xfff86320),
              fontWeight: FontWeight.w500,
              fontSize: 26,
            ),
            )
          ]),
        ]),
      )),
    );
  }
}
