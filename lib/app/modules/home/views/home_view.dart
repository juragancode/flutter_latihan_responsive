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
        child: Container(
          width: 230,
          height: 230,
          color: Colors.purple,
          child: Stack(
            children: [
              AnimatedBuilder(
                child: Container(
                  width: 130,
                  height: 130,
                  color: Colors.amber,
                ),
                // bisa digunakan untuk membuat animasi scaner
                // kekurangan karena looping akibatnya berat
                animation: controller.animationC,
                builder: (context, widget) {
                  return AnimatedPositioned(
                    curve: Curves.fastLinearToSlowEaseIn,
                    duration: Duration(milliseconds: 500),
                    top: 2 *
                        (0.5 - (0.5 - controller.animationC.value).abs()) *
                        100,
                    left: controller.animationC.value * 100,
                    child: widget!,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
