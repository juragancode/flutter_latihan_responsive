import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  double widthDevice = Get.width;
  double heightDevice = Get.height;

  @override
  Widget build(BuildContext context) {
    return context.isPortrait ? WidgetPotrait() : WidgetLanscape();
  }
}

class WidgetPotrait extends StatelessWidget {
  const WidgetPotrait({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppBar myAppBar() {
      return AppBar(
        title: Text('Adaptive'),
        centerTitle: true,
      );
    }

    return Scaffold(
      appBar: myAppBar(),
      body: Center(
          child: Container(
        width: 230,
        height: 230,
        color: Colors.amber,
      )),
    );
  }
}

class WidgetLanscape extends StatelessWidget {
  const WidgetLanscape({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppBar myAppBar() {
      return AppBar(
        title: Text('Adaptive'),
        centerTitle: true,
      );
    }

    return Scaffold(
      appBar: myAppBar(),
      body: Center(
          child: Container(
        width: 250,
        height: 280,
        color: Colors.red,
      )),
    );
  }
}
