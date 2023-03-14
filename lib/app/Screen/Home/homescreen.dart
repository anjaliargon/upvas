import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutterotp_firebase/app/Constant/Colors.dart';
import 'package:flutterotp_firebase/app/Screen/Home/controller/Homecontroller.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

import '../../../main.dart';

class Homescreen extends GetView<HomeController> {
  Homescreen({Key? key}) : super(key: key);
  final homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    MyColor colors = MyColor();
    return GetBuilder<HomeController>(
      init: homeController,
      builder: (controller) => Obx(
        () => Scaffold(
          body: (homeController.hasData.isFalse)
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Column(
                  children: [
                    SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            homeController.chooseDate(context: context);
                          },
                          child: Container(
                            height: 50,
                            width: 170,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: colors.grey),
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Obx(
                                  () => Text(
                                    homeController.selectedDate.value,
                                    style: TextStyle(
                                        fontSize: 12.sp, color: colors.offgrey),
                                  ),
                                ),
                                // Text("03-13-2023",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: colors.offgrey),),,
                                const Image(
                                  image:
                                      AssetImage('assets/icons_image/date.png'),
                                  height: 23,
                                  width: 23,
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 170,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: colors.grey),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: DropdownButton(
                                isExpanded: true,
                                elevation: 0,
                                underline: Container(
                                  // height: 2,
                                  color: Colors.white,
                                ),
                                icon: SizedBox(
                                  height: 5.h,
                                  width: 5.w,
                                  child: const Image(
                                    image: AssetImage(
                                        'assets/icons_image/dropdown.png'),
                                    height: 1,
                                    width: 1,
                                  ),
                                ),
                                onChanged: (value) {
                                  homeController.dropdown(value);
                                  homeController.data();
                                },
                                value: homeController.dropdown.value,
                                items:
                                    homeController.dropdownList.map((selected) {
                                  return DropdownMenuItem(
                                    value: selected,
                                    child: Text(
                                      selected,
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.bold,
                                          color: colors.offgrey),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Active : ",
                                style: TextStyle(
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              const CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 5,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 15, left: 5),
                                child: Text(
                                  homeController.selectedList
                                      .where((element) {
                                        return element.isSelected.isFalse;
                                      })
                                      .toList()
                                      .length
                                      .toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.sp),
                                ),
                              ),
                            ],
                          )),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                          child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GridView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: 64,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 5,
                                crossAxisSpacing: 5.0,
                                mainAxisSpacing: 5.0,
                              ),
                              itemBuilder: (BuildContext context, int index) =>
                                  InkWell(
                                onTap: () {
                                  homeController.selectedList[index].isSelected
                                      .toggle();
                                  // homeController.selectedList.listen((value) {
                                  //   homeController.selectedList[index] =
                                  //       value as Selected;
                                  // });
                                  box.write(
                                      homeController.selectedDate.value +
                                          homeController.dropdown.value,
                                      jsonEncode(homeController.selectedList
                                          .map((e) => e.toJson())
                                          .toList()));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: (homeController.selectedList[index]
                                            .isSelected.isFalse)
                                        ? colors.green
                                        : colors.lightgrey,
                                    shape: BoxShape.circle,
                                  ),
                                  margin: const EdgeInsets.all(5),
                                  child: Center(
                                    child: Text(
                                      homeController
                                          .selectedList[index].name.value,
                                      style: TextStyle(
                                        color: (homeController
                                                .selectedList[index]
                                                .isSelected
                                                .isFalse)
                                            ? Colors.white
                                            : colors.darkgrey,
                                        //  color: item[index] ? Colors.white : Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.sp,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Divider(
                            height: 1.h,
                            thickness: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GridView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: 10,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 5,
                                crossAxisSpacing: 5.0,
                                mainAxisSpacing: 5.0,
                              ),
                              itemBuilder: (BuildContext context, int index) =>
                                  InkWell(
                                onTap: () {
                                  homeController
                                      .selectedList[index + 64].isSelected
                                      .toggle();
                                  // homeController.selectedList.listen((value) {
                                  //   homeController.selectedList[index] =
                                  //       value as Selected;
                                  // });
                                  box.write(
                                      homeController.selectedDate.value +
                                          homeController.dropdown.value,
                                      jsonEncode(homeController.selectedList
                                          .map((e) => e.toJson())
                                          .toList()));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: (homeController
                                            .selectedList[index + 64]
                                            .isSelected
                                            .isFalse)
                                        ? colors.green
                                        : colors.lightgrey,
                                    shape: BoxShape.circle,
                                  ),
                                  margin: const EdgeInsets.all(5),
                                  child: Center(
                                    child: Text(
                                      homeController
                                          .selectedList[index + 64].name.value,
                                      style: TextStyle(
                                        color: (homeController
                                                .selectedList[index + 64]
                                                .isSelected
                                                .isFalse)
                                            ? Colors.white
                                            : colors.darkgrey,
                                        //  color: item[index] ? Colors.white : Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.sp,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Divider(
                            height: 1.h,
                            thickness: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GridView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: 17,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 5,
                                crossAxisSpacing: 5.0,
                                mainAxisSpacing: 5.0,
                              ),
                              itemBuilder: (BuildContext context, int index) =>
                                  InkWell(
                                onTap: () {
                                  homeController
                                      .selectedList[index + 74].isSelected
                                      .toggle();
                                  // homeController.selectedList.listen((value) {
                                  //   homeController.selectedList[index] =
                                  //       value as Selected;
                                  // });
                                  box.write(
                                      homeController.selectedDate.value +
                                          homeController.dropdown.value,
                                      jsonEncode(homeController.selectedList
                                          .map((e) => e.toJson())
                                          .toList()));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: (homeController
                                            .selectedList[index + 74]
                                            .isSelected
                                            .isFalse)
                                        ? colors.green
                                        : colors.lightgrey,
                                    shape: BoxShape.circle,
                                  ),
                                  margin: const EdgeInsets.all(5),
                                  child: Center(
                                    child: Text(
                                      homeController
                                          .selectedList[index + 74].name.value,
                                      style: TextStyle(
                                        color: (homeController
                                                .selectedList[index + 74]
                                                .isSelected
                                                .isFalse)
                                            ? Colors.white
                                            : colors.darkgrey,
                                        //  color: item[index] ? Colors.white : Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.sp,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Divider(
                            height: 1.h,
                            thickness: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GridView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: 5,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 5,
                                crossAxisSpacing: 5.0,
                                mainAxisSpacing: 5.0,
                              ),
                              itemBuilder: (BuildContext context, int index) =>
                                  InkWell(
                                onTap: () {
                                  homeController
                                      .selectedList[index + 91].isSelected
                                      .toggle();
                                  // homeController.selectedList.listen((value) {
                                  //   homeController.selectedList[index] =
                                  //       value as Selected;
                                  // });
                                  box.write(
                                      homeController.selectedDate.value +
                                          homeController.dropdown.value,
                                      jsonEncode(homeController.selectedList
                                          .map((e) => e.toJson())
                                          .toList()));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: (homeController.selectedList[index+91]
                                            .isSelected.isFalse)
                                        ? colors.green
                                        : colors.lightgrey,
                                    shape: BoxShape.circle,
                                  ),
                                  margin: const EdgeInsets.all(5),
                                  child: Center(
                                    child: Text(
                                      homeController
                                          .selectedList[index + 91].name.value,
                                      style: TextStyle(
                                        color: (homeController
                                                .selectedList[index + 91]
                                                .isSelected
                                                .isFalse)
                                            ? Colors.white
                                            : colors.darkgrey,
                                        //  color: item[index] ? Colors.white : Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.sp,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Divider(
                            height: 1.h,
                            thickness: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GridView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: 8,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 5,
                                crossAxisSpacing: 5.0,
                                mainAxisSpacing: 5.0,
                              ),
                              itemBuilder: (BuildContext context, int index) =>
                                  InkWell(
                                onTap: () {
                                  homeController
                                      .selectedList[index + 96].isSelected
                                      .toggle();
                                  // homeController.selectedList.listen((value) {
                                  //   homeController.selectedList[index] =
                                  //       value as Selected;
                                  // });
                                  box.write(
                                      homeController.selectedDate.value +
                                          homeController.dropdown.value,
                                      jsonEncode(homeController.selectedList
                                          .map((e) => e.toJson())
                                          .toList()));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: (homeController
                                            .selectedList[index + 96]
                                            .isSelected
                                            .isFalse)
                                        ? colors.green
                                        : colors.lightgrey,
                                    shape: BoxShape.circle,
                                  ),
                                  margin: const EdgeInsets.all(5),
                                  child: Center(
                                    child: Text(
                                      homeController
                                          .selectedList[index + 96].name.value,
                                      style: TextStyle(
                                        color: (homeController
                                                .selectedList[index + 96]
                                                .isSelected
                                                .isFalse)
                                            ? Colors.white
                                            : colors.darkgrey,
                                        //  color: item[index] ? Colors.white : Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.sp,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                    )
                  ],
                ),
        ),
      ),
    );
  }
}
