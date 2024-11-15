import 'package:chat_app/auth/login_page.dart';
import 'package:chat_app/auth/register_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(16.1),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Skip button
              Align(
                alignment: Alignment.topRight,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xfffbede7),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Skip",
                    style: GoogleFonts.dmSans(color: Color(0xfff86320)),
                  ),
                ),
              ),
        
              SizedBox(height: 30),
        
              Center(
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                      image: AssetImage("assets/icons/chat.png"),
                      fit: BoxFit.fitHeight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xfff86320).withOpacity(0.2),
                        blurRadius: 50,
                        offset: Offset(0, 30),
                      ),
                    ],
                  ),
                ),
              ),
        
              SizedBox(height: 100),
        
              Text(
                "Welcome to Halodec",
                textAlign: TextAlign.center,
                style: GoogleFonts.dmSans(
                  color: Color(0xff000000),
                  fontSize: 45,
                  height: 1,
                  fontWeight: FontWeight.bold,
                ),
              ),
        
              SizedBox(height: 20),
        
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "Halodec supports sending and receiving a variety of media texts, photos, videos, documents, and location, as well as voice calls.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dmSans(
                    color: Colors.grey,
                    // fontSize: 16,
                    height: 1.5,
                  ),
                ),
              ),
        
              SizedBox(height: 40),
        
              // Let's Get Started button with shadow
              Container(
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Color(0xfff86320).withOpacity(0.2),
                    blurRadius: 50,
                    offset: Offset(0, 10),
                  ),
                ]),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xfff86320),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterPage()),
                    );
                  },
                  child: Text(
                    "Let's Get Started",
                    style: GoogleFonts.dmSans(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
        
              // Already have an account? Login
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: GoogleFonts.dmSans(
                      color: Colors.grey,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      );
                    },
                    child: Text(
                      "Login",
                      style: GoogleFonts.dmSans(
                        color: Color(0xfff86320),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
