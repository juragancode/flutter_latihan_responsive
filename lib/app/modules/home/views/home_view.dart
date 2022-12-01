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
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: 55,
                width: 55,
                color: Colors.lightBlueAccent,
              ),
              Expanded(
                child: ListTile(
                  tileColor: Colors.limeAccent,
                  leading: Icon(Icons.check_box),
                  title: Text("Checklist"),
                ),
              ),
              Container(
                height: 55,
                width: 55,
                color: Colors.greenAccent,
              ),
            ],
          ),
//           Container(
//             height: heightBody * 0.5,
//             width: widthDevice * 0.5,
//             color: Colors.pink,
//           ),

//           Container(
//             height: heightBody * 0.1,
//             width: widthDevice * 0.5,
//             color: Colors.orange,
//           ),
// // Expanded digunakan untuk sisa
//           Expanded(
//             child: Container(
//               width: widthDevice * 0.5,
//               color: Colors.lightGreen.shade700,
//             ),
//           ),
          // Container(
          //   width: widthDevice * 0.5,
          //   height: heightBody * 0.5,
          //   color: Colors.pink,
          // ),
          // Container(
          //   width: widthDevice * 0.5,
          //   height: heightBody * 0.3,
          //   color: Colors.orange,
          // ),
          // Container(
          //   width: widthDevice * 0.5,
          //   height: heightBody * 0.2,
          //   color: Colors.lightGreen.shade700,
          // ),
        ],
      ),
    );
  }
}
