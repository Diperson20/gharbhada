import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gharbhada/pages/button_login.dart';
import 'package:gharbhada/pages/home_page.dart';
import 'package:gharbhada/pages/imagetile.dart';
import 'package:gharbhada/pages/register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        //width: double.infinity,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Login",
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Welcome Back",
                      style: TextStyle(color: Colors.white, fontSize: 20))
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              // Login below code
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60)),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          //container login and password info
                          padding: EdgeInsets.all(30),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color.fromARGB(255, 33, 40, 243)
                                      .withOpacity(0.5),
                                  blurRadius: 10,
                                  offset: Offset(0, 5),
                                )
                              ]),
                          child: Column(
                            //Input box
                            children: [
                              Container(
                                // Input for email
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                        color: const Color.fromARGB(
                                            255, 11, 10, 10)),
                                  ),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Email or Phone number',
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              Container(
                                // input for password
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                        color:
                                            Color.fromARGB(255, 100, 89, 89)),
                                  ),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Password',
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ), //this is a pass login container
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.04),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              child: Text(
                                "Forget Password?",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 62, 60, 185),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.04),

                        ButtonLogin(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()),
                            );
                          },
                        ),

                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.04),

                        Row(
                          children: [
                            Expanded(
                                child: Divider(
                              thickness: 0.5,
                              color: Colors.grey[400],
                            )),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Text("Sign in with"),
                            ),
                            Expanded(
                                child: Divider(
                              thickness: 0.5,
                              color: Colors.grey[400],
                            )),
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.width * 0.04),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SquareTile(
                                imagePath: 'assets/images/google.png',
                              ),
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.05),
                              SquareTile(
                                imagePath: 'assets/images/facebook.png',
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.width * 0.04),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account?"),
                            SizedBox(width: 5),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Register()),
                                );
                              },
                              child: Text(
                                "Register Now",
                                style: TextStyle(
                                  color: Colors.blue[400],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
