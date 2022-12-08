import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    // controller.bacaData();

    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              controller.resetData();
            },
            icon: Icon(Icons.restore),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
                  '${controller.data}',
                  style: TextStyle(fontSize: 20),
                )),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () => controller.decrement(),
                  child: Text("-"),
                ),
                ElevatedButton(
                  onPressed: () => controller.increment(),
                  child: Text("+"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
