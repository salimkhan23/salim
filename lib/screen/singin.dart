import 'package:flutter/material.dart';
import 'package:mandotory_project/image_screen/image.dart';
import 'package:mandotory_project/login_source/sourcecode.dart';
import 'package:mandotory_project/screen/home.dart';
import 'package:mandotory_project/screen/singup.dart';

class SingInScreen extends StatefulWidget {
  const SingInScreen({super.key});

  @override
  State<SingInScreen> createState() => _SingInScreenState();
}

class _SingInScreenState extends State<SingInScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 123, 212, 64),
      body: Container(
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(colors: []),
        // ),
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(50, 50, 50, 50),
          child: Column(
            children: <Widget>[
              logowidget('assets/images/logo.png'),
              SizedBox(
                height: 300,
              ),
              sourcecodeTextField("Enter UserName", Icons.person_outline, false,
                  _emailTextController),
              SizedBox(
                height: 30,
              ),
              sourcecodeTextField("Enter Password", Icons.lock_outline, false,
                  _emailTextController),
              SizedBox(
                height: 20,
              ),
              signInSignUpButton(context, true, () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              }),
              signUpOption()
            ],
          ),
        ),
      ),
    );
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't Have Account?",
            style: TextStyle(color: Color.fromARGB(255, 57, 21, 214))),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUpScreen()));
          },
          child: Text(
            ' Sign Up',
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
