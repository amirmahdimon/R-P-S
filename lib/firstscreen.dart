import 'dart:math';

import 'package:flutter/material.dart';

class gameApplication extends StatefulWidget {
  const gameApplication({super.key});

  @override
  State<gameApplication> createState() => _gameApplicationState();
}

class _gameApplicationState extends State<gameApplication> {
  int top = 2;
  int bottom = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 4, 7, 56),
        elevation: 2,
        shadowColor: Colors.white,
        centerTitle: true,
        title: Text('Rock Paper Scissors'),
      ),
      backgroundColor: Color(0xFF060A47),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 34, horizontal: 20),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('images/$top.png'),
                ),
                ElevatedButton(
                  style: TextButton.styleFrom(
                    primary: Color(0xFF060A47),
                    backgroundColor: Colors.white,
                  ),
                  onPressed: () {
                    setState(
                      () {
                        top = Random().nextInt(3) + 1;
                        bottom = Random().nextInt(3) + 1;
                      },
                    );
                  },
                  child: Text(
                    'Start game',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Image(
                  image: AssetImage('images/$bottom.png'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
