import 'package:chatgpt_app/const.dart';
import 'package:flutter/material.dart';
import 'package:chatgpt_app/Utils/Routes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 90),
                  child: Image.asset(
                    'images/aiblack.png',
                    height: 100,
                    width: 100,
                    scale: 5,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "Welcome Back",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                //Email and password textformfields
                Form(
                  // key: _formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      //Email address textformfield
                      Padding(
                        padding: const EdgeInsets.only(right: 18, left: 18),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          obscureText: true,
                          decoration: const InputDecoration(
                            label: Text(
                              "Email address",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                              ),
                            ),
                            hintText: "jaycarter@gmail.com",
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      //Password textformfield
                      Padding(
                        padding: const EdgeInsets.only(right: 18, left: 18),
                        child: TextFormField(
                          textInputAction: TextInputAction.done,
                          obscureText: true,
                          decoration: const InputDecoration(
                            label: Text(
                              "Password",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                              ),
                            ),
                            hintText: "*******",
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: green,
                    padding:
                        EdgeInsets.symmetric(vertical: 20, horizontal: 162),
                  ),
                  onPressed: () {},
                  child: Text("Continue"),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text("Don't have an account? ")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
