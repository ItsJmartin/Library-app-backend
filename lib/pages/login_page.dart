import 'package:chat_app/components/my_button.dart';
import 'package:chat_app/components/mytextfield.dart';
import 'package:chat_app/pages/register_page.dart';
import 'package:chat_app/pages/contacts_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  // tap to go to register page
  final void Function()? onTap;

  const LoginPage({
    required this.onTap,
    super.key,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _loginKey = GlobalKey<FormState>();
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
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xffffffff),
      body: SafeArea(
        child: Center(
          child: SizedBox(
            width: double.infinity,
            child: Form(
              key: _loginKey,
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
                      hintText: "Password",
                      obscureText: true,
                      controller: _emailController,
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
    );
  }
}
