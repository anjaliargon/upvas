import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutterotp_firebase/app/Screen/Home/controller/Selectedmodel.dart';
import 'package:flutterotp_firebase/app/Screen/Location/Controller/LocationController.dart';
import 'package:flutterotp_firebase/app/routes/app_pages.dart';
import 'package:flutterotp_firebase/main.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../Constant/Colors.dart';
import '../../Constant/app_constant.dart';

class locationScreen extends GetWidget<LocationController> {
  locationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final RxList<String> selectedlocation = RxList<String>(
        List.generate(controller.selectedList.length, (index) => 'Kundal'));
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
                  // Get.offAllNamed(Routes.MAINHOME)
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
                  subtitle: Obx(() => Text(selectedlocation[index].toString())),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Obx(() => Row(
                            children: [
                              const Text("Kundal"),
                              Radio(
                                value: "Kundal",
                                groupValue: selectedlocation[index].toString(),
                                onChanged: (value) {
                                  selectedlocation[index] = value!;
                                  print(selectedlocation[index]);
                                },
                              ),
                            ],
                          )),
                      Obx(() => Row(
                            children: [
                              const Text("Vadodara"),
                              Radio(
                                value: "Vadodara",
                                groupValue: selectedlocation[index].toString(),
                                onChanged: (value) {
                                  selectedlocation[index] = value!;
                                },
                              ),
                            ],
                          )),
                      Obx(() => Row(
                            children: [
                              const Text("Gam"),
                              Radio(
                                value: 'Gam',
                                groupValue: selectedlocation[index].toString(),
                                onChanged: (value) {
                                  selectedlocation[index] = value!;
                                },
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
