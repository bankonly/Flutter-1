import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../../style/style.dart';

import './listhorizontal.dart';
import './listvertical.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _logo() {
      return Icon(Icons.history, size: 25, color: Colors.grey);
    }

    _trailing() {
      return GestureDetector(
        onTap: () {},
        child: Icon(
          Icons.search,
          color: Colors.grey,
          size: 25,
        ),
      );
    }

    _middle() {
      return Container(
        padding: Space.spaceall(20, 20, 4, 4),
        decoration: BoxDecoration(
            color: Colors.grey[100], borderRadius: BorderRadius.circular(4)),
        child: Container(
            child: Text(
          'Dashboard',
          style: TextStyles.txtStyle(Colors.grey[500], null, 'main', 17),
        )),
      );
    }

    _navigatorbar() {
      return CupertinoNavigationBar(
        border: Borders.borderBottom(Colors.grey[200], 1),
        backgroundColor: Colors.white,
        leading: Container(
          alignment: Alignment.centerLeft,
          child: _logo(),
        ),
        middle: _middle(),
        trailing: _trailing(),
      );
    }

    return CupertinoPageScaffold(
      navigationBar: _navigatorbar(),
      child: Center(
        child: ListView.builder(
          itemCount: 2 + 1,
          itemBuilder: (context, i) {
            return i == 0 ? ListHorizontal() : ListVertical(i-1);
          },
        ),
      ),
    );
  }
}


