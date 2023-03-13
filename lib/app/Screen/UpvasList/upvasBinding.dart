import 'package:flutterotp_firebase/app/Screen/UpvasList/upvasCantroller.dart';
import 'package:get/get.dart';


class UpavaslistBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UpavaslistController>(
          () => UpavaslistController(),
    );
  }
}
