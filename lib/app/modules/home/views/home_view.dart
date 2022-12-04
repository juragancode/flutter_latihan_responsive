import 'package:avatar_glow/avatar_glow.dart';
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
        child: AvatarGlow(
          endRadius: 150,
          glowColor: Colors.orange,
          // curve: Curves.fastLinearToSlowEaseIn,
          duration: Duration(
            milliseconds: 600,
          ),
          child: ClipOval(
            child: Container(
              height: 150,
              width: 150,
              child: Image.network(
                "https://picsum.photos/350/350",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
