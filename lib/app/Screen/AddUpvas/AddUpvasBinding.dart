import 'package:get/get.dart';

import 'AppUpvasController.dart';

class AddUpvasBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddUpvasController>(
      () => AddUpvasController(),
    );
  }
}
