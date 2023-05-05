import 'package:chatgpt_app/screens/ChatScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF343541),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 250),
                child: Image.asset(
                  'images/ai.png',
                  height: 100,
                  width: 100,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Welcome to ChatGPT",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Log in with your OpenAI account to continue",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              ActionChip(
                backgroundColor: Color(0xFF10a37f),
                label: Text("Log in"),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChatScreen(),
                      ));
                },
              ),
              Material(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                // borderRadius: BorderRadius.circular(changebutton ? 20 : 7),
                // child: MaterialButton(onPressed: () {
                //   signIn(emailcontroller.text, passwordcontroller.text);
                // }),
                child: InkWell(
                  onTap: () {
                    // signIn(emailcontroller.text, passwordcontroller.text);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    // duration: const Duration(seconds: 1),
                    //button
                    // width: changebutton ? 60 : 110,
                    // height: 40,
                    alignment: Alignment.center,

                    child: const Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
