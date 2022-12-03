import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  RxBool selected = false.obs;

  late AnimationController animationC = AnimationController(
    vsync: this,
    duration: Duration(
      milliseconds: 700,
    ),
  )..repeat(reverse: true);
}
