import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
      body: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: 200,
          minWidth: 200,
          maxHeight: 250,
          maxWidth: 250,
        ),
        child: Container(
          width: 230,
          height: 230,
          color: Colors.red,
        ),
      ),
    );
  }
}
