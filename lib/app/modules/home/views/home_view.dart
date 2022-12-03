import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  double myKubus = Get.height / 3;

  DecorationTween myDec = DecorationTween(
    begin: BoxDecoration(
      color: Colors.pink,
      // rumus border radius bagus panjang-lebar or sisi / 2 / 3
      borderRadius: BorderRadius.circular(Get.height / 3 * 0.5 / 3),
    ),
    end: BoxDecoration(
      color: Colors.lightGreenAccent,
      borderRadius: BorderRadius.circular(Get.height / 3 * 0.5),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Box Transition'),
        centerTitle: true,
      ),
      body: Center(
        child: DecoratedBoxTransition(
          decoration: myDec.animate(controller.animationC),
          child: Container(
            width: myKubus,
            height: myKubus,
          ),
        ),
      ),
    );
  }
}
