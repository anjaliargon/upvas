import 'package:flutter/material.dart';
import 'package:flutterotp_firebase/app/Screen/Home/controller/Homecontroller.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

import '../UpvasList/upvaslist.dart';

class Homescreen extends GetView<HomeController> {
  Homescreen({Key? key}) : super(key: key);
  final homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    // HomeController homeController = HomeController();
    return GetBuilder<HomeController>(
      init: homeController,
      builder: (controller) => Obx(
        () => Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("UPVAS"),
            actions: [
              Center(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  homeController.selectedList
                      .where((element) {
                        return element.isSelected.isFalse;
                      })
                      .toList()
                      .length
                      .toString(),
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp),
                ),
              )),
              InkWell(
                onTap: () {
                  Get.to(upvaslist());
                },
                child: const Center(
                  child: Text(
                    "Next Page",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
          body: Column(
            children: [
              SizedBox(
                height: 2.h,
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Today's Date :"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(date,
                        style: TextStyle(
                            fontSize: 12.sp, fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    "Select : ",
                    style: TextStyle(fontSize: 12.sp),
                  ),
                  DropdownButton(
                    hint: const Text(
                      'select',
                    ),
                    onChanged: (value) {
                      homeController.dropdown(value);
                    },
                    value: homeController.dropdown.value,
                    items: homeController.list.map((selected) {
                      return DropdownMenuItem(
                        value: selected,
                        child: Text(
                          selected,
                          style: TextStyle(
                              fontSize: 12.sp, fontWeight: FontWeight.bold),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: 100,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 100,
                    crossAxisSpacing: 4,
                    mainAxisSpacing: 4,
                  ),
                  itemBuilder: (BuildContext context, int index) => InkWell(
                    onTap: () {
                      controller.selectedList[index].isSelected.toggle();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: (homeController
                                .selectedList[index].isSelected.isFalse)
                            ? Colors.green
                            : Colors.grey,
                        shape: BoxShape.circle,
                      ),
                      margin: const EdgeInsets.all(5),
                      child: Center(
                        child: Text(
                          "${(index + 1).toString()}",
                          style: TextStyle(
                            color: (homeController
                                    .selectedList[index].isSelected.isFalse)
                                ? Colors.white
                                : Colors.black,
                            //  color: item[index] ? Colors.white : Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15.sp,
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

  var date = DateFormat('dd-MM-yyyy').format(DateTime.now());
}
