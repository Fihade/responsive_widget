import 'package:flutter/material.dart';
import 'package:responsive_widget/ui/sizing_information.dart';
import 'package:responsive_widget/utils/ui_utils.dart';

class ResponsiveBuilder extends StatelessWidget {
  final Widget Function(
      BuildContext context, SizingInformation sizingInformation) builder;
  const ResponsiveBuilder({Key key, this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuary = MediaQuery.of(context);
    return LayoutBuilder(
      builder: (context, boxConstraints) {
        var sizingInformation = new SizingInformation(
          // orientation: mediaQuary.orientation,
          deviceScreenType: getDeviceType(mediaQuary),
          screenSize: mediaQuary.size,
          localWidgetSize: Size(boxConstraints.maxWidth,boxConstraints.maxHeight),
        );
        return builder(context,sizingInformation);
      },
    );
  }
}
