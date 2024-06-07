import 'package:flutter/material.dart';

class ButtonLogin extends StatelessWidget {
  final Function()? onTap;
  const ButtonLogin({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          //login container
          height: MediaQuery.of(context).size.width * 0.15,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Color.fromARGB(255, 62, 60, 185),
          ),
          child: Center(
            child: Text(
              "Log In",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ));
  }
}
