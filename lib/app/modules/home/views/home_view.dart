import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  double widthDevice = Get.width;
  double heightDevice = Get.height;

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Adaptive'),
              centerTitle: true,
            ),
            body: Center(
              child: Container(
                width: 230,
                height: 230,
                color: Colors.amber,
              ),
            ),
          );
        } else {
          return Scaffold(
            appBar: AppBar(
              title: Text('Adaptive'),
              centerTitle: true,
            ),
            body: Center(
              child: Container(
                width: 250,
                height: 280,
                color: Colors.red,
              ),
            ),
          );
        }
      },
    );
  }
}
