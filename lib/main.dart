import 'package:chat_app/auth/register_page.dart';
import 'package:chat_app/pages/chat_list.dart';
import 'package:chat_app/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
