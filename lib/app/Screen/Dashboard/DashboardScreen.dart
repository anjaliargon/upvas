import 'package:flutter/material.dart';
import 'package:flutterotp_firebase/app/Constant/Colors.dart';
import 'package:flutterotp_firebase/app/Screen/Dashboard/DashboardController.dart';
import 'package:flutterotp_firebase/app/Screen/Home/homescreen.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../UpvasList/upvaslist.dart';


class Dashboard extends GetView<DashboardController> {
  Dashboard({Key? key}) : super(key: key);
  final dashboardController = Get.put(DashboardController());
  @override
  Widget build(BuildContext context) {
    MyColor colors = MyColor();
    return Obx((){
      return Scaffold(
        appBar: AppBar(
          toolbarHeight: 2.h,
          backgroundColor: colors.white,
          elevation: 0,
          bottom: TabBar(
            controller: dashboardController.tabController!.value,
            indicatorColor: colors.darkbrown,
            unselectedLabelColor: colors.offgrey,
            labelColor: colors.darkbrown,
            tabs: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5,right: 2),
                    child: (dashboardController.selectedIndex.value== 0)? Image.asset('assets/icons_image/home_select.png',height: 22,width: 22):Image.asset('assets/icons_image/home_unselect.png',height: 22,width: 22),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text("Home",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18)),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 3,right: 2),
                    child: (dashboardController.selectedIndex.value == 0)?Image.asset('assets/icons_image/menu_unselect.png',height: 20,width: 20):Image.asset('assets/icons_image/menu_select.png',height: 20,width: 20),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 3,left: 5),
                    child: Text("Upavas List",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18)),
                  )
                ],
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: dashboardController.tabController!.value,
          physics: const NeverScrollableScrollPhysics(),
          children: [Homescreen(),UpavaslistView()]
        ),
      );
    });
  }
}