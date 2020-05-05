import 'package:flutter/material.dart';

class DrawerOptionTablet extends StatelessWidget {

  final String title;
  final IconData iconData;
  const DrawerOptionTablet({Key key, this.title, this.iconData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    return orientation == Orientation.portrait ? 
      Container(
        width: 152,
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(iconData,size:45),
            Text(title,style: TextStyle(fontSize:20))
          ]
        ),
      ):
      Container(
        width: 152,
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(iconData,size:45),
            Text(title,style: TextStyle(fontSize:20))
          ]
        ),
      );
  }
}