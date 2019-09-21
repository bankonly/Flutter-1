import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:line_icons/line_icons.dart';
import '../../style/style.dart';



class ListHorizontal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String img =
        'https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg-1024x683.jpg';
    _follow(int index) {
       Expanded(
                flex: 0,
                child: Container(
                    width: 80,
                    height: 25,
                    alignment: Alignment.center,
                    margin: Space.spaceall(index == 0 ? 10 : 0, 10, 7, 0),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey[300]),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      'Follow',
                      style:
                          TextStyles.txtStyle(Colors.grey[900], null,'main', 15),
                    )),
              );
    }

    _listPoppularres() {
      return Container(
        height: 110,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Flex(direction: Axis.vertical, children: [
              Expanded(
                child: Container(
                  margin: Space.spaceall(index == 0 ? 10 : 0, 10, 0, 0),
                  width: 80,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey[300]),
                        borderRadius: BorderRadius.circular(4),
                      image: DecorationImage(
                          fit: BoxFit.cover, image: NetworkImage(img)),
                      color: Colors.grey[100],
                    
                      ),
                ),
              ),
             _follow(index)
            ]);
          },
        ),
      );
    }

    return Container(
      decoration: BoxDecoration(
      color: Colors.grey[50],
border: Borders.borderBottom(Colors.grey[200], 1)
      ),
      padding: EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: Space.spaceall(10, 10, 10, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Restuarant you may know',
                  style: TextStyle(
                    fontFamily: 'main',
                      color: Colors.grey[800],
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  child: Icon(
                    LineIcons.angle_right,
                    size: 15,
                    color: Colors.blueAccent,
                  ),
                )
              ],
            ),
          ),
          _listPoppularres(),
        ],
      ),
    );
  }
}