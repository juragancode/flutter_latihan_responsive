import 'package:flutter/material.dart';
import 'package:flutter_latihan_responsive/databaseInstance.dart';

class CreateScreen extends StatefulWidget {
  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  // const CreateScreen({Key? key}) : super(key: key);
  DatabaseIntsance databaseIntsance = DatabaseIntsance();

  TextEditingController nameC = TextEditingController();

  TextEditingController categoryC = TextEditingController();

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
        title: Text("Create"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: ListView(
            children: [
              TextField(
                controller: nameC,
                autocorrect: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Product Name",
                ),
              ),
              SizedBox(height: 15),
              TextField(
                controller: categoryC,
                autocorrect: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Category",
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () async {
                  await databaseIntsance.insert({
                    "name": nameC.text,
                    "category": categoryC.text,
                    "created_at": DateTime.now().toString(),
                    "updated_at": DateTime.now().toString(),
                  });
                  Navigator.pop(context);
                  setState(() {});
                },
                child: Text("Save"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
