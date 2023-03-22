import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutterotp_firebase/app/Screen/Location/Controller/LocationController.dart';
import 'package:flutterotp_firebase/app/routes/app_pages.dart';
import 'package:get/get.dart';
import '../../Constant/Colors.dart';
import '../../Constant/app_constant.dart';

class locationScreen extends GetWidget<LocationController> {
  locationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    MyColor colors = MyColor();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: colors.white,
          elevation: 0,
          title: Text(timeConstant.chooeslocation,
              style: TextStyle(color: colors.black)),
          centerTitle: true,
          actions: [
            TextButton(
                child: Text("Save"),
                onPressed: () async {
                  controller.data();
                  Get.offAllNamed(Routes.MAINHOME,
                      arguments: {"Location": controller.location});
                }),
          ],
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              itemCount: controller.selectedList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(controller.selectedList[index].name),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Obx(() => Row(
                            children: [
                              Radio(
                                value: controller.locationlist[0],
                                groupValue: controller.location[index].toString(),
                                onChanged: (value) {
                                  controller.location[index] = value!;
                                },
                              ),
                              Text(
                                "Kundal",
                                style: TextStyle(
                                    color: (controller.location[index] == controller.locationlist[0])
                                        ? Colors.blue
                                        : Colors.black),
                              ),
                            ],
                          )),
                      Obx(() => Row(
                            children: [
                              Radio(
                                value: controller.locationlist[1],
                                groupValue: controller.location[index].toString(),
                                onChanged: (value) {
                                  controller.location[index] = value!;
                                },
                              ),
                              Text(
                                "Vadodara",
                                style: TextStyle(
                                    color:
                                        (controller.location[index] == controller.locationlist[1])
                                            ? Colors.blue
                                            : Colors.black),
                              ),
                            ],
                          )),
                      Obx(() => Row(
                            children: [
                              Radio(
                                value: controller.locationlist[2],
                                groupValue: controller.location[index].toString(),
                                onChanged: (value) {
                                  controller.location[index] = value!;
                                  // controller.locationvalue.value =  selectedlocation[index];
                                },
                              ),
                              Text(
                                "Gam",
                                style: TextStyle(
                                    color: (controller.location[index] == controller.locationlist[2])
                                        ? Colors.blue
                                        : Colors.black),
                              ),
                            ],
                          )),
                    ],
                  ),
                );
              },
            )));
  }
}
