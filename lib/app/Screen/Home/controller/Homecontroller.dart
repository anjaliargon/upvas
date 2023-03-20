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
    Selected(status: 0.obs, name: "1"),
    Selected(status: 0.obs, name: "2"),
    Selected(status: 0.obs, name: "3"),
    Selected(status: 0.obs, name: "4"),
    Selected(status: 0.obs, name: "5"),
    Selected(status: 0.obs, name: "6"),
    Selected(status: 0.obs, name: "7"),
    Selected(status: 0.obs, name: "8"),
    Selected(status: 0.obs, name: "9"),
    Selected(status: 0.obs, name: "10"),
    Selected(status: 0.obs, name: "11"),
    Selected(status: 0.obs, name: "12"),
    Selected(status: 0.obs, name: "13"),
    Selected(status: 0.obs, name: "14"),
    Selected(status: 0.obs, name: "15"),
    Selected(status: 0.obs, name: "16"),
    Selected(status: 0.obs, name: "17"),
    Selected(status: 0.obs, name: "18"),
    Selected(status: 0.obs, name: "19"),
    Selected(status: 0.obs, name: "20"),
    Selected(status: 0.obs, name: "21"),
    Selected(status: 0.obs, name: "22"),
    Selected(status: 0.obs, name: "23"),
    Selected(status: 0.obs, name: "24"),
    Selected(status: 0.obs, name: "25"),
    Selected(status: 0.obs, name: "26"),
    Selected(status: 0.obs, name: "27"),
    Selected(status: 0.obs, name: "28"),
    Selected(status: 0.obs, name: "29"),
    Selected(status: 0.obs, name: "30"),
    Selected(status: 0.obs, name: "31"),
    Selected(status: 0.obs, name: "32"),
    Selected(status: 0.obs, name: "33"),
    Selected(status: 0.obs, name: "34"),
    Selected(status: 0.obs, name: "35"),
    Selected(status: 0.obs, name: "36"),
    Selected(status: 0.obs, name: "37"),
    Selected(status: 0.obs, name: "38"),
    Selected(status: 0.obs, name: "39"),
    Selected(status: 0.obs, name: "40"),
    Selected(status: 0.obs, name: "41"),
    Selected(status: 0.obs, name: "42"),
    Selected(status: 0.obs, name: "43"),
    Selected(status: 0.obs, name: "44"),
    Selected(status: 0.obs, name: "45"),
    Selected(status: 0.obs, name: "46"),
    Selected(status: 0.obs, name: "47"),
    Selected(status: 0.obs, name: "48"),
    Selected(status: 0.obs, name: "49"),
    Selected(status: 0.obs, name: "50"),
    Selected(status: 0.obs, name: "51"),
    Selected(status: 0.obs, name: "52"),
    Selected(status: 0.obs, name: "53"),
    Selected(status: 0.obs, name: "54"),
    Selected(status: 0.obs, name: "55"),
    Selected(status: 0.obs, name: "56"),
    Selected(status: 0.obs, name: "57"),
    Selected(status: 0.obs, name: "58"),
    Selected(status: 0.obs, name: "59"),
    Selected(status: 0.obs, name: "60"),
    Selected(status: 0.obs, name: "61"),
    Selected(status: 0.obs, name: "62"),
    Selected(status: 0.obs, name: "63"),
    Selected(status: 0.obs, name: "64"),
    Selected(status: 0.obs, name: "65"),
    Selected(status: 0.obs, name: "P1"),
    Selected(status: 0.obs, name: "P2"),
    Selected(status: 0.obs, name: "P3"),
    Selected(status: 0.obs, name: "P4"),
    Selected(status: 0.obs, name: "P5"),
    Selected(status: 0.obs, name: "P6"),
    Selected(status: 0.obs, name: "P7"),
    Selected(status: 0.obs, name: "P8"),
    Selected(status: 0.obs, name: "P9"),
    Selected(status: 0.obs, name: "P10s"),
    Selected(status: 0.obs, name: "S1"),
    Selected(status: 0.obs, name: "S2"),
    Selected(status: 0.obs, name: "S3"),
    Selected(status: 0.obs, name: "S4"),
    Selected(status: 0.obs, name: "S5"),
    Selected(status: 0.obs, name: "S6"),
    Selected(status: 0.obs, name: "S7"),
    Selected(status: 0.obs, name: "S8"),
    Selected(status: 0.obs, name: "S9"),
    Selected(status: 0.obs, name: "S10"),
    Selected(status: 0.obs, name: "S11"),
    Selected(status: 0.obs, name: "S12"),
    Selected(status: 0.obs, name: "S13"),
    Selected(status: 0.obs, name: "S14"),
    Selected(status: 0.obs, name: "S15"),
    Selected(status: 0.obs, name: "S16"),
    Selected(status: 0.obs, name: "S17"),
    Selected(status: 0.obs, name: "M18"),
    Selected(status: 0.obs, name: "M19"),
    Selected(status: 0.obs, name: "M20"),
    Selected(status: 0.obs, name: "M21"),
    Selected(status: 0.obs, name: "M22"),
    Selected(status: 0.obs, name: "SE1"),
    Selected(status: 0.obs, name: "SE2"),
    Selected(status: 0.obs, name: "SE3"),
    Selected(status: 0.obs, name: "SE4"),
    Selected(status: 0.obs, name: "SE5"),
    Selected(status: 0.obs, name: "SE6"),
    Selected(status: 0.obs, name: "SE7"),
    Selected(status: 0.obs, name: "SE8"),
  ]);
  RxList<Selected> getDataList = RxList<Selected>([]);
  RxList<String> dropdownList = <String>[
    timeConstant.savar,
    timeConstant.Sanj,
  ].obs;
  RxInt hasData = 0.obs;
  RxString dropdown = timeConstant.savar.obs;
  RxList<Color> colors =
      <Color>[Colors.grey, Colors.yellow, Colors.green].obs;

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
      box.write(selectedDate.value + dropdown.value,
          jsonEncode(selectedList.map((e) => e.toJson()).toList()));
      selectedList.clear();
      selectedList.addAll(RxList<Selected>([
        Selected(status: 0.obs, name: "1"),
        Selected(status: 0.obs, name: "2"),
        Selected(status: 0.obs, name: "3"),
        Selected(status: 0.obs, name: "4"),
        Selected(status: 0.obs, name: "5"),
        Selected(status: 0.obs, name: "6"),
        Selected(status: 0.obs, name: "7"),
        Selected(status: 0.obs, name: "8"),
        Selected(status: 0.obs, name: "9"),
        Selected(status: 0.obs, name: "10"),
        Selected(status: 0.obs, name: "11"),
        Selected(status: 0.obs, name: "12"),
        Selected(status: 0.obs, name: "13"),
        Selected(status: 0.obs, name: "14"),
        Selected(status: 0.obs, name: "15"),
        Selected(status: 0.obs, name: "16"),
        Selected(status: 0.obs, name: "17"),
        Selected(status: 0.obs, name: "18"),
        Selected(status: 0.obs, name: "19"),
        Selected(status: 0.obs, name: "20"),
        Selected(status: 0.obs, name: "21"),
        Selected(status: 0.obs, name: "22"),
        Selected(status: 0.obs, name: "23"),
        Selected(status: 0.obs, name: "24"),
        Selected(status: 0.obs, name: "25"),
        Selected(status: 0.obs, name: "26"),
        Selected(status: 0.obs, name: "27"),
        Selected(status: 0.obs, name: "28"),
        Selected(status: 0.obs, name: "29"),
        Selected(status: 0.obs, name: "30"),
        Selected(status: 0.obs, name: "31"),
        Selected(status: 0.obs, name: "32"),
        Selected(status: 0.obs, name: "33"),
        Selected(status: 0.obs, name: "34"),
        Selected(status: 0.obs, name: "35"),
        Selected(status: 0.obs, name: "36"),
        Selected(status: 0.obs, name: "37"),
        Selected(status: 0.obs, name: "38"),
        Selected(status: 0.obs, name: "39"),
        Selected(status: 0.obs, name: "40"),
        Selected(status: 0.obs, name: "41"),
        Selected(status: 0.obs, name: "42"),
        Selected(status: 0.obs, name: "43"),
        Selected(status: 0.obs, name: "44"),
        Selected(status: 0.obs, name: "45"),
        Selected(status: 0.obs, name: "46"),
        Selected(status: 0.obs, name: "47"),
        Selected(status: 0.obs, name: "48"),
        Selected(status: 0.obs, name: "49"),
        Selected(status: 0.obs, name: "50"),
        Selected(status: 0.obs, name: "51"),
        Selected(status: 0.obs, name: "52"),
        Selected(status: 0.obs, name: "53"),
        Selected(status: 0.obs, name: "54"),
        Selected(status: 0.obs, name: "55"),
        Selected(status: 0.obs, name: "56"),
        Selected(status: 0.obs, name: "57"),
        Selected(status: 0.obs, name: "58"),
        Selected(status: 0.obs, name: "59"),
        Selected(status: 0.obs, name: "60"),
        Selected(status: 0.obs, name: "61"),
        Selected(status: 0.obs, name: "62"),
        Selected(status: 0.obs, name: "63"),
        Selected(status: 0.obs, name: "64"),
        Selected(status: 0.obs, name: "65"),
        Selected(status: 0.obs, name: "P1"),
        Selected(status: 0.obs, name: "P2"),
        Selected(status: 0.obs, name: "P3"),
        Selected(status: 0.obs, name: "P4"),
        Selected(status: 0.obs, name: "P5"),
        Selected(status: 0.obs, name: "P6"),
        Selected(status: 0.obs, name: "P7"),
        Selected(status: 0.obs, name: "P8"),
        Selected(status: 0.obs, name: "P9"),
        Selected(status: 0.obs, name: "P10s"),
        Selected(status: 0.obs, name: "S1"),
        Selected(status: 0.obs, name: "S2"),
        Selected(status: 0.obs, name: "S3"),
        Selected(status: 0.obs, name: "S4"),
        Selected(status: 0.obs, name: "S5"),
        Selected(status: 0.obs, name: "S6"),
        Selected(status: 0.obs, name: "S7"),
        Selected(status: 0.obs, name: "S8"),
        Selected(status: 0.obs, name: "S9"),
        Selected(status: 0.obs, name: "S10"),
        Selected(status: 0.obs, name: "S11"),
        Selected(status: 0.obs, name: "S12"),
        Selected(status: 0.obs, name: "S13"),
        Selected(status: 0.obs, name: "S14"),
        Selected(status: 0.obs, name: "S15"),
        Selected(status: 0.obs, name: "S16"),
        Selected(status: 0.obs, name: "S17"),
        Selected(status: 0.obs, name: "M18"),
        Selected(status: 0.obs, name: "M19"),
        Selected(status: 0.obs, name: "M20"),
        Selected(status: 0.obs, name: "M21"),
        Selected(status: 0.obs, name: "M22"),
        Selected(status: 0.obs, name: "SE1"),
        Selected(status: 0.obs, name: "SE2"),
        Selected(status: 0.obs, name: "SE3"),
        Selected(status: 0.obs, name: "SE4"),
        Selected(status: 0.obs, name: "SE5"),
        Selected(status: 0.obs, name: "SE6"),
        Selected(status: 0.obs, name: "SE7"),
        Selected(status: 0.obs, name: "SE8"),
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

  // void setStatus(int index) {
  //   Selected item = selectedList[index];
  //   selectedList[] = newStatus; // change the status value
  // }
  void updateStatus(int index) {
    Selected item = selectedList[index];
    int newStatus = (item.status.value + 1) % 3;
    item.status.value = newStatus;
    colors[index] = getColor(newStatus);
    selectedList.refresh();
  }

  Color getColor(int status) {
    switch (status) {
      case 1:
        return Colors.green;
      case 2:
        return Colors.red;
      default:
        return Colors.grey;
    }
  }
}