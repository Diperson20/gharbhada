import 'package:flutter/material.dart';
//import 'package:gharbhada/pages/home_page.dart';
import 'package:gharbhada/pages/login.dart';
import 'package:gharbhada/pages/register.dart';
import 'package:gharbhada/pages/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove Debug
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const Splashscreen(),
      routes: {
        '/Login': (context) => Login(),
        '/Register': (context) => Register(),
      },
    );
  }
}
