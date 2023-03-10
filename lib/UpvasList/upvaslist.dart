import 'package:flutter/material.dart';
import 'package:flutterotp_firebase/UpvasList/upvasCantroller.dart';

import 'package:get/get.dart';

class upvaslist extends GetView<Upvascantroller> {
   upvaslist({Key? key}) : super(key: key);
   final upvasController = Get.put(Upvascantroller());

  @override
  Widget build(BuildContext context) {
    return  GetBuilder<Upvascantroller>(
        init: upvasController,
        builder: (controller) => Scaffold(
          appBar: AppBar(
            title: Text("List"),
          ),
        ),
    );
  }
}
