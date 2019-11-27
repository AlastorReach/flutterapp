import 'package:flutter/material.dart';

class SocialLoginIcon extends StatelessWidget {
  final IconData socialIcon;
  final double width;
  final double height;
  final Color containerColor;
  final Color iconColor;
  final Function toDo;

  SocialLoginIcon(
      {@required this.socialIcon,
      @required this.width,
      @required this.height,
      @required this.containerColor,
      @required this.iconColor,
      @required this.toDo
      });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: containerColor
          ),
      width: 30,
      height: 30,
      child: Center(child:Icon(socialIcon, color: iconColor,)),
    ),
    onTap: () async {
      await toDo();
    },
    );
  }
}
