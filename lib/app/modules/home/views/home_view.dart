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
          child: Container(
            width: 230,
            height: 230,
            color: Colors.purple,
            child: Stack(
              children: [
                Obx(
                  () => AnimatedPositioned(
                    curve: Curves.easeOutBack,
                    duration: Duration(milliseconds: 500),
                    top: controller.selected.isFalse ? 0 : 50,
                    left: controller.selected.isFalse ? 0 : 50,
                    child: Container(
                      width: 130,
                      height: 130,
                      color: Colors.amber,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
