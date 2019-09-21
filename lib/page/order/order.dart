import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class OrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _logo() {
      return Icon(Icons.crop_square);
    }

    _navigatorbar() {
      return CupertinoNavigationBar(
          border:
              Border(bottom: BorderSide(width: 1, color: Colors.grey[300])),
          backgroundColor: Colors.white,
          leading: Container(
            alignment: Alignment.centerLeft,
            child: _logo(),
          ));
    }

    return CupertinoPageScaffold(
      navigationBar: _navigatorbar(),
      child: Center(
        child: Text('OrderPage'),
      ),
    );
  }
}
