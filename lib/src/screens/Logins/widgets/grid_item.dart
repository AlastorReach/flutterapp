import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
final Widget screen;
final String title;

GridItem({
  @required this.screen,
  @required this.title
});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
            onTap: (){
              Navigator.of(context).push(PageRouteBuilder(
                      opaque: false,
                      pageBuilder: (BuildContext context, _, __) =>
                          screen));
            },
            child:Card(
            child: Center(
              child: Text(title),
            ),
          ));
  }

}