// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print
import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dice App',
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int diceNumber = 1;
  changeDice() {
    setState(() {
      diceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 172, 172, 172),
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text("Dice Roller"),
        centerTitle: true,
      ),
      body: Column(children: [
        SizedBox(
          height: 20,
        ),
        Center(
          child: Image.asset(
            "assets/$diceNumber.png",
            height: 250,
            width: 250,
          ),
        ),
        MaterialButton(
          onPressed: changeDice,
          color: Colors.deepPurpleAccent,
          child: Text(
            "Roll Now",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        SizedBox(
          height: 110,
        ),
        Text(
          "Powered By",
          style: TextStyle(color: Colors.red, fontSize: 20),
        ),
        Text(
          "Aone Skills",
          style: TextStyle(color: Colors.red, fontSize: 20),
        )
      ]),
    );
  }
}
