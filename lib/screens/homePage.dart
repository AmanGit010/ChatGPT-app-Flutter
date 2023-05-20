import 'package:chatgpt_app/const.dart';
import 'package:chatgpt_app/screens/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:chatgpt_app/Utils/Routes.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                    fontWeight: FontWeight.w700,
                    fontSize: 18),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Log in with your OpenAI account to continue",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 18),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ));
                    },
                    style: ElevatedButton.styleFrom(backgroundColor: green),
                    child: const Text("Login"),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(backgroundColor: green),
                    child: const Text("Sign up"),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
