import 'package:flutterotp_firebase/app/Screen/Home/controller/Homecontrollerbinding.dart';
import 'package:flutterotp_firebase/app/Screen/Home/homescreen.dart';
import 'package:get/get.dart';



part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () =>  Homescreen(),
      binding: HomeBinding(),
    ),
  ];
}
