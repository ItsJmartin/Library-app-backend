import 'package:chat_app/components/my_button.dart';
import 'package:chat_app/components/mytextfield.dart';
import 'package:chat_app/pages/register_page.dart';
import 'package:chat_app/pages/contacts_page.dart';
import 'package:chat_app/services/auth/auth_services.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  // tap to go to register page
  final void Function()? onTap;

  LoginPage({super.key, required this.onTap});

  final _loginKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  // login method
  void login(BuildContext context) async {
    // auth service
    final authService = AuthServices();
    // try login
    try {
      await authService.signInWithEmailPPassword(
          _emailController.text, _passwordController.text);
    }
    // catch any errors
    catch (e) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(e.toString()),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xffeeeee4),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(16.1),
            child: SizedBox(
              child: Form(
                key: _loginKey,
                child: SingleChildScrollView(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        const SizedBox(
                          width: 100,
                          height: 100,
                          child: Image(
                            image: AssetImage("assets/icons/login1.png"),
                            color: Color(0xfff86320),
                          ),
                        ),

                        const SizedBox(height: 20),

                        // heading
                        Text(
                          "Login",
                          style: GoogleFonts.spaceGrotesk(
                            color: const Color(0xfff86320),
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 40),

                        // login textfield
                        MyTextfield(
                          prefixIcon: Icon(
                            Icons.email,
                          ),
                          hintText: 'Email',
                          keyboardType: TextInputType.emailAddress,
                          obscureText: false,
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
                        ),

                        const SizedBox(height: 20),

                        // password textfield
                        MyTextfield(
                          prefixIcon: Icon(Icons.lock),
                          hintText: "Password",
                          obscureText: true,
                          controller: _passwordController,
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter a password";
                            } else if (value.length < 6) {
                              return "Password must be at least 6 characters";
                            }
                            return null;
                          },
                        ),

                        const SizedBox(height: 40),

                        // login button
                        MyButton(
                          text: "Login",
                          onPressed: () {
                            // login method
                            login(context);

                            if (_loginKey.currentState!.validate()) {
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
                        ),
                        // const SizedBox(height: 05), // gap betwwen contents
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Not a Member?',
                                style: GoogleFonts.dmSans(
                                  color: const Color(0xfff86320),
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(width: 5),
                              TextButton(
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.all(0),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => RegisterPage(
                                        onTap: null,
                                      ),
                                    ),
                                  );
                                },
                                child: Text(
                                  'Register now',
                                  style: GoogleFonts.dmSans(
                                    color: const Color(0xfff86320),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ]),
                      ]),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
