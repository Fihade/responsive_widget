// import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_widget/enums/device_screen_type.dart';

DeviceScreenType getDeviceType(MediaQueryData mediaQueryData) {
  double deviceWidth = mediaQueryData.size.shortestSide;

  if (deviceWidth > 950) {
    return DeviceScreenType.Desktop;
  }

  if (deviceWidth > 600) {
    return DeviceScreenType.Tablet;
  }

  return DeviceScreenType.Mobile;
}