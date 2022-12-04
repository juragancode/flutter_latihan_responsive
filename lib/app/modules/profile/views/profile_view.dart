import 'package:flutter/material.dart';
import 'package:flutter_latihan_responsive/app/routes/app_pages.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile View'),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => Get.toNamed(Routes.HOME),
          child: Hero(
            tag: "aselole",
            child: ClipOval(
              child: Container(
                height: 340,
                width: 340,
                child: Image.network(
                  "https://picsum.photos/500/500",
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
