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
    final RxList<String> selectedlocation = RxList<String>(
        List.generate(controller.selectedList.length, (index) => controller.location[0]));
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
                  print(selectedlocation.toString());
                  Get.offAllNamed(Routes.MAINHOME,
                      arguments: {"Location": selectedlocation});
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
                                value: controller.location[0],
                                groupValue: selectedlocation[index].toString(),
                                onChanged: (value) {
                                  selectedlocation[index] = value!;
                                },
                              ),
                              Text(
                                "Kundal",
                                style: TextStyle(
                                    color: (selectedlocation[index] == controller.location[0])
                                        ? Colors.blue
                                        : Colors.black),
                              ),
                            ],
                          )),
                      Obx(() => Row(
                            children: [
                              Radio(
                                value: controller.location[1],
                                groupValue: selectedlocation[index].toString(),
                                onChanged: (value) {
                                  selectedlocation[index] = value!;
                                },
                              ),
                              Text(
                                "Vadodara",
                                style: TextStyle(
                                    color:
                                        (selectedlocation[index] == controller.location[1])
                                            ? Colors.blue
                                            : Colors.black),
                              ),
                            ],
                          )),
                      Obx(() => Row(
                            children: [
                              Radio(
                                value: controller.location[2],
                                groupValue: selectedlocation[index].toString(),
                                onChanged: (value) {
                                  selectedlocation[index] = value!;
                                },
                              ),
                              Text(
                                "Gam",
                                style: TextStyle(
                                    color: (selectedlocation[index] == controller.location[2])
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
