import 'package:flutter/material.dart';
import 'package:flutterotp_firebase/app/Constant/Colors.dart';
import 'package:flutterotp_firebase/app/Constant/color_constant.dart';
import 'package:flutterotp_firebase/app/Constant/sizeConstant.dart';
import 'package:flutterotp_firebase/app/Screen/UpvasList/upvasCantroller.dart';
import 'package:flutterotp_firebase/app/routes/app_pages.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class UpavaslistView extends GetWidget<UpavaslistController> {
  const UpavaslistView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyColor colors = MyColor();
    return GetBuilder<UpavaslistController>(
        init: UpavaslistController(),
        builder: (controller) {
          return Obx(() {
            return Scaffold(
                body: (controller.hasData.isFalse)
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 50,
                                      width: 170,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 1, color: colors.grey),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(10))),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: InkWell(
                                          onTap: () {
                                            controller.datePick(
                                                context: Get.context!);
                                          },
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Text(
                                                controller.selectedDate.value,
                                                style: TextStyle(
                                                    fontSize: 12.sp,
                                                    color: colors.offgrey),
                                              ),
                                              const SizedBox(width: 10),
                                              Image.asset(
                                                  "assets/icons_image/date.png",
                                                  height: 20),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 50,
                                    width: 170,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: colors.grey),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: DropdownButton<String>(
                                        isExpanded: true,
                                        value: controller.dropdownValue.value,
                                        elevation: 16,
                                        style: TextStyle(
                                            fontFamily: 'JosefinSans',
                                            color: appTheme.textGrayColor,
                                            fontWeight: FontWeight.w500),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(12)),
                                        icon: Image.asset(
                                            "assets/icons_image/dropdown.png",
                                            height: 20),
                                        underline: Container(
                                          // height: 2,
                                          color: Colors.white,
                                        ),
                                        onChanged: (String? value) {
                                          // This is called when the user selects an item.
                                          controller.dropdownValue.value =
                                              value!;
                                          controller.data();
                                        },
                                        items: controller.dropdown
                                            .map<DropdownMenuItem<String>>(
                                                (String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(
                                              value,
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
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 8.0, left: 8, bottom: 8),
                                    child: Row(
                                      children: [
                                        const Text("Active",
                                            style: TextStyle(fontSize: 15)),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        CircleAvatar(
                                            radius: 5,
                                            backgroundColor:
                                                appTheme.textGrayColor),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          controller.getDataList
                                              .where((element) {
                                                return element
                                                    .isSelected.isTrue;
                                              })
                                              .toList()
                                              .length
                                              .toString(),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5.0),
                                  child: (!isNullEmptyOrFalse(
                                          controller.dataList))
                                      ? Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: GridView.builder(
                                            gridDelegate:
                                                const SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount: 5,
                                                    crossAxisSpacing: 5,
                                                    mainAxisSpacing: 5),
                                            itemCount:
                                                controller.dataList.length,
                                            itemBuilder: (context, index) {
                                              return Obx(() {
                                                return Container(
                                                    decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color: appTheme
                                                            .unSelectedColor),
                                                    child: Center(
                                                        child: Text(
                                                      (controller
                                                          .dataList[index]
                                                          .toString()),
                                                      style: TextStyle(
                                                          color: appTheme
                                                              .textGrayColor,
                                                          fontSize: 20),
                                                    )));
                                              });
                                            },
                                          ),
                                        )
                                      : const Center(
                                          child: Text("No Data Found"),
                                        ),
                                ),
                              )
                            ],
                          ),
                          Positioned(
                              bottom: 35,
                              child: InkWell(
                                onTap: () {
                                  Get.toNamed(Routes.Add_upvas);
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            offset: const Offset(0, 6),
                                            spreadRadius: 4,
                                            blurRadius: 40,
                                            color: appTheme.primaryTheme
                                                .withOpacity(0.2))
                                      ],
                                      color: appTheme.primaryTheme,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(12))),
                                  height: 50,
                                  width: 140,
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          "assets/icons_image/add_upavas.png",
                                          height: 16,
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        const Text(
                                          "Add Upvas",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14),
                                        ),
                                      ]),
                                ),
                              ))
                        ],
                      ));
          });
        });
  }
}
