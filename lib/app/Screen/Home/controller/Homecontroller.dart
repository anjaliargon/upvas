import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:flutterotp_firebase/app/Constant/sizeConstant.dart';

import 'package:flutterotp_firebase/main.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

class HomeController extends GetxController {
  RxString selectedDate = "".obs;

  // RxList<Selected> selectedList =
  //     List.generate(100, (index) => Selected(isSelected: false.obs)).obs;

  RxList<Selected> selectedList = RxList<Selected>([
    Selected(isSelected: false.obs, name: "1".obs),
    Selected(isSelected: false.obs, name: "2".obs),
    Selected(isSelected: false.obs, name: "3".obs),
    Selected(isSelected: false.obs, name: "4".obs),
    Selected(isSelected: false.obs, name: "5".obs),
    Selected(isSelected: false.obs, name: "6".obs),
    Selected(isSelected: false.obs, name: "7".obs),
    Selected(isSelected: false.obs, name: "8".obs),
    Selected(isSelected: false.obs, name: "9".obs),
    Selected(isSelected: false.obs, name: "10".obs),
    Selected(isSelected: false.obs, name: "11".obs),
    Selected(isSelected: false.obs, name: "12".obs),
    Selected(isSelected: false.obs, name: "13".obs),
    Selected(isSelected: false.obs, name: "14".obs),
    Selected(isSelected: false.obs, name: "15".obs),
    Selected(isSelected: false.obs, name: "16".obs),
    Selected(isSelected: false.obs, name: "17".obs),
    Selected(isSelected: false.obs, name: "18".obs),
    Selected(isSelected: false.obs, name: "19".obs),
    Selected(isSelected: false.obs, name: "20".obs),
    Selected(isSelected: false.obs, name: "21".obs),
    Selected(isSelected: false.obs, name: "22".obs),
    Selected(isSelected: false.obs, name: "23".obs),
    Selected(isSelected: false.obs, name: "24".obs),
    Selected(isSelected: false.obs, name: "25".obs),
    Selected(isSelected: false.obs, name: "26".obs),
    Selected(isSelected: false.obs, name: "27".obs),
    Selected(isSelected: false.obs, name: "28".obs),
    Selected(isSelected: false.obs, name: "29".obs),
    Selected(isSelected: false.obs, name: "30".obs),
    Selected(isSelected: false.obs, name: "31".obs),
    Selected(isSelected: false.obs, name: "32".obs),
    Selected(isSelected: false.obs, name: "33".obs),
    Selected(isSelected: false.obs, name: "34".obs),
    Selected(isSelected: false.obs, name: "35".obs),
    Selected(isSelected: false.obs, name: "36".obs),
    Selected(isSelected: false.obs, name: "37".obs),
    Selected(isSelected: false.obs, name: "38".obs),
    Selected(isSelected: false.obs, name: "39".obs),
    Selected(isSelected: false.obs, name: "40".obs),
    Selected(isSelected: false.obs, name: "41".obs),
    Selected(isSelected: false.obs, name: "42".obs),
    Selected(isSelected: false.obs, name: "43".obs),
    Selected(isSelected: false.obs, name: "44".obs),
    Selected(isSelected: false.obs, name: "45".obs),
    Selected(isSelected: false.obs, name: "46".obs),
    Selected(isSelected: false.obs, name: "47".obs),
    Selected(isSelected: false.obs, name: "48".obs),
    Selected(isSelected: false.obs, name: "49".obs),
    Selected(isSelected: false.obs, name: "50".obs),
    Selected(isSelected: false.obs, name: "51".obs),
    Selected(isSelected: false.obs, name: "52".obs),
    Selected(isSelected: false.obs, name: "53".obs),
    Selected(isSelected: false.obs, name: "54".obs),
    Selected(isSelected: false.obs, name: "55".obs),
    Selected(isSelected: false.obs, name: "56".obs),
    Selected(isSelected: false.obs, name: "57".obs),
    Selected(isSelected: false.obs, name: "58".obs),
    Selected(isSelected: false.obs, name: "59".obs),
    Selected(isSelected: false.obs, name: "61".obs),
    Selected(isSelected: false.obs, name: "62".obs),
    Selected(isSelected: false.obs, name: "63".obs),
    Selected(isSelected: false.obs, name: "64".obs),
    Selected(isSelected: false.obs, name: "65".obs),
    Selected(isSelected: false.obs, name: "P1".obs),
    Selected(isSelected: false.obs, name: "P2".obs),
    Selected(isSelected: false.obs, name: "P3".obs),
    Selected(isSelected: false.obs, name: "P4".obs),
    Selected(isSelected: false.obs, name: "P5".obs),
    Selected(isSelected: false.obs, name: "P6".obs),
    Selected(isSelected: false.obs, name: "P7".obs),
    Selected(isSelected: false.obs, name: "P8".obs),
    Selected(isSelected: false.obs, name: "P9".obs),
    Selected(isSelected: false.obs, name: "P10".obs),
    Selected(isSelected: false.obs, name: "S1".obs),
    Selected(isSelected: false.obs, name: "S2".obs),
    Selected(isSelected: false.obs, name: "S3".obs),
    Selected(isSelected: false.obs, name: "S4".obs),
    Selected(isSelected: false.obs, name: "S5".obs),
    Selected(isSelected: false.obs, name: "S6".obs),
    Selected(isSelected: false.obs, name: "S7".obs),
    Selected(isSelected: false.obs, name: "S8".obs),
    Selected(isSelected: false.obs, name: "S9".obs),
    Selected(isSelected: false.obs, name: "S10".obs),
    Selected(isSelected: false.obs, name: "S11".obs),
    Selected(isSelected: false.obs, name: "S12".obs),
    Selected(isSelected: false.obs, name: "S13".obs),
    Selected(isSelected: false.obs, name: "S14".obs),
    Selected(isSelected: false.obs, name: "S15".obs),
    Selected(isSelected: false.obs, name: "S16".obs),
    Selected(isSelected: false.obs, name: "S17".obs),
    Selected(isSelected: false.obs, name: "M18".obs),
    Selected(isSelected: false.obs, name: "M19".obs),
    Selected(isSelected: false.obs, name: "M20".obs),
    Selected(isSelected: false.obs, name: "M21".obs),
    Selected(isSelected: false.obs, name: "M22".obs),
    Selected(isSelected: false.obs, name: "SE1".obs),
    Selected(isSelected: false.obs, name: "SE2".obs),
    Selected(isSelected: false.obs, name: "SE3".obs),
    Selected(isSelected: false.obs, name: "SE4".obs),
    Selected(isSelected: false.obs, name: "SE5".obs),
    Selected(isSelected: false.obs, name: "SE6".obs),
    Selected(isSelected: false.obs, name: "SE7".obs),
    Selected(isSelected: false.obs, name: "SE8".obs),
  ]);
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
    getDataList.clear();
    if (!isNullEmptyOrFalse(box.read(selectedDate.value + dropdown.value))) {
      getDataList.value =
          ((jsonDecode(box.read(selectedDate.value + dropdown.value))
                      as List<dynamic>)
                  .toList())
              .map((e) => Selected.fromJson(e))
              .toList();
    }
    if (getDataList.isEmpty) {
      box.write(selectedDate.value + dropdown.value, jsonEncode(selectedList.map((e) => e.toJson()).toList()));
      selectedList.clear();
      selectedList.addAll(RxList<Selected>([
        Selected(isSelected: false.obs, name: "1".obs),
        Selected(isSelected: false.obs, name: "2".obs),
        Selected(isSelected: false.obs, name: "3".obs),
        Selected(isSelected: false.obs, name: "4".obs),
        Selected(isSelected: false.obs, name: "5".obs),
        Selected(isSelected: false.obs, name: "6".obs),
        Selected(isSelected: false.obs, name: "7".obs),
        Selected(isSelected: false.obs, name: "8".obs),
        Selected(isSelected: false.obs, name: "9".obs),
        Selected(isSelected: false.obs, name: "10".obs),
        Selected(isSelected: false.obs, name: "11".obs),
        Selected(isSelected: false.obs, name: "12".obs),
        Selected(isSelected: false.obs, name: "13".obs),
        Selected(isSelected: false.obs, name: "14".obs),
        Selected(isSelected: false.obs, name: "15".obs),
        Selected(isSelected: false.obs, name: "16".obs),
        Selected(isSelected: false.obs, name: "17".obs),
        Selected(isSelected: false.obs, name: "18".obs),
        Selected(isSelected: false.obs, name: "19".obs),
        Selected(isSelected: false.obs, name: "20".obs),
        Selected(isSelected: false.obs, name: "21".obs),
        Selected(isSelected: false.obs, name: "22".obs),
        Selected(isSelected: false.obs, name: "23".obs),
        Selected(isSelected: false.obs, name: "24".obs),
        Selected(isSelected: false.obs, name: "25".obs),
        Selected(isSelected: false.obs, name: "26".obs),
        Selected(isSelected: false.obs, name: "27".obs),
        Selected(isSelected: false.obs, name: "28".obs),
        Selected(isSelected: false.obs, name: "29".obs),
        Selected(isSelected: false.obs, name: "30".obs),
        Selected(isSelected: false.obs, name: "31".obs),
        Selected(isSelected: false.obs, name: "32".obs),
        Selected(isSelected: false.obs, name: "33".obs),
        Selected(isSelected: false.obs, name: "34".obs),
        Selected(isSelected: false.obs, name: "35".obs),
        Selected(isSelected: false.obs, name: "36".obs),
        Selected(isSelected: false.obs, name: "37".obs),
        Selected(isSelected: false.obs, name: "38".obs),
        Selected(isSelected: false.obs, name: "39".obs),
        Selected(isSelected: false.obs, name: "40".obs),
        Selected(isSelected: false.obs, name: "41".obs),
        Selected(isSelected: false.obs, name: "42".obs),
        Selected(isSelected: false.obs, name: "43".obs),
        Selected(isSelected: false.obs, name: "44".obs),
        Selected(isSelected: false.obs, name: "45".obs),
        Selected(isSelected: false.obs, name: "46".obs),
        Selected(isSelected: false.obs, name: "47".obs),
        Selected(isSelected: false.obs, name: "48".obs),
        Selected(isSelected: false.obs, name: "49".obs),
        Selected(isSelected: false.obs, name: "50".obs),
        Selected(isSelected: false.obs, name: "51".obs),
        Selected(isSelected: false.obs, name: "52".obs),
        Selected(isSelected: false.obs, name: "53".obs),
        Selected(isSelected: false.obs, name: "54".obs),
        Selected(isSelected: false.obs, name: "55".obs),
        Selected(isSelected: false.obs, name: "56".obs),
        Selected(isSelected: false.obs, name: "57".obs),
        Selected(isSelected: false.obs, name: "58".obs),
        Selected(isSelected: false.obs, name: "59".obs),
        Selected(isSelected: false.obs, name: "61".obs),
        Selected(isSelected: false.obs, name: "62".obs),
        Selected(isSelected: false.obs, name: "63".obs),
        Selected(isSelected: false.obs, name: "64".obs),
        Selected(isSelected: false.obs, name: "65".obs),
        Selected(isSelected: false.obs, name: "P1".obs),
        Selected(isSelected: false.obs, name: "P2".obs),
        Selected(isSelected: false.obs, name: "P3".obs),
        Selected(isSelected: false.obs, name: "P4".obs),
        Selected(isSelected: false.obs, name: "P5".obs),
        Selected(isSelected: false.obs, name: "P6".obs),
        Selected(isSelected: false.obs, name: "P7".obs),
        Selected(isSelected: false.obs, name: "P8".obs),
        Selected(isSelected: false.obs, name: "P9".obs),
        Selected(isSelected: false.obs, name: "P10".obs),
        Selected(isSelected: false.obs, name: "S1".obs),
        Selected(isSelected: false.obs, name: "S2".obs),
        Selected(isSelected: false.obs, name: "S3".obs),
        Selected(isSelected: false.obs, name: "S4".obs),
        Selected(isSelected: false.obs, name: "S5".obs),
        Selected(isSelected: false.obs, name: "S6".obs),
        Selected(isSelected: false.obs, name: "S7".obs),
        Selected(isSelected: false.obs, name: "S8".obs),
        Selected(isSelected: false.obs, name: "S9".obs),
        Selected(isSelected: false.obs, name: "S10".obs),
        Selected(isSelected: false.obs, name: "S11".obs),
        Selected(isSelected: false.obs, name: "S12".obs),
        Selected(isSelected: false.obs, name: "S13".obs),
        Selected(isSelected: false.obs, name: "S14".obs),
        Selected(isSelected: false.obs, name: "S15".obs),
        Selected(isSelected: false.obs, name: "S16".obs),
        Selected(isSelected: false.obs, name: "S17".obs),
        Selected(isSelected: false.obs, name: "M18".obs),
        Selected(isSelected: false.obs, name: "M19".obs),
        Selected(isSelected: false.obs, name: "M20".obs),
        Selected(isSelected: false.obs, name: "M21".obs),
        Selected(isSelected: false.obs, name: "M22".obs),
        Selected(isSelected: false.obs, name: "SE1".obs),
        Selected(isSelected: false.obs, name: "SE2".obs),
        Selected(isSelected: false.obs, name: "SE3".obs),
        Selected(isSelected: false.obs, name: "SE4".obs),
        Selected(isSelected: false.obs, name: "SE5".obs),
        Selected(isSelected: false.obs, name: "SE6".obs),
        Selected(isSelected: false.obs, name: "SE7".obs),
        Selected(isSelected: false.obs, name: "SE8".obs),
      ]));
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
}

class Selected {
  RxString name = "".obs;
  RxBool isSelected = false.obs;

  Selected({
    required this.name,
    required this.isSelected,
  });

  Selected.fromJson(Map<String, dynamic> json) {
    isSelected.value = json['isselect'];
    name.value = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['isselect'] = isSelected.value;
    data['name'] = name.value;
    return data;
  }
}
