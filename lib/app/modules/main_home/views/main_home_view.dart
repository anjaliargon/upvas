import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/main_home_controller.dart';

class MainHomeView extends GetView<MainHomeController> {
  const MainHomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MainHomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'MainHomeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
