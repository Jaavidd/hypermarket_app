import 'package:flutter/material.dart';
import 'package:lokbatan_market/screens/MainMenu.dart';
import 'package:lokbatan_market/widgets/MenuButton.dart';

void main() {

  runApp(Home());
}


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainMenu()
    );
  }
}
