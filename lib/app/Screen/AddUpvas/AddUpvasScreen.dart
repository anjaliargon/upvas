import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutterotp_firebase/app/Constant/Colors.dart';
import 'package:flutterotp_firebase/app/Constant/app_constant.dart';
import 'package:flutterotp_firebase/app/Screen/AddUpvas/controller/AppUpvasController.dart';
import 'package:flutterotp_firebase/app/Screen/Home/controller/Selectedmodel.dart';
import 'package:flutterotp_firebase/app/routes/app_pages.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../main.dart';

class AddUpvasView extends GetWidget<AddUpvasController> {
  const AddUpvasView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyColor colors = MyColor();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colors.white,
        elevation: 0,
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Image.asset(
              "assets/icons_image/Back.png",
              height: 7.h,
              width: 7.w,
            )),
        title:
            Text(timeConstant.addupvas, style: TextStyle(color: colors.black)),
        centerTitle: true,
      ),
      body: Obx(() {
        return (controller.hasData.isFalse)
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Column(children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Number",
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                  )),
                              SizedBox(
                                height: 1.h,
                              ),
                              Container(
                                height: 6.h,
                                width: 32.w,
                                decoration: BoxDecoration(
                                    border: Border.all(color: colors.grey),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(12))),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      right: 10.0, left: 10),
                                  child: DropdownButton<String>(
                                    value: controller.dropdownValue.value
                                        .toString(),
                                    elevation: 16,
                                    style: TextStyle(
                                        color: colors.black,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.bold),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(12)),
                                    icon: Image.asset(
                                        "assets/icons_image/dropdown.png",
                                        height: 5.h),
                                    underline: Container(
                                      // height: 2,
                                      color: colors.white,
                                    ),
                                    onChanged: (String? value) {
                                      controller.dropdownValue.value = value!;
                                    },
                                    items: controller.list
                                        .map<DropdownMenuItem<String>>((value) {
                                      return DropdownMenuItem<String>(
                                        value: value.toString(),
                                        child: Text((value).toString()),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Date", style: TextStyle(fontSize: 12.sp)),
                              SizedBox(
                                height: 1.h,
                              ),
                              Container(
                                height: 6.h,
                                width: 34.w,
                                decoration: BoxDecoration(
                                    border: Border.all(color: colors.grey),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(12))),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: InkWell(
                                    onTap: () {
                                      controller.datePick(
                                          context: Get.context!);
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 2),
                                          child: Text(
                                              controller.selectedDate.value,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: colors.black)),
                                        ),
                                        const SizedBox(width: 3),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 2),
                                          child: Image.asset(
                                              "assets/icons_image/date.png",
                                              height: 3.h),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Time",
                            style: TextStyle(fontSize: 12.sp),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  controller.isFullDaySelected.value = false;
                                  controller.isSavarSelected.value = true;
                                  controller.isSanjSelected.value = false;
                                  controller.data();
                                },
                                child: Row(
                                  children: [
                                    (controller.isSavarSelected.isTrue)
                                        ? Image.asset(
                                            "assets/icons_image/CheckBox.png",
                                            height: 3.h)
                                        : Image.asset(
                                            "assets/icons_image/Box.png",
                                            height: 3.h),
                                    SizedBox(
                                      width: 3.w,
                                    ),
                                    Text(timeConstant.savar),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              InkWell(
                                onTap: () {
                                  controller.isFullDaySelected.value = false;
                                  controller.isSavarSelected.value = false;
                                  controller.isSanjSelected.value = true;
                                  controller.data();
                                },
                                child: Row(
                                  children: [
                                    (controller.isSanjSelected.isTrue)
                                        ? Image.asset(
                                            "assets/icons_image/CheckBox.png",
                                            height: 3.h)
                                        : Image.asset(
                                            "assets/icons_image/Box.png",
                                            height: 3.h),
                                    SizedBox(
                                      width: 3.w,
                                    ),
                                    Text(timeConstant.Sanj),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              InkWell(
                                onTap: () {
                                  controller.isFullDaySelected.value = true;
                                  controller.isSavarSelected.value = false;
                                  controller.isSanjSelected.value = false;
                                  controller.data();
                                },
                                child: Row(
                                  children: [
                                    (controller.isFullDaySelected.isTrue)
                                        ? Image.asset(
                                            "assets/icons_image/CheckBox.png",
                                            height: 3.h)
                                        : Image.asset(
                                            "assets/icons_image/Box.png",
                                            height: 3.h),
                                    SizedBox(
                                      width: 3.w,
                                    ),
                                    Text(timeConstant.full),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10.h),
                    InkWell(
                      onTap: () async {
                        if (controller.getSelectedText() == timeConstant.savar) {
                          List<Selected> list = await ((jsonDecode(box.read(
                                      controller.DataDate.value +
                                          timeConstant.savar)) as List<dynamic>)
                                  .toList())
                              .map((e) => Selected.fromJson(e))
                              .toList();
                          list.forEach((element) {
                            if (element.name ==
                                controller.dropdownValue.value) {
                              element.status.value = 1;
                            }
                          });

                          box.write(
                              controller.DataDate.value + timeConstant.savar,
                              jsonEncode(list.map((e) => e.toJson()).toList()));
                        } else if (controller.getSelectedText() ==
                            timeConstant.Sanj) {
                          List<Selected> list = await ((jsonDecode(box.read(
                                      controller.DataDate.value +
                                          timeConstant.Sanj)) as List<dynamic>)
                                  .toList())
                              .map((e) => Selected.fromJson(e))
                              .toList();
                          list.forEach((element) {
                            if (element.name.toString() ==
                                controller.dropdownValue.value) {

                              element.status.value = 1;
                            }
                          });
                          box.write(
                              controller.DataDate.value + timeConstant.Sanj,
                              jsonEncode(list.map((e) => e.toJson()).toList()));
                        } else {
                          List<Selected> list = await ((jsonDecode(box.read(
                                      controller.DataDate.value +
                                          timeConstant.Sanj)) as List<dynamic>)
                                  .toList())
                              .map((e) => Selected.fromJson(e))
                              .toList();
                          List<Selected> listSavar = await ((jsonDecode(
                                      box.read(controller.DataDate.value +
                                          timeConstant.savar)) as List<dynamic>)
                                  .toList())
                              .map((e) => Selected.fromJson(e))
                              .toList();
                          list.forEach((element) {
                            if (element.name.toString() ==
                                controller.dropdownValue.value) {
                              element.status.value = 1;
                            }
                          });
                          listSavar.forEach((element) {
                            if (element.name.toString() ==
                                controller.dropdownValue.value) {
                              element.status.value = 1;
                            }
                          });
                          box.write(
                              controller.DataDate.value + timeConstant.Sanj,
                              jsonEncode(list.map((e) => e.toJson()).toList()));
                          box.write(
                              controller.DataDate.value + timeConstant.savar,
                              jsonEncode(
                                  listSavar.map((e) => e.toJson()).toList()));
                        }
                        Get.offAllNamed(Routes.MAINHOME);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: colors.darkbrown,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12))),
                        height: 50,
                        width: 140,
                        child: Center(
                          child: Text(
                            "Save",
                            style: TextStyle(
                                color: colors.white,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )
                  ]),
                  Image.asset(
                    "assets/icons_image/temple.png",
                    color: colors.black,
                  ),
                ],
              );
      }),
    );
  }
}
