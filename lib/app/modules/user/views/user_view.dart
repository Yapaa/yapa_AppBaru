import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/app_pages.dart';
import '../controllers/user_controller.dart';

class UserView extends GetView<UserController> {
  final CollectionReference _items =
      FirebaseFirestore.instance.collection('Users');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User'),
        centerTitle: true,
      ),
      body: StreamBuilder<QuerySnapshot>(
          stream: controller.stream,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasError) {
              return Center(
                child: Text("Some error occured${snapshot.error}"),
              );
            }

            if (snapshot.hasData) {
              QuerySnapshot querysnapshot = snapshot.data;
              List<QueryDocumentSnapshot> document = querysnapshot.docs;

              List<Map> items = document.map((e) => e.data() as Map).toList();

              return ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (BuildContext context, int index) {
                    Map thisitems = items[index];
                    return ListTile(title: Text("${thisitems['nama']}"),
                     subtitle: Text("${thisitems['Alamat']}"),);
                  });
                  
            }
            return const Center(child: CircularProgressIndicator());
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed(Routes.ADD_USER),
        child: Icon(Icons.add),
      ),
    );
  }
}
