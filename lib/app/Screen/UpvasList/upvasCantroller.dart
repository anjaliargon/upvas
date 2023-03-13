import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class Upvascantroller extends GetxController {
  RxString selectedDate = "".obs;
  RxList<Selectedupvaslist> selectedList =
      List.generate(100, (index) => Selectedupvaslist(isSelected: false.obs)).obs;
  RxList<String> dropdownList = <String>[
    'Savar',
    'Sanj',
  ].obs;
  RxBool hasData = false.obs;
  RxString dropdown = "Savar".obs;
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
  chooseDate({required BuildContext context}) async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1950),
        lastDate: DateTime(2100));
    if (pickedDate != null) {
      print(pickedDate);
      selectedDate.value = DateFormat('dd/MM/yyyy').format(pickedDate);
    } else {}
  }
}

class Selectedupvaslist {
  RxBool isSelected = false.obs;

  Selectedupvaslist({
    required this.isSelected,
  });

  Selectedupvaslist.fromJson(Map<String, dynamic> json) {
    isSelected.value = json['isselect'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['isselect'] = isSelected.value;
    return data;
  }

}
