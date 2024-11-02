import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatListPage extends StatefulWidget {
  const ChatListPage({super.key});

  @override
  State<ChatListPage> createState() => _ChatListPageState();
}

class _ChatListPageState extends State<ChatListPage> {

  final _searchKey = GlobalKey<FormState>();
  final SearchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff86320),
      body: SafeArea(
          child: Container(
        color: Color(0xffffffff),
        child: Form(
          key: _searchKey,
          child: Column(children: [
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              style: GoogleFonts.dmSans(color: const Color(0xffffffff)),
              controller: SearchController,
              validator: (email) {
                if (email == null || email.isEmpty) {
                  return "No Contact Found";
                }
                return null;
              },
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.lock,
                  color: Color(0xffffffff),
                ),
                // text field
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                // focused text field
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  borderSide: BorderSide(
                    color: Color(0xffffffff),
                    width: 2,
                  ),
                ),
                // error text field
                errorBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  borderSide: BorderSide(
                    color: Color(0xffdf0808),
                    width: 2,
                  ),
                ),
                // error focused text filed
                focusedErrorBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  borderSide: BorderSide(
                    color: Color(0xffffffff),
                    width: 2,
                  ),
                ),
              ),
            ),
          ]),
        ),
      )),
    );
  }
}
