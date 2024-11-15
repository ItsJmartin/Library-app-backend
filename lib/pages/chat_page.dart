import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(
        child: Center(
          child: Text("Chat Room",
          style: GoogleFonts.dmSans(
            color: Color(0xfff86320),
          ),
          ),
        ),
      )),
    );
  }
}