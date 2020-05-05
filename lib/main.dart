import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_widget/views/home_view.dart';
import 'package:responsive_widget/views/home_view1.dart';

void main() => runApp(DevicePreview(builder: (context) => MyApp()));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeView1()
    );
  }
}
