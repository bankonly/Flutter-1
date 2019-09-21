import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './home/home.dart';
import './favorite/favorite.dart';
import './chat/chat.dart';
import './info/info.dart';
import './order/order.dart';
import '../style/style.dart';

class HomePage extends StatelessWidget {
  final profileImg =
      'https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg-1024x683.jpg';

  @override
  Widget build(BuildContext context) {
    List page = [LandingPage(), FavoritePage(),OrderPage(),ChatPage(),InfoPage()];

    _bottomIcon(IconData icon, double size) {
      return BottomNavigationBarItem(
          icon: Icon(
        icon,
        size: size,
      ));
    }

    return CupertinoPageScaffold(
        child: CupertinoTabScaffold(
            tabBar: CupertinoTabBar(
              backgroundColor: Colors.white,
              border: Borders.borderTop(Colors.grey[200], 1),
              items: [
                _bottomIcon(Icons.dashboard, 22),
                _bottomIcon(Icons.favorite_border, 22),
                _bottomIcon(Icons.call, 22),
                _bottomIcon(Icons.chat_bubble_outline, 22),
                _bottomIcon(Icons.assignment_ind, 22),
              ],
            ),
            tabBuilder: (context, i) {
              return page[i];
            }));
  }
}
