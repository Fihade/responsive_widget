import 'package:flutter/material.dart';
import 'package:responsive_widget/ui/responsive_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context,sizingInformation){
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,  
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 150,
                  color: Colors.blue,
                  child: ResponsiveBuilder(
                    builder: (context,sizeInfo) => Text(sizeInfo.toString())
                  ),
                ),

                FlatButton(
                  onPressed: null,
                  child: ResponsiveBuilder(
                    builder: (context,sizeInfo) {
                      debugPrint(sizeInfo.toString());
                      return Icon(Icons.add);
                    }
                  ),
                ),
                Text(
                  "${sizingInformation.toString()}",
                ),
              ],
            )
          ),
        );
      },
    );
  }
}