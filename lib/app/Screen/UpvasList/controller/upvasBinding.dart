import 'package:flutterotp_firebase/app/Screen/UpvasList/controller/upvasCantroller.dart';
import 'package:get/get.dart';


class UpavaslistBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UpavaslistController>(
          () => UpavaslistController(),
    );
  }
}
