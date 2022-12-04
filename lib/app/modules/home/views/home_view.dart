import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(150),
            topRight: Radius.circular(5),
            bottomRight: Radius.circular(50),
            bottomLeft: Radius.circular(150),
          ),
          child: Container(
            height: 300,
            width: 300,
            color: Colors.grey.shade300,
            child: FlutterLogo(
              size: 300,
            ),
          ),
        ),
      ),
    );
  }
}
