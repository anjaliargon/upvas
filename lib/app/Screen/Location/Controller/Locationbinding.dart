import 'package:flutterotp_firebase/app/Screen/Location/Controller/LocationController.dart';
import 'package:get/get.dart';

class LocationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LocationController>(
          () => LocationController(),
    );
  }
}