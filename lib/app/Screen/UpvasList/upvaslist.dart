import 'package:flutter/material.dart';
import 'package:flutterotp_firebase/app/Constant/Colors.dart';
import 'package:flutterotp_firebase/app/Screen/UpvasList/upvasCantroller.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class UpvasList extends GetView<Upvascantroller> {
  UpvasList({Key? key}) : super(key: key);
  final upvasController = Get.put(Upvascantroller());

  @override
  Widget build(BuildContext context) {
    MyColor colors = MyColor();
    return GetBuilder<Upvascantroller>(
      init: upvasController,
      builder: (controller) => Obx(
        () => Scaffold(
          body: Column(
            children: [
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      upvasController.chooseDate(context: context);
                    },
                    child: Container(
                      height: 50,
                      width: 170,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: colors.grey),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Obx(
                            () => Text(
                              upvasController.selectedDate.value,
                              style: TextStyle(
                                  fontSize: 12.sp, color: colors.offgrey),
                            ),
                          ),
                          // Text("03-13-2023",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: colors.offgrey),),,
                          const Image(
                            image: AssetImage('assets/icons_image/date.png'),
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
                              image:
                                  AssetImage('assets/icons_image/dropdown.png'),
                              height: 1,
                              width: 1,
                            ),
                          ),
                          hint: const Text(
                            'select',
                          ),
                          onChanged: (value) {
                            upvasController.dropdown(value);
                          },
                          value: upvasController.dropdown.value,
                          items: upvasController.dropdownList.map((selected) {
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
                              fontSize: 13.sp, fontWeight: FontWeight.w600),
                        ),
                        const CircleAvatar(
                          backgroundColor: Colors.green,
                          radius: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15, left: 5),
                          child: Text(
                            upvasController.selectedList
                                .where((element) {
                                  return element.isSelected.isFalse;
                                })
                                .toList()
                                .length
                                .toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12.sp),
                          ),
                        ),
                      ],
                    )),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                    itemCount: upvasController.selectedList.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5,
                      crossAxisSpacing: 5.0,
                      mainAxisSpacing: 5.0,
                    ),
                    itemBuilder: (BuildContext context, int index) => InkWell(
                      onTap: () {
                        upvasController.selectedList[index].isSelected.toggle();
                        upvasController.selectedList.listen((value) {
                          upvasController.selectedList[index] =
                              value as Selectedupvaslist;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: (upvasController
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
                              color: (upvasController
                                      .selectedList[index].isSelected.isFalse)
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
