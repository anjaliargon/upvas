<<<<<<< Updated upstream
import 'package:flutterotp_firebase/app/Screen/Home/controller/Homecontrollerbinding.dart';
import 'package:flutterotp_firebase/app/Screen/Home/homescreen.dart';
import 'package:get/get.dart';


=======
import 'package:get/get.dart';

import '../modules/main_home/bindings/main_home_binding.dart';
import '../modules/main_home/views/main_home_view.dart';
>>>>>>> Stashed changes

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
<<<<<<< Updated upstream
      name: _Paths.HOME,
      page: () =>  Homescreen(),
      binding: HomeBinding(),
=======
      name: _Paths.MAIN_HOME,
      page: () => const MainHomeView(),
      binding: MainHomeBinding(),
>>>>>>> Stashed changes
    ),
  ];
}
