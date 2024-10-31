import 'package:chat_app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ValidationPage extends StatefulWidget {
  const ValidationPage({super.key});

  @override
  State<ValidationPage> createState() => _ValidationPageState();
}

class _ValidationPageState extends State<ValidationPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff86320),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              width: 70,
              height: 70,
              child: Image(
                image: AssetImage("assets/icons/chat.png"),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(16.1),
              child: Text(
                "Login",
                style: GoogleFonts.spaceGrotesk(
                  color: const Color(0xffffffff),
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.1),
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        style:
                            GoogleFonts.dmSans(color: const Color(0xffffffff)),
                        controller: _emailController,
                        validator: (email) {
                          if (email == null || email.isEmpty) {
                            return 'Please enter an email';
                          }
                          final emailRegex =
                              RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
                          if (!emailRegex.hasMatch(email)) {
                            return 'Please enter a valid email';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: "Email",
                          labelStyle: GoogleFonts.dmSans(
                              color: const Color(0xffffffff)),
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
                        )),
                    const SizedBox(height: 20),
                    TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        style:
                            GoogleFonts.dmSans(color: const Color(0xffffffff)),
                        controller: _passwordController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter a password";
                          } else if (value.length < 6) {
                            return "Password must be at least 6 characters";
                          }
                          return null;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: GoogleFonts.dmSans(
                              color: const Color(0xffffffff)),
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
                        )),
                    const SizedBox(height: 40),
                    SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _emailController.clear();
                            _passwordController.clear();

                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomePage(),
                              ),
                            );

                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Login Successful'),
                                backgroundColor: Color(0xff4caf50),
                                duration: Duration(seconds: 3),
                              ),
                            );
                          }
                        },
                        child: Text(
                          "Login",
                          style: GoogleFonts.dmSans(
                            color: const Color(0xff000000),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10), // gap betwwen contents
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Not a Member?',
                          style: GoogleFonts.dmSans(
                            color: const Color(0xffffffff),
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          'Register now',
                          style: GoogleFonts.dmSans(
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
