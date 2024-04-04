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
                    return ListTile(
                      title: Text("${thisitems['nama']}"),
                     subtitle: Text("${thisitems['Alamat']}"),
                     trailing: Row( mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        IconButton(onPressed: (){}, icon: Icon(Icons.delete)),
                        IconButton(onPressed: (){}, icon: Icon(Icons.edit))
                      ]
                     ),
                     );
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

// class UserView extends StatelessWidget {
//   const UserView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("User"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               "No Data",
//               style: TextStyle(
//                 fontSize: 25,
//               ),
//             ),
//             ElevatedButton(
//               onPressed: (){
//                 http.get(url);
//               }, 
//               child: Text("Refresh")
//               ),
//           ]
//         ),
//       ),
//       // floatingActionButton: FloatingActionButton(
//       //   onPressed: () => Get.toNamed(Routes.ADD_USER),
//       //   child: Icon(Icons.add),
//       // ),
//     );
//   }
// }