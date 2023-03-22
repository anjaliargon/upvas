import 'package:flutterotp_firebase/app/Screen/Setting/Controller/SettingController.dart';
import 'package:get/get.dart';

class LocationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SettingController>(
          () => SettingController(),
    );
  }
}