import 'package:flutter/material.dart';
import 'package:mandotory_project/login_source/sourcecode.dart';
import 'package:mandotory_project/screen/singin.dart';
import 'package:mandotory_project/screen/uphome.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SingInScreen()));
            },
            child: Icon(Icons.arrow_back),
          )
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(50, 50, 50, 50),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 300,
              ),
              sourcecodeTextField("Enter UserName", Icons.person_outline, false,
                  _emailTextController),
              SizedBox(
                height: 30,
              ),
              sourcecodeTextField("Enter Email ID", Icons.person_outline, false,
                  _emailTextController),
              SizedBox(
                height: 30,
              ),
              sourcecodeTextField("Enter Password", Icons.lock_outline, false,
                  _emailTextController),
              SizedBox(
                height: 20,
              ),
              signInSignUpButton(context, false, () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => UpHome()));
              }),
            ],
          ),
        ),
      ),
    );
  }
}
