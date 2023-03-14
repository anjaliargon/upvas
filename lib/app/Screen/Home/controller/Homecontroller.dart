import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:flutterotp_firebase/app/Constant/sizeConstant.dart';

import 'package:flutterotp_firebase/main.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

class HomeController extends GetxController {
  RxString selectedDate = "".obs;
  RxList<Selected> selectedList =
      List.generate(100, (index) => Selected(isSelected: false.obs)).obs;
  RxList<Selected> getDataList = RxList<Selected>([]);
  RxList<String> dropdownList = <String>[
    'Savar',
    'Sanj',
  ].obs;
  RxBool hasData = false.obs;
  RxString dropdown = "Savar".obs;

  @override
  void onInit() {
    selectedDate.value =
        DateFormat('dd/MM/yyyy').format(DateTime.now()).toString();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      data();
    });
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  data() async {
    hasData.value = false;
    if (!isNullEmptyOrFalse(box.read(selectedDate.value + dropdown.value))) {
      getDataList.value =
          ((jsonDecode(box.read(selectedDate.value + dropdown.value))
                      as List<dynamic>)
                  .toList())
              .map((e) => Selected.fromJson(e))
              .toList();
    }
    if (getDataList.length <= 0) {
      box.write(selectedDate.value + dropdown.value,
          jsonEncode(selectedList.map((e) => e.toJson()).toList()));
      selectedList.clear();
      selectedList.addAll(
          List.generate(100, (index) => Selected(isSelected: false.obs)));
    } else {
      selectedList.clear();
      selectedList.addAll(getDataList);
    }
    hasData.value = true;
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
