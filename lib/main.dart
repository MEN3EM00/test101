import 'package:flutter/material.dart';
import 'package:toku_app/screens/home_page.dart';
void main() {
  runApp(const toku_app());
}

class toku_app extends StatelessWidget {
  const toku_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
