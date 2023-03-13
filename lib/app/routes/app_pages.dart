import 'package:flutterotp_firebase/app/Screen/Add_Upvas/bindings/add_upvas_binding.dart';
import 'package:flutterotp_firebase/app/Screen/Dashboard/DashboardScreen.dart';
import 'package:flutterotp_firebase/app/Screen/Dashboard/Dashboardbinding.dart';
import 'package:flutterotp_firebase/app/Screen/Home/homescreen.dart';
import 'package:flutterotp_firebase/app/Screen/UpvasList/upvasBinding.dart';
import 'package:get/get.dart';

import '../Screen/Add_Upvas/views/add_upvas_view.dart';
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
      name: _Paths.MAINHOME,
      page: () =>  Dashboard(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.UPAVASLIST,
      page: () => const UpavaslistView(),
      binding: UpavaslistBinding(),
    ),
    GetPage(
      name: _Paths.ADD_UPVAS,
      page: () => const AddUpvasView(),
      binding: AddUpvasBinding(),
    ),
  ];
}
