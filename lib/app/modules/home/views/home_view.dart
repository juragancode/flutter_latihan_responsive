import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  double myKubus = Get.height / 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fade Transition'),
        centerTitle: true,
      ),
      body: Center(
        child: FadeTransition(
          opacity: CurvedAnimation(
              parent: controller.animationC, curve: Curves.fastOutSlowIn),
          child: Container(
            width: myKubus,
            height: myKubus,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
