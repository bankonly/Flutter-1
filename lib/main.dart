import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './page/main.dart';

void main() {
  runApp(Yimwan());
}

class Yimwan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: CupertinoThemeData(barBackgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
