import 'package:flutter/material.dart';

import 'app_drawer.dart';

class AppDrawerMobile extends StatelessWidget {
  const AppDrawerMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    return Container(
      padding: EdgeInsets.only(top: orientation == Orientation.portrait ? 100 : 60),
      width: orientation == Orientation.portrait ? 200 : 250 ,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 16,
            color: Colors.black12,
          )
        ]
      ),
      child: Column(
        children: AppDrawer.getDrawerOptions(),
      ),
    );
  }
}