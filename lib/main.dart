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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Image(
          image: AssetImage("images/dice1.png"),
        ),
      ],
    );
  }
}
