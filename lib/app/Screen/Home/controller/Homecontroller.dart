import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutterotp_firebase/app/Constant/app_constant.dart';

import 'package:flutterotp_firebase/app/Constant/sizeConstant.dart';
import 'package:flutterotp_firebase/app/Screen/Home/controller/Selectedmodel.dart';

import 'package:flutterotp_firebase/main.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class HomeController extends GetxController {
  RxString selectedDate = "".obs;
  RxList<Selected> selectedList = RxList<Selected>([
    Selected(status: 0.obs, name: "1", location: "Kundal"),
    Selected(status: 0.obs, name: "2", location: "Vadodara"),
    Selected(status: 0.obs, name: "3", location: "Gam"),
    Selected(status: 0.obs, name: "4", location: "Vadodara"),
    Selected(status: 0.obs, name: "5", location: "Vadodara"),
    Selected(status: 0.obs, name: "6", location: "Kundal"),
    Selected(status: 0.obs, name: "7", location: "Kundal"),
    Selected(status: 0.obs, name: "8", location: "Kundal"),
    Selected(status: 0.obs, name: "9", location: "Kundal"),
    Selected(status: 0.obs, name: "10", location: "Kundal"),
    Selected(status: 0.obs, name: "11", location: "Kundal"),
    Selected(status: 0.obs, name: "12", location: "Kundal"),
    Selected(status: 0.obs, name: "13", location: "Kundal"),
    Selected(status: 0.obs, name: "14", location: "Kundal"),
    Selected(status: 0.obs, name: "15", location: "Kundal"),
    Selected(status: 0.obs, name: "16", location: "Kundal"),
    Selected(status: 0.obs, name: "17", location: "Kundal"),
    Selected(status: 0.obs, name: "18", location: "Kundal"),
    Selected(status: 0.obs, name: "19", location: "Kundal"),
    Selected(status: 0.obs, name: "20", location: "Kundal"),
    Selected(status: 0.obs, name: "21", location: "Kundal"),
    Selected(status: 0.obs, name: "22", location: "Kundal"),
    Selected(status: 0.obs, name: "23", location: "Kundal"),
    Selected(status: 0.obs, name: "24", location: "Kundal"),
    Selected(status: 0.obs, name: "25", location: "Kundal"),
    Selected(status: 0.obs, name: "26", location: "Kundal"),
    Selected(status: 0.obs, name: "27", location: "Kundal"),
    Selected(status: 0.obs, name: "28", location: "Kundal"),
    Selected(status: 0.obs, name: "29", location: "Kundal"),
    Selected(status: 0.obs, name: "30", location: "Kundal"),
    Selected(status: 0.obs, name: "31", location: "Kundal"),
    Selected(status: 0.obs, name: "32", location: "Kundal"),
    Selected(status: 0.obs, name: "33", location: "Kundal"),
    Selected(status: 0.obs, name: "34", location: "Kundal"),
    Selected(status: 0.obs, name: "35", location: "Kundal"),
    Selected(status: 0.obs, name: "36", location: "Kundal"),
    Selected(status: 0.obs, name: "37", location: "Kundal"),
    Selected(status: 0.obs, name: "38", location: "Kundal"),
    Selected(status: 0.obs, name: "39", location: "Kundal"),
    Selected(status: 0.obs, name: "40", location: "Kundal"),
    Selected(status: 0.obs, name: "41", location: "Kundal"),
    Selected(status: 0.obs, name: "42", location: "Kundal"),
    Selected(status: 0.obs, name: "43", location: "Kundal"),
    Selected(status: 0.obs, name: "44", location: "Kundal"),
    Selected(status: 0.obs, name: "45", location: "Kundal"),
    Selected(status: 0.obs, name: "46", location: "Kundal"),
    Selected(status: 0.obs, name: "47", location: "Kundal"),
    Selected(status: 0.obs, name: "48", location: "Kundal"),
    Selected(status: 0.obs, name: "49", location: "Kundal"),
    Selected(status: 0.obs, name: "50", location: "Kundal"),
    Selected(status: 0.obs, name: "51", location: "Kundal"),
    Selected(status: 0.obs, name: "52", location: "Kundal"),
    Selected(status: 0.obs, name: "53", location: "Kundal"),
    Selected(status: 0.obs, name: "54", location: "Kundal"),
    Selected(status: 0.obs, name: "55", location: "Kundal"),
    Selected(status: 0.obs, name: "56", location: "Kundal"),
    Selected(status: 0.obs, name: "57", location: "Kundal"),
    Selected(status: 0.obs, name: "58", location: "Kundal"),
    Selected(status: 0.obs, name: "59", location: "Kundal"),
    Selected(status: 0.obs, name: "60", location: "Kundal"),
    Selected(status: 0.obs, name: "61", location: "Kundal"),
    Selected(status: 0.obs, name: "62", location: "Kundal"),
    Selected(status: 0.obs, name: "63", location: "Kundal"),
    Selected(status: 0.obs, name: "64", location: "Kundal"),
    Selected(status: 0.obs, name: "65", location: "Kundal"),
    Selected(status: 0.obs, name: "P1", location: "Kundal"),
    Selected(status: 0.obs, name: "P2", location: "Kundal"),
    Selected(status: 0.obs, name: "P3", location: "Kundal"),
    Selected(status: 0.obs, name: "P4", location: "Kundal"),
    Selected(status: 0.obs, name: "P5", location: "Kundal"),
    Selected(status: 0.obs, name: "P6", location: "Kundal"),
    Selected(status: 0.obs, name: "P7", location: "Kundal"),
    Selected(status: 0.obs, name: "P8", location: "Kundal"),
    Selected(status: 0.obs, name: "P9", location: "Kundal"),
    Selected(status: 0.obs, name: "P10s", location: "Kundal"),
    Selected(status: 0.obs, name: "S1", location: "Kundal"),
    Selected(status: 0.obs, name: "S2", location: "Kundal"),
    Selected(status: 0.obs, name: "S3", location: "Kundal"),
    Selected(status: 0.obs, name: "S4", location: "Kundal"),
    Selected(status: 0.obs, name: "S5", location: "Kundal"),
    Selected(status: 0.obs, name: "S6", location: "Kundal"),
    Selected(status: 0.obs, name: "S7", location: "Kundal"),
    Selected(status: 0.obs, name: "S8", location: "Kundal"),
    Selected(status: 0.obs, name: "S9", location: "Kundal"),
    Selected(status: 0.obs, name: "S10", location: "Kundal"),
    Selected(status: 0.obs, name: "S11", location: "Kundal"),
    Selected(status: 0.obs, name: "S12", location: "Kundal"),
    Selected(status: 0.obs, name: "S13", location: "Kundal"),
    Selected(status: 0.obs, name: "S14", location: "Kundal"),
    Selected(status: 0.obs, name: "S15", location: "Kundal"),
    Selected(status: 0.obs, name: "S16", location: "Kundal"),
    Selected(status: 0.obs, name: "S17", location: "Kundal"),
    Selected(status: 0.obs, name: "M18", location: "Kundal"),
    Selected(status: 0.obs, name: "M19", location: "Kundal"),
    Selected(status: 0.obs, name: "M20", location: "Kundal"),
    Selected(status: 0.obs, name: "M21", location: "Kundal"),
    Selected(status: 0.obs, name: "M22", location: "Kundal"),
    Selected(status: 0.obs, name: "SE1", location: "Kundal"),
    Selected(status: 0.obs, name: "SE2", location: "Kundal"),
    Selected(status: 0.obs, name: "SE3", location: "Kundal"),
    Selected(status: 0.obs, name: "SE4", location: "Kundal"),
    Selected(status: 0.obs, name: "SE5", location: "Kundal"),
    Selected(status: 0.obs, name: "SE6", location: "Kundal"),
    Selected(status: 0.obs, name: "SE7", location: "Kundal"),
    Selected(status: 0.obs, name: "SE8", location: "Kundal"),
  ]);
  RxList<Selected> getDataList = RxList<Selected>([]);
  RxList getLocation = RxList([]);
  RxList<String> dropdownListTime = <String>[
    timeConstant.savar,
    timeConstant.Sanj,
  ].obs;
  RxList<String> dropdownListLocation = <String>[
    "Kundal",
    "Vadodara",
    "Gam",
  ].obs;
  RxInt hasData = 0.obs;
  RxString dropdownTime = timeConstant.savar.obs;
  RxString dropdownlocation = "Kundal".obs;

  @override
  void onInit() {
    selectedDate.value =
        DateFormat('dd/MM/yyyy').format(DateTime.now()).toString();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      data();
    });
    if (!isNullEmptyOrFalse(Get.arguments)) {
      getLocation.value = Get.arguments["Location"];
      print(getLocation.value);
    }
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  data() async {
    hasData.value = 0;
    getDataList.clear();
    if (!isNullEmptyOrFalse(
        box.read(selectedDate.value + dropdownTime.value+dropdownlocation.value))) {
      getDataList.clear();
      getDataList.value =
          ((jsonDecode(box.read(selectedDate.value + dropdownTime.value+dropdownlocation.value))
                      as List<dynamic>)
                  .toList())
              .map((e) => Selected.fromJson(e))
              .toList();
    }
    if (getDataList.length <= 0) {
      selectedList.clear();
      box.write(selectedDate.value + dropdownTime.value+dropdownlocation.value,
          jsonEncode(selectedList.map((e) => e.toJson()).toList()));
      selectedList.addAll(RxList<Selected>([
        Selected(status: 0.obs, name: "1", location: "Vadodara"),
        Selected(status: 0.obs, name: "2", location: "Kundal"),
        Selected(status: 0.obs, name: "3", location: "Kundal"),
        Selected(status: 0.obs, name: "4", location: "Kundal"),
        Selected(status: 0.obs, name: "5", location: "Kundal"),
        Selected(status: 0.obs, name: "6", location: "Kundal"),
        Selected(status: 0.obs, name: "7", location: "Kundal"),
        Selected(status: 0.obs, name: "8", location: "Kundal"),
        Selected(status: 0.obs, name: "9", location: "Kundal"),
        Selected(status: 0.obs, name: "10", location: "Kundal"),
        Selected(status: 0.obs, name: "11", location: "Kundal"),
        Selected(status: 0.obs, name: "12", location: "Kundal"),
        Selected(status: 0.obs, name: "13", location: "Kundal"),
        Selected(status: 0.obs, name: "14", location: "Kundal"),
        Selected(status: 0.obs, name: "15", location: "Kundal"),
        Selected(status: 0.obs, name: "16", location: "Kundal"),
        Selected(status: 0.obs, name: "17", location: "Kundal"),
        Selected(status: 0.obs, name: "18", location: "Kundal"),
        Selected(status: 0.obs, name: "19", location: "Kundal"),
        Selected(status: 0.obs, name: "20", location: "Kundal"),
        Selected(status: 0.obs, name: "21", location: "Kundal"),
        Selected(status: 0.obs, name: "22", location: "Kundal"),
        Selected(status: 0.obs, name: "23", location: "Kundal"),
        Selected(status: 0.obs, name: "24", location: "Kundal"),
        Selected(status: 0.obs, name: "25", location: "Kundal"),
        Selected(status: 0.obs, name: "26", location: "Kundal"),
        Selected(status: 0.obs, name: "27", location: "Kundal"),
        Selected(status: 0.obs, name: "28", location: "Kundal"),
        Selected(status: 0.obs, name: "29", location: "Kundal"),
        Selected(status: 0.obs, name: "30", location: "Kundal"),
        Selected(status: 0.obs, name: "31", location: "Kundal"),
        Selected(status: 0.obs, name: "32", location: "Kundal"),
        Selected(status: 0.obs, name: "33", location: "Kundal"),
        Selected(status: 0.obs, name: "34", location: "Kundal"),
        Selected(status: 0.obs, name: "35", location: "Kundal"),
        Selected(status: 0.obs, name: "36", location: "Kundal"),
        Selected(status: 0.obs, name: "37", location: "Kundal"),
        Selected(status: 0.obs, name: "38", location: "Kundal"),
        Selected(status: 0.obs, name: "39", location: "Kundal"),
        Selected(status: 0.obs, name: "40", location: "Kundal"),
        Selected(status: 0.obs, name: "41", location: "Kundal"),
        Selected(status: 0.obs, name: "42", location: "Kundal"),
        Selected(status: 0.obs, name: "43", location: "Kundal"),
        Selected(status: 0.obs, name: "44", location: "Kundal"),
        Selected(status: 0.obs, name: "45", location: "Kundal"),
        Selected(status: 0.obs, name: "46", location: "Kundal"),
        Selected(status: 0.obs, name: "47", location: "Kundal"),
        Selected(status: 0.obs, name: "48", location: "Kundal"),
        Selected(status: 0.obs, name: "49", location: "Kundal"),
        Selected(status: 0.obs, name: "50", location: "Kundal"),
        Selected(status: 0.obs, name: "51", location: "Kundal"),
        Selected(status: 0.obs, name: "52", location: "Kundal"),
        Selected(status: 0.obs, name: "53", location: "Kundal"),
        Selected(status: 0.obs, name: "54", location: "Kundal"),
        Selected(status: 0.obs, name: "55", location: "Kundal"),
        Selected(status: 0.obs, name: "56", location: "Kundal"),
        Selected(status: 0.obs, name: "57", location: "Kundal"),
        Selected(status: 0.obs, name: "58", location: "Kundal"),
        Selected(status: 0.obs, name: "59", location: "Kundal"),
        Selected(status: 0.obs, name: "60", location: "Kundal"),
        Selected(status: 0.obs, name: "61", location: "Kundal"),
        Selected(status: 0.obs, name: "62", location: "Kundal"),
        Selected(status: 0.obs, name: "63", location: "Kundal"),
        Selected(status: 0.obs, name: "64", location: "Kundal"),
        Selected(status: 0.obs, name: "65", location: "Kundal"),
        Selected(status: 0.obs, name: "P1", location: "Kundal"),
        Selected(status: 0.obs, name: "P2", location: "Kundal"),
        Selected(status: 0.obs, name: "P3", location: "Kundal"),
        Selected(status: 0.obs, name: "P4", location: "Kundal"),
        Selected(status: 0.obs, name: "P5", location: "Kundal"),
        Selected(status: 0.obs, name: "P6", location: "Kundal"),
        Selected(status: 0.obs, name: "P7", location: "Kundal"),
        Selected(status: 0.obs, name: "P8", location: "Kundal"),
        Selected(status: 0.obs, name: "P9", location: "Kundal"),
        Selected(status: 0.obs, name: "P10s", location: "Kundal"),
        Selected(status: 0.obs, name: "S1", location: "Kundal"),
        Selected(status: 0.obs, name: "S2", location: "Kundal"),
        Selected(status: 0.obs, name: "S3", location: "Kundal"),
        Selected(status: 0.obs, name: "S4", location: "Kundal"),
        Selected(status: 0.obs, name: "S5", location: "Kundal"),
        Selected(status: 0.obs, name: "S6", location: "Kundal"),
        Selected(status: 0.obs, name: "S7", location: "Kundal"),
        Selected(status: 0.obs, name: "S8", location: "Kundal"),
        Selected(status: 0.obs, name: "S9", location: "Kundal"),
        Selected(status: 0.obs, name: "S10", location: "Kundal"),
        Selected(status: 0.obs, name: "S11", location: "Kundal"),
        Selected(status: 0.obs, name: "S12", location: "Kundal"),
        Selected(status: 0.obs, name: "S13", location: "Kundal"),
        Selected(status: 0.obs, name: "S14", location: "Kundal"),
        Selected(status: 0.obs, name: "S15", location: "Kundal"),
        Selected(status: 0.obs, name: "S16", location: "Kundal"),
        Selected(status: 0.obs, name: "S17", location: "Kundal"),
        Selected(status: 0.obs, name: "M18", location: "Kundal"),
        Selected(status: 0.obs, name: "M19", location: "Kundal"),
        Selected(status: 0.obs, name: "M20", location: "Kundal"),
        Selected(status: 0.obs, name: "M21", location: "Kundal"),
        Selected(status: 0.obs, name: "M22", location: "Kundal"),
        Selected(status: 0.obs, name: "SE1", location: "Kundal"),
        Selected(status: 0.obs, name: "SE2", location: "Kundal"),
        Selected(status: 0.obs, name: "SE3", location: "Kundal"),
        Selected(status: 0.obs, name: "SE4", location: "Kundal"),
        Selected(status: 0.obs, name: "SE5", location: "Kundal"),
        Selected(status: 0.obs, name: "SE6", location: "Kundal"),
        Selected(status: 0.obs, name: "SE7", location: "Kundal"),
        Selected(status: 0.obs, name: "SE8", location: "Kundal"),
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

  void updateStatus(int index) {
    Selected item = selectedList[index];
    int newStatus = (item.status.value + 1) % 3;
    item.status.value = newStatus;
    item.refresh();
  }

  void location() {
    getLocation.value =
        ((jsonDecode(box.read(dropdownlocation.value)) as List<dynamic>)
                .toList())
            .map((e) => Selected.fromJson(e))
            .toList();
  }
}
