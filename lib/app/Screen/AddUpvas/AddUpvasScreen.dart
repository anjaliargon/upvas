import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutterotp_firebase/app/Constant/color_constant.dart';
import 'package:flutterotp_firebase/app/Screen/Home/controller/Homecontroller.dart';
import 'package:flutterotp_firebase/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../../../../main.dart';
import '../Add_Upvas/controllers/add_upvas_controller.dart';

class AddUpvasView extends GetWidget<AddUpvasController> {
  const AddUpvasView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xffF3F3F3),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/icons_image/back.png",
                  ),
                ),
              ),
            )),
        title: const Text('Add Upvas', style: TextStyle(color: Colors.black)),
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
                              const Text("Number", style: TextStyle(fontSize: 17)),
                              const SizedBox(
                                height: 12,
                              ),
                              Container(
                                height: 50,
                                width: 130,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: appTheme.textGrayColor),
                                    borderRadius:
                                        const BorderRadius.all(Radius.circular(12))),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      right: 10.0, left: 10),
                                  child: DropdownButton<String>(
                                    value: controller.dropdownValue.value
                                        .toString(),
                                    elevation: 16,
                                    style: TextStyle(
                                        fontFamily: 'JosefinSans',
                                        color: appTheme.textGrayColor,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500),
                                    borderRadius:
                                        const BorderRadius.all(Radius.circular(12)),
                                    icon: Padding(
                                      padding:
                                          const EdgeInsets.only(left: 55.0, right: 0),
                                      child: Image.asset(
                                          "assets/icons_image/down.png",
                                          height: 25),
                                    ),
                                    underline: Container(
                                      // height: 2,
                                      color: Colors.white,
                                    ),
                                    onChanged: (String? value) {
                                      controller.dropdownValue.value = value!;
                                    },
                                    items: controller.list
                                        .map<DropdownMenuItem<String>>((value) {
                                      return DropdownMenuItem<String>(
                                        value: value.toString(),
                                        child: Text((value + 1).toString()),
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
                              const Text("Date", style: TextStyle(fontSize: 17)),
                              const SizedBox(
                                height: 12,
                              ),
                              Container(
                                height: 50,
                                width: 140,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: appTheme.textGrayColor),
                                    borderRadius:
                                        const BorderRadius.all(Radius.circular(12))),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      controller.datePick(
                                          context: Get.context!);
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(controller.selectedDate.value,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                color: appTheme.textGrayColor)),
                                        const SizedBox(width: 10),
                                        Image.asset(
                                            "assets/icons_image/date.png",
                                            height: 20),
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
                          const Text("Time"),
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
                                            height: 20)
                                        : Image.asset(
                                            "assets/icons_image/box.png",
                                            height: 20),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text("Savar"),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 15,
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
                                            height: 20)
                                        : Image.asset(
                                            "assets/icons_image/box.png",
                                            height: 20),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text("Sanj"),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 15,
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
                                            height: 20)
                                        : Image.asset(
                                            "assets/icons_image/box.png",
                                            height: 20),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text("Full Day"),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 80),
                    InkWell(
                      onTap: () async {
                        if (controller.getSelectedText() == "Savar") {
                          List<Selected> list = await ((jsonDecode(box.read(
                                      "${controller.selectedDataDate.value}Savar")) as List<dynamic>)
                                  .toList())
                              .map((e) => Selected.fromJson(e))
                              .toList();
                          list[int.parse(controller.dropdownValue.value)]
                              .isSelected
                              .value = true;
                          box.write("${controller.selectedDataDate.value}Savar",
                              jsonEncode(list.map((e) => e.toJson())));
                        } else if (controller.getSelectedText() == "Sanj") {
                          List<Selected> list = await ((jsonDecode(box.read(
                                      "${controller.selectedDataDate.value}Sanj")) as List<dynamic>)
                                  .toList())
                              .map((e) => Selected.fromJson(e))
                              .toList();
                          list[int.parse(controller.dropdownValue.value)]
                              .isSelected
                              .value = true;
                          box.write("${controller.selectedDataDate.value}Sanj",
                              jsonEncode(list.map((e) => e.toJson())));
                        } else {
                          List<Selected> list = await ((jsonDecode(box.read(
                                      "${controller.selectedDataDate.value}Sanj")) as List<dynamic>)
                                  .toList())
                              .map((e) => Selected.fromJson(e))
                              .toList();
                          List<Selected> listSavar = await ((jsonDecode(box
                                      .read("${controller.selectedDataDate.value}Savar")) as List<dynamic>)
                                  .toList())
                              .map((e) => Selected.fromJson(e))
                              .toList();
                          list[int.parse(controller.dropdownValue.value)]
                              .isSelected
                              .value = true;
                          listSavar[int.parse(controller.dropdownValue.value)]
                              .isSelected
                              .value = true;
                          box.write("${controller.selectedDataDate.value}Sanj",
                              jsonEncode(list.map((e) => e.toJson()).toList()));
                          box.write(
                              "${controller.selectedDataDate.value}Savar",
                              jsonEncode(
                                  listSavar.map((e) => e.toJson()).toList()));
                        }
                        Get.offAllNamed(Routes.MAINHOME);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: appTheme.primaryTheme,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12))),
                        height: 50,
                        width: 140,
                        child: const Center(
                          child: Text(
                            "Save",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ),
                      ),
                    )
                  ]),
                  Positioned(
                      child: Image.asset(
                    "assets/icons_image/background.png",
                    color: Colors.black,
                  )),
                ],
              );
      }),
    );
  }
}
