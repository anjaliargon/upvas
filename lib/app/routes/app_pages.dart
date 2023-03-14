import 'package:flutterotp_firebase/app/Screen/AddUpvas/AddUpvasBinding.dart';
import 'package:flutterotp_firebase/app/Screen/Dashboard/DashboardScreen.dart';
import 'package:flutterotp_firebase/app/Screen/Dashboard/Dashboardbinding.dart';
import 'package:flutterotp_firebase/app/Screen/Home/homescreen.dart';
import 'package:flutterotp_firebase/app/Screen/UpvasList/upvasBinding.dart';
import 'package:get/get.dart';

import '../Screen/AddUpvas/AddUpvasScreen.dart';

import '../Screen/Home/controller/Homecontrollerbinding.dart';
import '../Screen/UpvasList/upvaslist.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.MAINHOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () =>  Homescreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.Dashboard,
      page: () =>  Dashboard(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.Upvaslist,
      page: () => const UpavaslistView(),
      binding: UpavaslistBinding(),
    ),
    GetPage(
      name: _Paths.Add_upvas,
      page: () => const AddUpvasView(),
      binding: AddUpvasBinding(),
    ),
  ];
}
