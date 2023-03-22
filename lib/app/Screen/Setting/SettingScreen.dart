import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Constant/Colors.dart';
import '../../Constant/app_constant.dart';
import 'Controller/SettingController.dart';

class SettingScreen extends GetWidget<SettingController> {
  SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final RxList<String> selectedlocation = RxList<String>(
    //     List.generate(controller.selectedList.length, (index) => 'Kundal'));
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
                child: Text("Update"),
                onPressed: () async {
                  // print(selectedlocation.toString());
                  // Get.offAllNamed(Routes.MAINHOME,arguments: selectedlocation.toString());
                }),
          ],
        ),
        // body: Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: ListView.builder(
        //       itemCount: controller.selectedList.length,
        //       itemBuilder: (context, index) {
        //         return ListTile(
        //           title: Text(controller.selectedList[index].name),
        //           trailing: Row(
        //             mainAxisSize: MainAxisSize.min,
        //             children: [
        //               Obx(() => Row(
        //                 children: [
        //
        //                   Radio(
        //                     value: "Kundal",
        //                     groupValue: selectedlocation[index].toString(),
        //                     onChanged: (value) {
        //                       selectedlocation[index] = value!;
        //                       print(selectedlocation[index]);
        //                     },
        //                   ),
        //                   Text("Kundal",
        //                     style: TextStyle(
        //                         color: (selectedlocation[index]=="Kundal")? Colors.blue: Colors.black
        //                     ),),
        //                 ],
        //               )),
        //               Obx(() => Row(
        //                 children: [
        //
        //                   Radio(
        //                     value: "Vadodara",
        //                     groupValue: selectedlocation[index].toString(),
        //                     onChanged: (value) {
        //                       selectedlocation[index] = value!;
        //                     },
        //                   ),
        //                   Text("Vadodara",
        //                     style: TextStyle(
        //                         color: (selectedlocation[index]=="Vadodara")? Colors.blue: Colors.black
        //                     ),
        //                   ),
        //                 ],
        //               )),
        //               Obx(() => Row(
        //                 children: [
        //                   Radio(
        //                     value: 'Gam',
        //                     groupValue: selectedlocation[index].toString(),
        //                     onChanged: (value) {
        //                       selectedlocation[index] = value!;
        //                     },
        //                   ),
        //                   Text("Gam",
        //                     style: TextStyle(
        //                         color: (selectedlocation[index]=="Gam")? Colors.blue: Colors.black
        //                     ),
        //                   ),
        //
        //                 ],
        //               )),
        //             ],
        //           ),
        //         );
        //       },
        //     ))
    //
        );
  }
}