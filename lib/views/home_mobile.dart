import 'package:flutter/material.dart';
import 'package:responsive_widget/widgets/app_drawer/app_drawer.dart';

class HomeMobilePortrait extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  HomeMobilePortrait({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: AppDrawer(),
      body: Column(
        // mainAxisAlignment: ,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16),
            child: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  _scaffoldKey.currentState.openDrawer();
                  print("open drawer");
                }),
          ),
          Text("Home Mobile Portrait")
        ],
      ),
    );
  }
}

class HomeMobileLandscape extends StatelessWidget {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  HomeMobileLandscape({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: AppDrawer(),
      body: Row(children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16),
          child: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                _scaffoldKey.currentState.openDrawer();
                print("open drawer");
              }),
        ),
        Text("Home Mobil Landscape")
      ]),
    );
  }
}
