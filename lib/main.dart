import 'package:chatgpt_app/Utils/Routes.dart';
import 'package:chatgpt_app/providers/models_provider.dart';
import 'package:chatgpt_app/screens/SignupScreen.dart';
import 'package:chatgpt_app/screens/homePage.dart';
import 'package:chatgpt_app/screens/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'constants/const.dart';
import 'providers/chats_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ModelsProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ChatProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'ChatGPT',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            useMaterial3: true,
            scaffoldBackgroundColor: scaffoldBackgroundColor,
            appBarTheme: AppBarTheme(
              color: cardColor,
            )),
        home: const HomePage(),
        initialRoute: Routes.home,
        routes: {
          '/home': (context) => const HomePage(),
          'login': (context) => const LoginScreen(),
          '/signup': (context) => const SignupScreen(),
          // '/chat': (context) => ChatScreen(),
        },
      ),
    );
  }
}
