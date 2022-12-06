import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            // floating: true,
            // snap: true,
            expandedHeight: 120,
            title: Text('Restorant'),
            centerTitle: true,
            flexibleSpace: Center(
              child: FlutterLogo(
                size: 200,
              ),
            ),
          ),
          // SliverGrid.count(
          //   crossAxisCount: 3,
          //   children: List.generate(
          //     12,
          //     (index) => Container(
          //       color: Color.fromARGB(
          //         250,
          //         Random().nextInt(256),
          //         Random().nextInt(256),
          //         Random().nextInt(256),
          //       ),
          //     ),
          //   ),
          // ),
          SliverGrid.extent(
            // kalau di rotate max pixel tdk berubah atau ukuran tetap sama
            maxCrossAxisExtent: 50,
            children: List.generate(
              40,
              (index) => Container(
                color: Color.fromARGB(
                  250,
                  Random().nextInt(256),
                  Random().nextInt(256),
                  Random().nextInt(256),
                ),
              ),
            ),
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: MyDelegateClass(
              title: "Menu Makanan",
              id: "501",
              maxExtent: 250,
              minExtent: 200,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Container(
                height: 100,
                child: Center(
                  child: Text("Menu ${index + 1}"),
                ),
              ),
              childCount: 20,
            ),
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: MyDelegateClass(
              title: "Menu Minuman",
              id: "500",
              maxExtent: 250,
              minExtent: 200,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Container(
                height: 100,
                child: Center(
                  child: Text("Menu ${index + 1}"),
                ),
              ),
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}

class MyDelegateClass extends SliverPersistentHeaderDelegate {
  MyDelegateClass({
    required this.title,
    required this.id,
    required this.maxExtent,
    required this.minExtent,
  });

  double maxExtent;
  double minExtent;
  String title;
  String id;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // widget yang akan di build
    return Stack(
      children: [
        Container(
          width: Get.width,
          child: Image.network(
            "https://picsum.photos/500/$id",
            fit: BoxFit.cover,
          ),
        ),
        Center(
          child: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40,
            ),
          ),
        ),
      ],
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
