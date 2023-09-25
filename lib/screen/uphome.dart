import 'package:flutter/material.dart';
import 'package:mandotory_project/screen/singup.dart';

class UpHome extends StatefulWidget {
  const UpHome({super.key});

  @override
  State<UpHome> createState() => _UpHomeState();
}

class _UpHomeState extends State<UpHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('Back'),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUpScreen()));
          },
        ),
      ),
    );
  }
}
