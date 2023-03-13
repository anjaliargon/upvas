import 'package:flutter/material.dart';
import 'package:flutterotp_firebase/app/Screen/Dashboard/DashboardScreen.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        theme: ThemeData(fontFamily: 'JosefinSans'),
        debugShowCheckedModeBanner: false,
        home: Dashboard(),
      );
    });
  }
}
