import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:line_icons/line_icons.dart';
import '../../style/style.dart';

class ListVertical extends StatelessWidget {
  final index;
  ListVertical(this.index);
  @override
  Widget build(BuildContext context) {
    String img =
        'https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg-1024x683.jpg';

    _leftPoster() {
      return Expanded(
        flex: 0,
        child: Container(
          width: 50,
          child: Column(
            children: <Widget>[
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey[300]),
                  borderRadius: BorderRadius.circular(4),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(img)),
                ),
              )
            ],
          ),
        ),
      );
    }

    _namePoster() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                'Souksavanh',
                style: TextStyles.txtStyle(Colors.grey[900], null, 'main', 15),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5),
              ),
              Icon(LineIcons.circle,size: 5,),
              Text(
                'at vientiane, laos  ',
                style: TextStyles.txtStyle(Colors.grey[500], null, 'main', 12),
              ),
                //  Icon(Icons.pin_drop,size: 15,color: Colors.grey[500],),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 5),
          ),
          Text(
            'Posted 5:09pm',
            style: TextStyles.txtStyle(Colors.grey[500], null, 'main', 12),
          ),
        ],
      );
    }

    _rightPoster() {
      return Expanded(
        child: Container(
          margin: Space.spaceall(10, 0, 0, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[_namePoster()],
          ),
        ),
      );
    }

    return Container(
      height: 200,
      margin: Space.spaceall(10, 10, this.index == 0 ? 10 : 0, 10),
      width: MediaQuery.of(context).size.width,
      child: Flex(
        direction: Axis.horizontal,
        children: <Widget>[_leftPoster(), _rightPoster()],
      ),
    );
  }
}
