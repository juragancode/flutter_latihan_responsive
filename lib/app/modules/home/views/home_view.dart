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
            () => AnimatedCrossFade(
              firstChild: Container(
                width: 230,
                height: 230,
                color: Colors.redAccent,
              ),
              secondChild: FlutterLogo(
                size: 300,
              ),
              crossFadeState: controller.selected.isFalse
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: Duration(milliseconds: 1000),
            ),
          ),
        ),
      ),
    );
  }
}
