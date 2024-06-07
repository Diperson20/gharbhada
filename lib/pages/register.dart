import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  colors: [
                    Colors.blue[900]!,
                    Colors.blue[800]!,
                    Colors.blue[400]!,
                  ],
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
