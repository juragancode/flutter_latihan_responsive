import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  double myKubus = Get.height / 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lottie'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 400,
          width: 400,
          child: Lottie.network(
            "https://assets10.lottiefiles.com/packages/lf20_6yhhrbk6.json",
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
