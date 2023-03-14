import 'package:flutter/material.dart';
import 'package:flutterotp_firebase/app/Screen/Dashboard/DashboardScreen.dart';
import 'package:flutterotp_firebase/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sizer/sizer.dart';

GetStorage box = GetStorage();
void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
        theme: ThemeData(fontFamily: 'JosefinSans'),
        debugShowCheckedModeBanner: false,
        home: Dashboard(),
      );
    });
  }
}
