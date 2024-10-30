import 'package:chat_app/auth/validation_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.1),
        child: SafeArea(
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Color(0xfffbede7)),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Skip",
                    style: GoogleFonts.dmSans(color: Color(0xfff86320)),
                  ))
            ]),
            SizedBox(height: 30),
            SizedBox(
              height: 200,
              width: 200,
              child: Image(image: AssetImage("assets/icons/chat.png")),
            ),
            SizedBox(height: 30),
            SizedBox(
              child: Text(
                "Welcome to Halodec",
                textAlign: TextAlign.center,
                style: GoogleFonts.dmSans(
                  color: Color(0xff000000),
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              child: Text(
                "Helodec supports sending and receiving a veriety of media texts, photos, vedios, documents and location, as well as voice calls",
                textAlign: TextAlign.center,
                style: GoogleFonts.dmSans(
                  color: Colors.grey,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                width: double.infinity,
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll(Color(0xfff86320)),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Lets Get Started",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w700,
                      ),
                    )),
              )
            ]),
            SizedBox(
              child: Row(children: [
                Text(
                  "already have account?",
                  style: GoogleFonts.dmSans(
                    color: Colors.grey,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ValidationPage(),
                              ),
                            );
                    },
                    child: Text("Login",
                        style: GoogleFonts.dmSans(
                          color: Color(0xf0000000),
                          fontWeight: FontWeight.w700,
                        )))
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}
