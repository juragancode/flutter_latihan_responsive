import 'package:flutter/material.dart';
import 'package:flutter_latihan_responsive/create.dart';
import 'package:flutter_latihan_responsive/databaseInstance.dart';
import 'package:flutter_latihan_responsive/productModel.dart';

import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  DatabaseIntsance databaseIntsance = DatabaseIntsance();

  @override
  void initState() {
    databaseIntsance.database();
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
