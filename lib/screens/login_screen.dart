import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:developer';

import 'package:instagram_app/screens/welcome_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  bool _isPasswordVisible = false;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const WelcomePage()),
                );
              },
              icon: const Icon(
                Icons.close,
                color: Colors.white,
              ))
        ],
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(32, 110, 32, 32),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Instagram',
                  style: TextStyle(
                    fontFamily: "BillaBong",
                    fontSize: 60,
                    color: Colors.white,
                  ),
                ),
                TextFormField(
                  style: const TextStyle(color: Colors.grey, fontSize: 14),
                  controller: _controller1,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Username is required";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: "Phone number, username or email",
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
                TextFormField(
                  style: const TextStyle(color: Colors.grey, fontSize: 14),
                  controller: _controller2,
                  obscureText: _isPasswordVisible,
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: const TextStyle(color: Colors.grey),
                    suffix: IconButton(
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                      icon: Icon(_isPasswordVisible
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Password is required';
                    } else if (value.length < 6) {
                      return 'Password must be at least 6 characters long';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                  child: SizedBox(
                    child: Column(
                      children: [
                        SizedBox(
                          width: 330,
                          child: ElevatedButton(
                            onPressed: () {
                              log(_controller1.text);
                              log(_controller2.text);

                              if (_formKey.currentState!.validate()) {}
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: const Text(
                              'Log in',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(height: 28),
                        const Text(
                          'OR',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 28),
                        GestureDetector(
                          onTap: () {},
                          // child: Container(
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.facebook,
                                color: Colors.blue,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Continue as Saina Maskey ",
                                style: TextStyle(color: Colors.blue),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Spacer(flex: 1),
                RichText(
                  text: TextSpan(
                    text: "Don't have an account? ",
                    style: const TextStyle(color: Colors.grey),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Sign Up.',
                        recognizer: TapGestureRecognizer()..onTap = () {},
                        style: const TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/images/meta-1.svg',
                      colorFilter:
                          const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                      semanticsLabel: 'facebook logo',
                      height: 12,
                      width: 20,
                    ),
                    const Text(
                      " Meta",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
