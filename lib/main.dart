import 'package:demo_chat_app/screens/welcome/welcome_screen.dart';
import 'package:demo_chat_app/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      //Default theme
      themeMode: ThemeMode.light,
      home: WelcomeScreen(),
    );
  }
}
