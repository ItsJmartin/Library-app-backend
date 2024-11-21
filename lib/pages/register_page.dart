import 'package:chat_app/components/mytextfield.dart';
import 'package:chat_app/pages/login_page.dart';
import 'package:chat_app/pages/contacts_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({
    required this.onTap,
    super.key,
  });

  @override
  State<RegisterPage> createState() => _RegisterPageState();

  // tap to go to register page
  final void Function()? onTap;
}

class _RegisterPageState extends State<RegisterPage> {
  final _registerKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPassController = TextEditingController();

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
                      // heading
                      Text(
                        "Register",
                        style: GoogleFonts.spaceGrotesk(
                          color: const Color(0xfff86320),
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 40), // gap between contents

                      // username textfield
                      MyTextfield(
                        hintText: "User name",
                        obscureText: false,
                        controller: _usernameController,
                        keyboardType: TextInputType.text,
                        validator: (userName) {
                          if (userName == null || userName.isEmpty) {
                            return "Please enter user name";
                          }
                          if (userName.length < 5) {
                            return "Enter a valid Username";
                          }
                          return null;
                        },
                      ),

                      const SizedBox(height: 20), //gap between contents

                      // email textfield
                      MyTextfield(
                        hintText: "Email",
                        obscureText: false,
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
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
                      ),

                      const SizedBox(height: 20),

                      // password textField
                      MyTextfield(
                        hintText: "Password",
                        obscureText: true,
                        controller: _passwordController,
                        keyboardType: TextInputType.number,
                        validator: (password) {
                          if (password == null || password.isEmpty) {
                            return "Please enter a password";
                          } else if (password.length < 6) {
                            return "Password must be at least 6 characters";
                          }
                          return null;
                        },
                      ),

                      const SizedBox(height: 20),

                      // confirm password textfield
                      MyTextfield(
                        hintText: "Confirm passsword",
                        obscureText: false,
                        controller: _confirmPassController,
                        keyboardType: TextInputType.number,
                        validator: (conPass) {
                          if (conPass == null || conPass.isEmpty) {
                            return "please confirm password";
                          } else if (_passwordController.toString() !=
                              conPass) {
                            return "Password does not match";
                          }
                          return null;
                        },
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
                              _usernameController.clear();
                              _emailController.clear();
                              _passwordController.clear();
                              _confirmPassController.clear();

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
                                Navigator.pop(
                                    context,
                                    (route) => LoginPage(
                                          onTap: null,
                                        ));
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
