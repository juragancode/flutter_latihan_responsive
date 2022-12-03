import 'dart:math';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  double widthDevice = Get.width;
  double heightDevice = Get.height;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Widget'),
        centerTitle: true,
      ),
      body: Center(
        child: MyWidget(myC: controller.animationC),
      ),
    );
  }
}

class MyWidget extends AnimatedWidget {
  MyWidget({Key? key, required this.myC}) : super(key: key, listenable: myC);

  AnimationController myC;

  get progress => listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: progress.value * 2 * pi,
      child: Container(
        width: 230,
        height: 230,
        color: Colors.purple,
      ),
    );
  }
}
