import 'package:chat_app/auth/login_page.dart';
import 'package:chat_app/pages/contacts_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({
    super.key,
  });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _registerKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool isCheked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xffffffff),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(16.1),
              child: Form(
                key: _registerKey,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      const SizedBox(
                        width: 100,
                        height: 100,
                        child: Image(
                          image: AssetImage("assets/icons/register.png"),
                          color: Color(0xfff86320),
                        ),
                      ),

                      const SizedBox(height: 20), //gap between contents

                      Text(
                        "Register",
                        style: GoogleFonts.spaceGrotesk(
                          color: const Color(0xfff86320),
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 40), // gap between contents

                      TextFormField(
                        keyboardType: TextInputType.name,
                        style: GoogleFonts.dmSans(color: Colors.grey),
                        controller: _usernameController,
                        validator: (userName) {
                          if (userName == null || userName.isEmpty) {
                            return "Please enter user name";
                          }
                          if (userName.length < 5) {
                            return "Enter a valid Username";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: "User Name",
                          labelStyle: GoogleFonts.dmSans(color: Colors.black),
                          prefixIcon: const Icon(
                            Icons.person,
                            color: Color(0xfff86320),
                          ),
                          // text field
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xfff86320)),
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          // focused text field
                          focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            borderSide: BorderSide(
                              color: Color(0xfff86320),
                              width: 1,
                            ),
                          ),
                          // error text field
                          errorBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            borderSide: BorderSide(
                              color: Color(0xffdf0808),
                              width: 1,
                            ),
                          ),
                          // error focused text filed
                          focusedErrorBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            borderSide: BorderSide(
                              color: Color(0xfff86320),
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20), //gap between contents
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        style: GoogleFonts.dmSans(color: Colors.grey),
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
                          labelStyle: GoogleFonts.dmSans(color: Colors.black),
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Color(0xfff86320),
                          ),
                          // text field
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xfff86320)),
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          // focused text field
                          focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            borderSide: BorderSide(
                              color: Color(0xfff86320),
                              width: 1,
                            ),
                          ),
                          // error text field
                          errorBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            borderSide: BorderSide(
                              color: Color(0xffdf0808),
                              width: 1,
                            ),
                          ),
                          // error focused text filed
                          focusedErrorBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            borderSide: BorderSide(
                              color: Color(0xfff86320),
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        style: GoogleFonts.dmSans(
                          color: Colors.grey,
                        ),
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
                          labelStyle: GoogleFonts.dmSans(color: Colors.black),
                          prefixIcon: const Icon(
                            Icons.email,
                            color: Color(0xfff86320),
                          ),
                          // text field
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xfff86320)),
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          // focused text field
                          focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            borderSide: BorderSide(
                              color: Color(0xfff86320),
                              width: 1,
                            ),
                          ),

                          // error text field
                          errorBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            borderSide: BorderSide(
                              color: Color(0xffdf0808),
                              width: 1,
                            ),
                          ),
                          // error focused text filed
                          focusedErrorBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            borderSide: BorderSide(
                              color: Color(0xfff86320),
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),

                      SizedBox(
                        width: double.infinity,
                        height: 60,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xfff86320),
                            elevation: 20,
                            shadowColor: Color(0xfff86320),
                          ),
                          onPressed: () {
                            if (_registerKey.currentState!.validate()) {
                              _emailController.clear();
                              _passwordController.clear();

                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ContactsList(),
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
                            "Register",
                            style: GoogleFonts.dmSans(
                              color: const Color(0xffffffff),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 10), // gap betwwen contents

                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Already Member?',
                              style: GoogleFonts.dmSans(
                                color: const Color(0xfff86320),
                                fontSize: 16,
                              ),
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.all(0),
                              ),
                              onPressed: () {
                                Navigator.pop(context, (route) => LoginPage());
                              },
                              child: Text(
                                'Login',
                                style: GoogleFonts.dmSans(
                                  color: const Color(0xfff86320),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ]),

                      SizedBox(height: 30), //gap between contents

                      // ElevatedButton(
                      //   onPressed: () {
                      //     // Navigator.pop(context, (route) => LoginPage());
                      //   },
                      //   style: ElevatedButton.styleFrom(
                      //       iconColor: Color(0xfff86320),
                      //       backgroundColor: Color(0xffffffff),
                      //       elevation: 15,
                      //       shadowColor: Color(0xfff86320)),
                      //   child: Icon(Icons.arrow_back_ios_new),
                      // )
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
