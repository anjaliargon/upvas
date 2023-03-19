import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutterotp_firebase/app/Constant/app_constant.dart';

import 'package:flutterotp_firebase/app/Constant/sizeConstant.dart';

import 'package:flutterotp_firebase/main.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class HomeController extends GetxController {
  RxString selectedDate = "".obs;
  RxList<Selected> selectedList = RxList<Selected>([
    Selected(status: 0.obs, name: "1".obs),
    Selected(status: 0.obs, name: "2".obs),
    Selected(status: 0.obs, name: "3".obs),
    Selected(status: 0.obs, name: "4".obs),
    Selected(status: 0.obs, name: "5".obs),
    Selected(status: 0.obs, name: "6".obs),
    Selected(status: 0.obs, name: "7".obs),
    Selected(status: 0.obs, name: "8".obs),
    Selected(status: 0.obs, name: "9".obs),
    Selected(status: 0.obs, name: "10".obs),
    Selected(status: 0.obs, name: "11".obs),
    Selected(status: 0.obs, name: "12".obs),
    Selected(status: 0.obs, name: "13".obs),
    Selected(status: 0.obs, name: "14".obs),
    Selected(status: 0.obs, name: "15".obs),
    Selected(status: 0.obs, name: "16".obs),
    Selected(status: 0.obs, name: "17".obs),
    Selected(status: 0.obs, name: "18".obs),
    Selected(status: 0.obs, name: "19".obs),
    Selected(status: 0.obs, name: "20".obs),
    Selected(status: 0.obs, name: "21".obs),
    Selected(status: 0.obs, name: "22".obs),
    Selected(status: 0.obs, name: "23".obs),
    Selected(status: 0.obs, name: "24".obs),
    Selected(status: 0.obs, name: "25".obs),
    Selected(status: 0.obs, name: "26".obs),
    Selected(status: 0.obs, name: "27".obs),
    Selected(status: 0.obs, name: "28".obs),
    Selected(status: 0.obs, name: "29".obs),
    Selected(status: 0.obs, name: "30".obs),
    Selected(status: 0.obs, name: "31".obs),
    Selected(status: 0.obs, name: "32".obs),
    Selected(status: 0.obs, name: "33".obs),
    Selected(status: 0.obs, name: "34".obs),
    Selected(status: 0.obs, name: "35".obs),
    Selected(status: 0.obs, name: "36".obs),
    Selected(status: 0.obs, name: "37".obs),
    Selected(status: 0.obs, name: "38".obs),
    Selected(status: 0.obs, name: "39".obs),
    Selected(status: 0.obs, name: "40".obs),
    Selected(status: 0.obs, name: "41".obs),
    Selected(status: 0.obs, name: "42".obs),
    Selected(status: 0.obs, name: "43".obs),
    Selected(status: 0.obs, name: "44".obs),
    Selected(status: 0.obs, name: "45".obs),
    Selected(status: 0.obs, name: "46".obs),
    Selected(status: 0.obs, name: "47".obs),
    Selected(status: 0.obs, name: "48".obs),
    Selected(status: 0.obs, name: "49".obs),
    Selected(status: 0.obs, name: "50".obs),
    Selected(status: 0.obs, name: "51".obs),
    Selected(status: 0.obs, name: "52".obs),
    Selected(status: 0.obs, name: "53".obs),
    Selected(status: 0.obs, name: "54".obs),
    Selected(status: 0.obs, name: "55".obs),
    Selected(status: 0.obs, name: "56".obs),
    Selected(status: 0.obs, name: "57".obs),
    Selected(status: 0.obs, name: "58".obs),
    Selected(status: 0.obs, name: "59".obs),
    Selected(status: 0.obs, name: "60".obs),
    Selected(status: 0.obs, name: "61".obs),
    Selected(status: 0.obs, name: "62".obs),
    Selected(status: 0.obs, name: "63".obs),
    Selected(status: 0.obs, name: "64".obs),
    Selected(status: 0.obs, name: "65".obs),
    Selected(status: 0.obs, name: "P1".obs),
    Selected(status: 0.obs, name: "P2".obs),
    Selected(status: 0.obs, name: "P3".obs),
    Selected(status: 0.obs, name: "P4".obs),
    Selected(status: 0.obs, name: "P5".obs),
    Selected(status: 0.obs, name: "P6".obs),
    Selected(status: 0.obs, name: "P7".obs),
    Selected(status: 0.obs, name: "P8".obs),
    Selected(status: 0.obs, name: "P9".obs),
    Selected(status: 0.obs, name: "P10".obs),
    Selected(status: 0.obs, name: "S1".obs),
    Selected(status: 0.obs, name: "S2".obs),
    Selected(status: 0.obs, name: "S3".obs),
    Selected(status: 0.obs, name: "S4".obs),
    Selected(status: 0.obs, name: "S5".obs),
    Selected(status: 0.obs, name: "S6".obs),
    Selected(status: 0.obs, name: "S7".obs),
    Selected(status: 0.obs, name: "S8".obs),
    Selected(status: 0.obs, name: "S9".obs),
    Selected(status: 0.obs, name: "S10".obs),
    Selected(status: 0.obs, name: "S11".obs),
    Selected(status: 0.obs, name: "S12".obs),
    Selected(status: 0.obs, name: "S13".obs),
    Selected(status: 0.obs, name: "S14".obs),
    Selected(status: 0.obs, name: "S15".obs),
    Selected(status: 0.obs, name: "S16".obs),
    Selected(status: 0.obs, name: "S17".obs),
    Selected(status: 0.obs, name: "M18".obs),
    Selected(status: 0.obs, name: "M19".obs),
    Selected(status: 0.obs, name: "M20".obs),
    Selected(status: 0.obs, name: "M21".obs),
    Selected(status: 0.obs, name: "M22".obs),
    Selected(status: 0.obs, name: "SE1".obs),
    Selected(status: 0.obs, name: "SE2".obs),
    Selected(status: 0.obs, name: "SE3".obs),
    Selected(status: 0.obs, name: "SE4".obs),
    Selected(status: 0.obs, name: "SE5".obs),
    Selected(status: 0.obs, name: "SE6".obs),
    Selected(status: 0.obs, name: "SE7".obs),
    Selected(status: 0.obs, name: "SE8".obs),
  ]);
  RxList<Selected> getDataList = RxList<Selected>([]);
  RxList<String> dropdownList = <String>[
    timeConstant.savar,
    timeConstant.Sanj,
  ].obs;
  RxInt hasData = 0.obs;
  RxString dropdown = timeConstant.savar.obs;

  // toggleStatus(int index) {
  //   final currentStatus = selectedList[index].status;
  //   status newStatus;
  //
  //   switch (currentStatus) {
  //     case status.OFF:
  //       newStatus = status.ON;
  //       break;
  //     case status.ON:
  //       newStatus = status.DISABLED;
  //       break;
  //     case status.DISABLED:
  //       newStatus = status.OFF;
  //       break;
  //   }
  //
  //   selectedList[index].status = newStatus;
  // }
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
    hasData.value = 0;
    getDataList.clear();
    if (!isNullEmptyOrFalse(box.read(selectedDate.value + dropdown.value))) {
      getDataList.value =
          ((jsonDecode(box.read(selectedDate.value + dropdown.value))
                      as List<dynamic>)
                  .toList())
              .map((e) => Selected.fromJson(e))
              .toList();
    }
    if (getDataList.length <= 0) {
      box.write(selectedDate.value + dropdown.value, jsonEncode(selectedList.map((e) => e.toJson()).toList()));
      selectedList.clear();
      selectedList.addAll(RxList<Selected>([
        Selected(status: 0.obs, name: "1".obs),
        Selected(status: 0.obs, name: "2".obs),
        Selected(status: 0.obs, name: "3".obs),
        Selected(status: 0.obs, name: "4".obs),
        Selected(status: 0.obs, name: "5".obs),
        Selected(status: 0.obs, name: "6".obs),
        Selected(status: 0.obs, name: "7".obs),
        Selected(status: 0.obs, name: "8".obs),
        Selected(status: 0.obs, name: "9".obs),
        Selected(status: 0.obs, name: "10".obs),
        Selected(status: 0.obs, name: "11".obs),
        Selected(status: 0.obs, name: "12".obs),
        Selected(status: 0.obs, name: "13".obs),
        Selected(status: 0.obs, name: "14".obs),
        Selected(status: 0.obs, name: "15".obs),
        Selected(status: 0.obs, name: "16".obs),
        Selected(status: 0.obs, name: "17".obs),
        Selected(status: 0.obs, name: "18".obs),
        Selected(status: 0.obs, name: "19".obs),
        Selected(status: 0.obs, name: "20".obs),
        Selected(status: 0.obs, name: "21".obs),
        Selected(status: 0.obs, name: "22".obs),
        Selected(status: 0.obs, name: "23".obs),
        Selected(status: 0.obs, name: "24".obs),
        Selected(status: 0.obs, name: "25".obs),
        Selected(status: 0.obs, name: "26".obs),
        Selected(status: 0.obs, name: "27".obs),
        Selected(status: 0.obs, name: "28".obs),
        Selected(status: 0.obs, name: "29".obs),
        Selected(status: 0.obs, name: "30".obs),
        Selected(status: 0.obs, name: "31".obs),
        Selected(status: 0.obs, name: "32".obs),
        Selected(status: 0.obs, name: "33".obs),
        Selected(status: 0.obs, name: "34".obs),
        Selected(status: 0.obs, name: "35".obs),
        Selected(status: 0.obs, name: "36".obs),
        Selected(status: 0.obs, name: "37".obs),
        Selected(status: 0.obs, name: "38".obs),
        Selected(status: 0.obs, name: "39".obs),
        Selected(status: 0.obs, name: "40".obs),
        Selected(status: 0.obs, name: "41".obs),
        Selected(status: 0.obs, name: "42".obs),
        Selected(status: 0.obs, name: "43".obs),
        Selected(status: 0.obs, name: "44".obs),
        Selected(status: 0.obs, name: "45".obs),
        Selected(status: 0.obs, name: "46".obs),
        Selected(status: 0.obs, name: "47".obs),
        Selected(status: 0.obs, name: "48".obs),
        Selected(status: 0.obs, name: "49".obs),
        Selected(status: 0.obs, name: "50".obs),
        Selected(status: 0.obs, name: "51".obs),
        Selected(status: 0.obs, name: "52".obs),
        Selected(status: 0.obs, name: "53".obs),
        Selected(status: 0.obs, name: "54".obs),
        Selected(status: 0.obs, name: "55".obs),
        Selected(status: 0.obs, name: "56".obs),
        Selected(status: 0.obs, name: "57".obs),
        Selected(status: 0.obs, name: "58".obs),
        Selected(status: 0.obs, name: "59".obs),
        Selected(status: 0.obs, name: "60".obs),
        Selected(status: 0.obs, name: "61".obs),
        Selected(status: 0.obs, name: "62".obs),
        Selected(status: 0.obs, name: "63".obs),
        Selected(status: 0.obs, name: "64".obs),
        Selected(status: 0.obs, name: "65".obs),
        Selected(status: 0.obs, name: "P1".obs),
        Selected(status: 0.obs, name: "P2".obs),
        Selected(status: 0.obs, name: "P3".obs),
        Selected(status: 0.obs, name: "P4".obs),
        Selected(status: 0.obs, name: "P5".obs),
        Selected(status: 0.obs, name: "P6".obs),
        Selected(status: 0.obs, name: "P7".obs),
        Selected(status: 0.obs, name: "P8".obs),
        Selected(status: 0.obs, name: "P9".obs),
        Selected(status: 0.obs, name: "P10".obs),
        Selected(status: 0.obs, name: "S1".obs),
        Selected(status: 0.obs, name: "S2".obs),
        Selected(status: 0.obs, name: "S3".obs),
        Selected(status: 0.obs, name: "S4".obs),
        Selected(status: 0.obs, name: "S5".obs),
        Selected(status: 0.obs, name: "S6".obs),
        Selected(status: 0.obs, name: "S7".obs),
        Selected(status: 0.obs, name: "S8".obs),
        Selected(status: 0.obs, name: "S9".obs),
        Selected(status: 0.obs, name: "S10".obs),
        Selected(status: 0.obs, name: "S11".obs),
        Selected(status: 0.obs, name: "S12".obs),
        Selected(status: 0.obs, name: "S13".obs),
        Selected(status: 0.obs, name: "S14".obs),
        Selected(status: 0.obs, name: "S15".obs),
        Selected(status: 0.obs, name: "S16".obs),
        Selected(status: 0.obs, name: "S17".obs),
        Selected(status: 0.obs, name: "M18".obs),
        Selected(status: 0.obs, name: "M19".obs),
        Selected(status: 0.obs, name: "M20".obs),
        Selected(status: 0.obs, name: "M21".obs),
        Selected(status: 0.obs, name: "M22".obs),
        Selected(status: 0.obs, name: "SE1".obs),
        Selected(status: 0.obs, name: "SE2".obs),
        Selected(status: 0.obs, name: "SE3".obs),
        Selected(status: 0.obs, name: "SE4".obs),
        Selected(status: 0.obs, name: "SE5".obs),
        Selected(status: 0.obs, name: "SE6".obs),
        Selected(status: 0.obs, name: "SE7".obs),
        Selected(status: 0.obs, name: "SE8".obs),
      ]));
    } else {
      selectedList.clear();
      selectedList.addAll(getDataList);
    }
    hasData.value = 1;
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
  RxInt status = 0.obs;

  Selected({
    required this.name,
    required this.status,
  });

  Selected.fromJson(Map<String, dynamic> json) {
    status.value = json['status'];
    name.value = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status.value;
    data['name'] = name.value;
    return data;
  }
}
