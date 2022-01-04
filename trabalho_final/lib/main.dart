import 'package:flutter/material.dart';
import 'package:trabalho_final/routes/welcome_screen.dart';
import 'package:trabalho_final/utilities/constants.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Login',
      theme: ThemeData(
        primaryColor: corPrimaria, //cor primaria
        scaffoldBackgroundColor: Colors.black, //backgound
      ),
      home: WelcomeScreen(),
    );
  }
}
