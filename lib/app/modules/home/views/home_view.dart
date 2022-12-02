import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  double widthDevice = Get.width;
  double heightDevice = Get.height;

  @override
  Widget build(BuildContext context) {
    return WidgetPotrait();
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
        // child: (MediaQuery.of(context).orientation == Orientation.portrait)
        child: (MediaQuery.of(context).orientation == Orientation.portrait)
            ? Container(
                width: 230,
                height: 230,
                color: Colors.amber,
              )
            : Container(
                width: 280,
                height: 200,
                color: Colors.red,
              ),
      ),
    );
  }
}
