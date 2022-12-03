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
            () => Container(
              width: 230,
              height: 230,
              color: Colors.green,
              child: AnimatedContainer(
                curve: Curves.slowMiddle,
                duration: Duration(milliseconds: 500),
                alignment: controller.selected.isFalse
                    ? Alignment.topLeft
                    : Alignment.center,
                child: Text("Haloooo!!!!"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
