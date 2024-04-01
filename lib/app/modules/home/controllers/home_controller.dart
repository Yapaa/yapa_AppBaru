import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
     late Stream<QuerySnapshot> stream;

}

// class UserModel extends StatelessWidget{

//   final String id;
//   const UserModel({
//     required this.id,
//   });
//   @override
//   Widget build(BuildContext context) {

//     CollectionReference users = FirebaseFirestore.instance.collection('User1');

//     return FutureBuilder<DocumentSnapshot>(
//       future: users.doc(id).get(),
//       builder: ((context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.done) {
//           Map<String, dynamic> data =
//               snapshot.data!.data() as Map<String, dynamic>;
//           return Text('Username: ${data['username']}');
//         }
//         return Text('loading..');
//       }),
//       );
// }

//   static fromSnapshot(QueryDocumentSnapshot<Map<String, dynamic>> e) {}
// }


// List<String> docIDs = [];

//   Future getDocId() async {
//     await FirebaseFirestore.instance.collection('Users').get().then(
//           (snapshot) => snapshot.docs.forEach((element) {
//             print(element.reference);
//             docIDs.add(element.reference.id);
//           }),
//         );
//   }