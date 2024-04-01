import 'package:app_baru/app/routes/app_pages.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  FirebaseAuth currentUser = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: UserAccountsDrawerHeader(
                  accountName: Text('Halo, Yapa!'), 
                  accountEmail: Text("${currentUser.currentUser!.email}"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYgvxaS317Xl0AHkE_Qd4VbPleZDxls6LFzA&usqp=CAU"),
                    radius: 30,
                  )
                ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "",
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 34.0,
                      horizontal: 39.0,
                    ),
                    backgroundColor: Colors.blue,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "",
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 34.0,
                      horizontal: 39.0,
                    ),
                    backgroundColor: Colors.blue,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "",
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 34.0,
                      horizontal: 39.0,
                    ),
                    backgroundColor: Colors.blue,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "",
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 34.0,
                      horizontal: 39.0,
                    ),
                    backgroundColor: Colors.blue,
                  ),
                ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "",
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 34.0,
                      horizontal: 39.0,
                    ),
                    backgroundColor: Colors.blue,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "",
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 34.0,
                      horizontal: 39.0,
                    ),
                    backgroundColor: Colors.blue,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "",
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 34.0,
                      horizontal: 39.0,
                    ),
                    backgroundColor: Colors.blue,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "",
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 34.0,
                      horizontal: 39.0,
                    ),
                    backgroundColor: Colors.blue,
                  ),
                ),
                  ],
                  )
              ]
        )),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 12,
        color: Color.fromRGBO(21, 106, 202, 1),
        child: Container(
          height: 90,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconTheme(
                      data: IconThemeData(size: 20),
                      child: IconButton(
                        icon: Icon(Icons.dashboard),
                        onPressed: () {
                          Get.toNamed(Routes.DASHBOARD);
                        },
                        color: Colors.white,
                      )),
                  Text(
                    'DashBoard',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconTheme(
                      data: IconThemeData(size: 20),
                      child: IconButton(
                        icon: Icon(Icons.groups),
                        onPressed: () {
                          Get.toNamed(Routes.USER);
                        },
                        color: Colors.white,
                      )),
                  Text(
                    'Users',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconTheme(
                      data: IconThemeData(size: 20),
                      child: IconButton(
                        icon: Icon(Icons.person),
                        onPressed: () {
                          Get.toNamed(Routes.PROFILE);
                        },
                        color: Colors.white,
                      )),
                  Text(
                    'Profile',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
