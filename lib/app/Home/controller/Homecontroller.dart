import 'package:get/get.dart';

class HomeController extends GetxController {
  RxList<Selected> selectedList =
      List.generate(100, (index) => Selected(isSelected: false.obs)).obs;
  RxList<String> list = <String>[
    'Morning',
    'Evening',
  ].obs;
  RxString dropdown = "Morning".obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

class Selected {
  RxBool isSelected = false.obs;

  Selected({
    required this.isSelected,
  });

  Selected.fromJson(Map<String, dynamic> json) {
    isSelected.value = json['isselect'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['isselect'] = isSelected.value;
    return data;
  }
}
