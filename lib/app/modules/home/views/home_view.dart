import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  double widthDevice = Get.width;
  double heightDevice = Get.height;

  @override
  Widget build(BuildContext context) {
    // double widthDevice = MediaQuery.of(context).size.width;
    // double heightDevice = MediaQuery.of(context).size.height;
    double paddingTop =
        context.mediaQueryPadding.top; // mediaQueryPadding merupakan fitur getx
    double paddingBottom = MediaQuery.of(context).padding.bottom;

    AppBar myAppBar() {
      return AppBar(
        title: Text('Flexible'),
        centerTitle: true,
      );
    }

    double heightBody =
        heightDevice - myAppBar().preferredSize.height - paddingTop;

    return Scaffold(
      appBar: myAppBar(),
      body: Column(
        children: [
          Container(
            width: widthDevice * 0.5,
            height: heightBody * 0.5,
            color: Colors.orange,
          ),
          Container(
            width: widthDevice * 0.5,
            height: heightBody * 0.2,
            color: Colors.red,
          ),
          Container(
            width: widthDevice * 0.5,
            height: heightBody * 0.3,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
