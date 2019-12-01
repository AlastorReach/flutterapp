import 'package:flutter/material.dart';
import 'package:flutterapp/src/utils/custom_icons.dart';

class LoginWithSocials extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Flex(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      direction: Axis.horizontal,
      children: <Widget>[
        Column(
          children: <Widget>[
            Text('LOGIN WITH', style: TextStyle(color: Colors.white),),
            Text('FACEBOOK', style: TextStyle(color: Color(0xFF323949), fontWeight: FontWeight.bold),)
          ],
        ),
        Container(
          width: size.width / 2 -10,
          child:Container(
          child:Stack(
          fit: StackFit.loose,
          alignment: AlignmentDirectional.centerStart,
          children: <Widget>[
            Container(
              width: size.width / 4,
              height: size.width / 4,
              decoration: BoxDecoration(
                color: Color(0xFF121212),
                border: Border.all(width: 2.0, color: Color(0xFF4A3B3C)),
                borderRadius: BorderRadius.circular((size.width / 4) / 2),
              ),
              child: Icon(CustomIcons.facebook, color: Color(0xFF3D58AF),),
            ),
            Positioned(
              left: size.width / 4 -10,
              child:Container(
              width: size.width / 4,
              height: size.width / 4,
              decoration: BoxDecoration(
                color: Color(0xFF121212),
                border: Border.all(width: 2.0, color: Color(0xFF4A3B3C)),
                borderRadius: BorderRadius.circular((size.width / 4) / 2)
              ),
              child: Icon(CustomIcons.twitter, color: Color(0xFF01B8F1),),
            ))
          ],
        ))),
        Column(
          children: <Widget>[
            Text('LOGIN WITH', style: TextStyle(color: Colors.white),),
            Text('TWITTER', style: TextStyle(color: Color(0xFF323949), fontWeight: FontWeight.bold),)
          ],
        ),
      ],
    );
  }

}