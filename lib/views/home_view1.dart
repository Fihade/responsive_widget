import 'package:flutter/material.dart';
import 'package:responsive_widget/ui/orientation_layout.dart';
import 'package:responsive_widget/ui/screen_type_layout.dart';
import 'package:responsive_widget/views/home_tablet.dart';

import 'home_mobile.dart';

class HomeView1 extends StatelessWidget {
  const HomeView1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        portrait: HomeMobilePortrait(),
        landscape: HomeMobileLandscape(),
      ),
      tablet: HomeTablet(),
    );
  }
}