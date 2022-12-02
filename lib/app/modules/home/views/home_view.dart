import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  double widthDevice = Get.width;
  double heightDevice = Get.height;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => controller.selected.toggle(),
          child: Obx(
            () => AnimatedContainer(
              curve: Curves.fastOutSlowIn,
              duration: Duration(seconds: 1),
              width: controller.selected.isFalse ? 230 : 350,
              height: controller.selected.isFalse ? 230 : 150,
              color: controller.selected.isFalse ? Colors.green : Colors.orange,
            ),
          ),
        ),
      ),
    );
  }
}
