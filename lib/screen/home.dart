import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _MainNavState();
}

class _MainNavState extends State<HomeScreen> {
  int selecIndex = 0;
  List<Widget> bodyList = [
    Center(
      child: Text("Flutter Developers"),
    ),
    Center(
      child: Text("Application Setting"),
    ),
    Center(
      child: Text("Movie Discovery"),
    ),
    Center(
      child: Text("Music Option"),
    ),
  ];

  changeIndex(int index) {
    setState(() {
      selecIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 101, 198, 211),
      appBar: AppBar(
          title: Text("Univers IT"),
          backgroundColor: Colors.green,
          centerTitle: true,
          actions: [
            GestureDetector(
              onTap: () {},
              child: Icon(Icons.arrow_back),
            )
          ]),
      body: bodyList[selecIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          changeIndex(0);
        },
        child: Icon(Icons.menu),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          ),
          child: BottomAppBar(
              shape: CircularNotchedRectangle(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: () {
                        changeIndex(1);
                      },
                      icon: Icon(Icons.home)),
                  IconButton(
                      onPressed: () {
                        changeIndex(2);
                      },
                      icon: Icon(Icons.card_giftcard)),
                  IconButton(
                      onPressed: () {
                        changeIndex(3);
                      },
                      icon: Icon(Icons.movie_rounded)),
                  IconButton(
                      onPressed: () {
                        changeIndex(4);
                      },
                      icon: Icon(Icons.music_note_rounded)),
                ],
              )),
        ),
      ),
    );
  }
}
