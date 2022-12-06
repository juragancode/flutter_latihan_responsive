import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   // title: Text('HomeView'),
      //   flexibleSpace: Center(
      //     child: FlutterLogo(
      //       size: 100,
      //     ),
      //   ),
      //   centerTitle: true,
      // ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            title: Text('Sliver List'),
            centerTitle: true,
            flexibleSpace: Center(
              child: FlutterLogo(
                size: 200,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  height: 200,
                  color: Colors.pink,
                  child: Center(
                    child: Text(
                      "Halo 1",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  color: Colors.limeAccent,
                  child: Center(
                    child: Text(
                      "Halo 2",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  color: Colors.purpleAccent,
                  child: Center(
                    child: Text(
                      "Halo 3",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  color: Colors.orange,
                  child: Center(
                    child: Text(
                      "Halo 4",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  color: Colors.greenAccent.shade400,
                  child: Center(
                    child: Text(
                      "Halo 5",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
