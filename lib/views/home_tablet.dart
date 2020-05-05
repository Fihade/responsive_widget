import 'package:flutter/material.dart';
import 'package:responsive_widget/widgets/app_drawer/app_drawer.dart';

class HomeTablet extends StatelessWidget {
  const HomeTablet({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var children = [
      Expanded(
        child: Container()
      ),
      AppDrawer(),
    ];
    var orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      body: orientation == Orientation.portrait ? 
      Column(
        children : children,
      ):Column(
        children : children,
      ),
    );
  }
}