import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mandotory_project/screen/singin.dart';

class AppLogin extends StatefulWidget {
  const AppLogin({super.key});

  @override
  State<AppLogin> createState() => _AppLoginState();
}

class _AppLoginState extends State<AppLogin> {
  @override
  void initState() {
    super.initState();
    gotoPage();
  }

  gotoPage() {
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => SingInScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 3, 165, 247),
      body: Padding(
        padding: const EdgeInsets.only(top: 400.0, left: 100.0),
        child: Container(
          // decoration: BoxDecoration(
          //   image: DecorationImage(
          //     image: AssetImage("assets/image.jpg"),
          //   ),
          // ),
          child: Text(
            "Welcome To Back\nMy Home Page",
            style: TextStyle(
                fontSize: 30,
                height: 2,
                fontWeight: FontWeight.w700,
                color: const Color.fromARGB(255, 233, 230, 225)),
          ),
        ),
      ),
    );
  }
}
