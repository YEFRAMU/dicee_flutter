// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(DicePage()); // Directly passing the widget
// }
//
// class DicePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Colors.red,
//         appBar: AppBar(
//           title: Text("Dicee"),
//           centerTitle: true,
//           backgroundColor: Colors.red,
//           foregroundColor: Colors.white,
//           shadowColor: Colors.black,
//           elevation: 10,
//         ),
//         body: Center(
//           child: Text(
//             "Dice Game UI Here!",
//             style: TextStyle(fontSize: 24, color: Colors.white),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text("Dicee"),
          centerTitle: true,
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          shadowColor: Colors.black,
          elevation: 10,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 2;

  void randomDiceNumber(){
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  randomDiceNumber();
                },
                style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                child: Image.asset("images/dice$leftDiceNumber.png"),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  randomDiceNumber();
                },
                style: TextButton.styleFrom(padding: EdgeInsets.zero),
                child: Image.asset("images/dice$rightDiceNumber.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
