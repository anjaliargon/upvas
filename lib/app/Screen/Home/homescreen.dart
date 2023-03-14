import 'package:flutter/material.dart';
import 'package:flutterotp_firebase/app/Constant/Colors.dart';
import 'package:flutterotp_firebase/app/Screen/Home/controller/Homecontroller.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

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
                                hint: const Text(
                                  'select',
                                ),
                                onChanged: (value) {
                                  homeController.dropdown(value);
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
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GridView.builder(
                          itemCount: homeController.selectedList.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 5,
                            crossAxisSpacing: 5.0,
                            mainAxisSpacing: 5.0,
                          ),
                          itemBuilder: (BuildContext context, int index) =>
                              InkWell(
                            onTap: () {
                              controller.selectedList[index].isSelected
                                  .toggle();
                              homeController.selectedList.listen((value) {
                                homeController.selectedList[index] =
                                    value as Selected;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: (homeController
                                        .selectedList[index].isSelected.isFalse)
                                    ? colors.green
                                    : colors.lightgrey,
                                shape: BoxShape.circle,
                              ),
                              margin: const EdgeInsets.all(5),
                              child: Center(
                                child: Text(
                                  (index + 1).toString(),
                                  style: TextStyle(
                                    color: (homeController.selectedList[index]
                                            .isSelected.isFalse)
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
                    )
                  ],
                ),
        ),
      ),
    );
  }
}
