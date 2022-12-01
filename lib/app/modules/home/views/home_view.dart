import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    double widthDevice = MediaQuery.of(context).size.width;
    double heightDevice = MediaQuery.of(context).size.height;
    double paddingTop = MediaQuery.of(context).padding.top;
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
      body: Wrap(
        direction: Axis.vertical, // standart direction horizontal
        children: [
          Container(
            margin: EdgeInsets.all(8),
            width: widthDevice * 0.12,
            height: 45,
            color: Colors.orange,
          ),
          Container(
            margin: EdgeInsets.all(8),
            width: widthDevice * 0.12,
            height: 45,
            color: Colors.orange,
          ),
          Container(
            margin: EdgeInsets.all(8),
            width: widthDevice * 0.12,
            height: 45,
            color: Colors.orange,
          ),
          Container(
            margin: EdgeInsets.all(8),
            width: widthDevice * 0.12,
            height: 45,
            color: Colors.orange,
          ),
          Container(
            margin: EdgeInsets.all(8),
            width: widthDevice * 0.12,
            height: 45,
            color: Colors.orange,
          ),
          Container(
            margin: EdgeInsets.all(8),
            width: widthDevice * 0.12,
            height: 45,
            color: Colors.orange,
          ),
          Container(
            margin: EdgeInsets.all(8),
            width: widthDevice * 0.12,
            height: 45,
            color: Colors.orange,
          ),
          Container(
            margin: EdgeInsets.all(8),
            width: widthDevice * 0.12,
            height: 45,
            color: Colors.orange,
          ),
          Container(
            margin: EdgeInsets.all(8),
            width: widthDevice * 0.12,
            height: 45,
            color: Colors.orange,
          ),
          Container(
            margin: EdgeInsets.all(8),
            width: widthDevice * 0.12,
            height: 45,
            color: Colors.orange,
          ),
          Container(
            margin: EdgeInsets.all(8),
            width: widthDevice * 0.12,
            height: 45,
            color: Colors.orange,
          ),
          Container(
            margin: EdgeInsets.all(8),
            width: widthDevice * 0.12,
            height: 45,
            color: Colors.orange,
          ),
          Container(
            margin: EdgeInsets.all(8),
            width: widthDevice * 0.12,
            height: 45,
            color: Colors.orange,
          ),
          Container(
            margin: EdgeInsets.all(8),
            width: widthDevice * 0.12,
            height: 45,
            color: Colors.orange,
          ),
          Container(
            margin: EdgeInsets.all(8),
            width: widthDevice * 0.12,
            height: 45,
            color: Colors.orange,
          ),
          Container(
            margin: EdgeInsets.all(8),
            width: widthDevice * 0.12,
            height: 45,
            color: Colors.orange,
          ),
          Container(
            margin: EdgeInsets.all(8),
            width: widthDevice * 0.12,
            height: 45,
            color: Colors.orange,
          ),
          Container(
            margin: EdgeInsets.all(8),
            width: widthDevice * 0.12,
            height: 45,
            color: Colors.orange,
          ),
          Container(
            margin: EdgeInsets.all(8),
            width: widthDevice * 0.12,
            height: 45,
            color: Colors.orange,
          ),
          Container(
            margin: EdgeInsets.all(8),
            width: widthDevice * 0.12,
            height: 45,
            color: Colors.orange,
          ),
          Container(
            margin: EdgeInsets.all(8),
            width: widthDevice * 0.12,
            height: 45,
            color: Colors.orange,
          ),
          Container(
            margin: EdgeInsets.all(8),
            width: widthDevice * 0.12,
            height: 45,
            color: Colors.orange,
          ),
          Container(
            margin: EdgeInsets.all(8),
            width: widthDevice * 0.12,
            height: 45,
            color: Colors.orange,
          ),
          Container(
            margin: EdgeInsets.all(8),
            width: widthDevice * 0.12,
            height: 45,
            color: Colors.orange,
          ),
          Container(
            margin: EdgeInsets.all(8),
            width: widthDevice * 0.12,
            height: 45,
            color: Colors.orange,
          ),
          Container(
            margin: EdgeInsets.all(8),
            width: widthDevice * 0.12,
            height: 45,
            color: Colors.orange,
          ),
          Container(
            margin: EdgeInsets.all(8),
            width: widthDevice * 0.12,
            height: 45,
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}
