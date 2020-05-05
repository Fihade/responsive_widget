import 'package:flutter/material.dart';
import 'package:responsive_widget/ui/orientation_layout.dart';
import 'package:responsive_widget/ui/screen_type_layout.dart';

import 'drawer_option_mobile.dart';
import 'drawer_option_tablet.dart';

class DrawerOption extends StatelessWidget {
  final String title;
  final IconData iconData;
  const DrawerOption({Key key, this.title, this.iconData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        landscape: DrawerOptionMobileLandscape(iconData: iconData,title: title,),
        portrait: DrawerOptionMobilePortrait(title: title, iconData: iconData,),
      ),
      tablet: DrawerOptionTablet(title: title, iconData: iconData,),
    );
  }
}