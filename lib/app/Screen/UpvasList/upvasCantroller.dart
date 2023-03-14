import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutterotp_firebase/app/Screen/Home/controller/Homecontroller.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../../main.dart';
import '../../Constant/sizeConstant.dart';

class UpavaslistController extends GetxController {
  RxString selectedDate = "".obs;
  RxList<String> dropdown = <String>[
    'Savar',
    'Sanj',
  ].obs;
  RxString dropdownValue = "Savar".obs;
  RxList<Selected> getDataList = RxList<Selected>([]);
  RxList dataList = RxList([]);
  RxBool hasData = false.obs;
  @override
  void onInit() {
    selectedDate.value =
        DateFormat('dd/MM/yyyy').format(DateTime.now()).toString();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      data();
    });
    super.onInit();
  }

  data() async {
    hasData.value = false;
    if (!isNullEmptyOrFalse(
        box.read(selectedDate.value + dropdownValue.value))) {
      getDataList.value =
          ((jsonDecode(box.read(selectedDate.value + dropdownValue.value))
          as List<dynamic>)
              .toList())
              .map((e) => Selected.fromJson(e))
              .toList();
    }
    hasData.value = true;
    dataList.clear();
    if (!isNullEmptyOrFalse(getDataList)) {
      for (int i = 0; i < getDataList.length; i++) {
        if (getDataList[i].isSelected.isTrue) {
          dataList.add(getDataList[i].name);
        }
      }
    }
  }

  datePick({required BuildContext context}) async {
    DateTime? pickedDate = await showDatePicker(
        builder: (context, child) {
          return Theme(
            data: Theme.of(context).copyWith(
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                  // foregroundColor: appTheme.textGrayColor, // button text color
                ),
              ),
            ),
            child: child!,
          );
        },
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1950),
        lastDate: DateTime(2100));
    if (pickedDate != null) {
      print(pickedDate);
      selectedDate.value = DateFormat('dd/MM/yyyy').format(pickedDate);
      data();
    } else {}
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