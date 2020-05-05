import 'package:flutter/material.dart';
import 'package:responsive_widget/enums/device_screen_type.dart';

class SizingInformation {
  // final Orientation orientation;
  final DeviceScreenType deviceScreenType;
  final Size screenSize;
  final Size localWidgetSize;

  SizingInformation({
    // this.orientation,
    this.deviceScreenType,
    this.screenSize,
    this.localWidgetSize
  });

  @override
  String toString() {
    // TODO: implement toString
    return "DeviceScreenType: $deviceScreenType ScreenSize: $screenSize localWidgetSize: $localWidgetSize";
  }
}