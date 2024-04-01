// import 'package:app_baru/app/controllers/auth_controller.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../routes/app_pages.dart';

// class SideBar extends StatelessWidget {
//   AuthController AuthC = AuthController();
//   FirebaseAuth currentUser = FirebaseAuth.instance;

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: ListView(
//         padding: EdgeInsets.zero,
//         children: [ListTile(
//               contentPadding: EdgeInsets.symmetric(horizontal: 20),
//               title: Text(
//                 "${currentUser.currentUser!.email}",
//                 style: TextStyle(color: Colors.black),
//               ),
//               subtitle: Text(
//                 'hasdfkasloifdhdsffs',
//                 style: TextStyle(color: Colors.black),
//               ),
//               trailing: Icon(
//                 Icons.account_circle,
//                 size: 60,
//                 color: Colors.blue,
//               ),
//             ),
//           StreamBuilder(
//             stream: FirebaseFirestore.instance
//                 .collection("Users")
//                 .where("uid", isEqualTo: currentUser.currentUser!.email,)
//                 .snapshots(),
//             builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
//               if (snapshot.hasData) {
//                 return ListView.builder(
//                     itemCount: snapshot.data!.docs.length,
//                     itemBuilder: (context, i) {
//                       var data = snapshot.data!.docs[i];

//                     });
//               } else {
//                 return CircularProgressIndicator();
//               }
//             },
//           ),
//           ListTile(
//               leading: Icon(Icons.message_rounded),
//               title: Text("Broadcast Message"),
//               onTap: () => print('BroadMess')),
//           ListTile(
//               leading: Icon(Icons.insert_invitation_rounded),
//               title: Text("Jadwal Piket"),
//               onTap: () => print('BroadMess')),
//           ListTile(
//               leading: Icon(Icons.list_alt),
//               title: Text("Jurnal"),
//               onTap: () => print('Jurnal')),
//           ListTile(
//               leading: Icon(Icons.analytics),
//               title: Text("Rekap Absensi"),
//               onTap: () => print('Rekap')),
//           ListTile(
//               leading: Icon(Icons.pending_actions),
//               title: Text("Perizinan"),
//               onTap: () => print('Perizinan')),
//           ListTile(
//               leading: Icon(Icons.co_present),
//               title: Text("Presensi"),
//               onTap: () => print('Presensi')),
//           ListTile(
//               leading: Icon(Icons.pages),
//               title: Text("Insentif"),
//               onTap: () => print('Insentif')),
//           Text("option", style: TextStyle(fontSize: 10, color: Colors.grey)),
//           ListTile(
//               leading: Icon(Icons.logout_outlined),
//               title: Text("Log Out"),
//               onTap: () {
//                 Get.toNamed(Routes.LOGIN);

//               }),
//           BottomAppBar(
//             child: BackButton(
//               onPressed: () {
//                 Get.toNamed(Routes.HOME);
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
