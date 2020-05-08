import 'package:ddd_notes/presentation/sign_in/sign_in_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
          primaryColor: Colors.green.shade800,
          accentColor: Colors.greenAccent,
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          )),
      home: SignInPage(),
    );
  }
}
