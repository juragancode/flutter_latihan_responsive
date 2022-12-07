import 'package:flutter/material.dart';
import 'package:flutter_latihan_responsive/create.dart';
import 'package:flutter_latihan_responsive/databaseInstance.dart';
import 'package:flutter_latihan_responsive/productModel.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  DatabaseIntsance databaseIntsance = DatabaseIntsance();

  Future _refresh() async {
    setState(() {});
  }

  @override
  void initState() {
    databaseIntsance.database();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("sqflite"),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(
                CreateScreen(),
              );
            },
            icon: Icon(Icons.add),
          )
        ],
      ),
      body: FutureBuilder<List<ProductModel>>(
        future: databaseIntsance.all(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data!.length == 0) {
              return Center(
                child: Text("Data Empty..."),
              );
            }
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(snapshot.data![index].name ?? ""),
                subtitle: Text(snapshot.data![index].category ?? ""),
              ),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(
                color: Colors.green,
              ),
            );
          }
        },
      ),
    );
  }
}
