import 'package:app_baru/app/routes/app_pages.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/auth_controller.dart';
import '../controllers/home_controller.dart';
import 'package:intl/intl.dart';

class HomeView extends GetView<HomeController> {
  final user = FirebaseAuth.instance.currentUser;
  AuthController AuthC = AuthController();
  FirebaseAuth currentUser = FirebaseAuth.instance;
  var time = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 500,
              margin: EdgeInsets.only(left: 20, right: 20),
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  //Indicator User Account
                  //         StreamBuilder<QuerySnapshot>(
                  // stream: controller.stream,
                  // builder: (BuildContext context, AsyncSnapshot snapshot) {
                  //   if (snapshot.hasError) {
                  //     return Center(
                  //       child: Text("Some error occured${snapshot.error}"),
                  //     );
                  //   }

                  //   if (snapshot.hasData) {
                  //     QuerySnapshot querysnapshot = snapshot.data;
                  //     List<QueryDocumentSnapshot> document = querysnapshot.docs;

                  //     List<Map> items = document.map((e) => e.data() as Map).toList();

                  //     return ListView.builder(
                  //         itemCount: 1,
                  //         itemBuilder: (BuildContext context, int index) {
                  //           Map thisitems = items[index];
                  //           return ListTile(
                  //             title: Text("${thisitems['nama']}"),
                  //            subtitle: Text("${currentUser.currentUser!.email}"),
                  //            trailing: Row( mainAxisSize: MainAxisSize.min,
                  //             children: <Widget>[
                  //               IconButton(onPressed: (){}, icon: Icon(Icons.delete)),
                  //               IconButton(onPressed: (){}, icon: Icon(Icons.edit))
                  //             ]
                  //            ),
                  //            );
                  //         });

                  //   }
                  //   return const Center(child: CircularProgressIndicator());
                  // }),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hallo, Yapa!",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 21,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "${currentUser.currentUser!.email}",
                          style: TextStyle(fontSize: 16),
                        ),
                      ]),
                  // Photo User
                  Spacer(),
                  Container(
                      width: 55.33,
                      height: 55.33,
                      margin: EdgeInsets.only(top: 5.33, left: 5.33),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      // child: Icon(
                      //   Icons.account_circle,
                      //   size: 53,
                      //   color: Colors.blue,
                      // ),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYgvxaS317Xl0AHkE_Qd4VbPleZDxls6LFzA&usqp=CAU"),
                        radius: 30,
                      )),
                ],
              ),
            ),
            //Detail Presensi
            Container(
              height: 142.0,
              width: 398.0,
              alignment: Alignment.center,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  //Date
                  Positioned(
                      left: 16,
                      bottom: 100,
                      child: Row(
                        children: [
                          Column(children: [
                            Padding(
                                padding: EdgeInsets.zero,
                                child: Icon(Icons.calendar_today,
                                    color: Colors.white))
                          ]),
                          Column(children: [
                            Padding(
                              padding: EdgeInsets.only(left: 2),
                              child: Row(
                                children: [
                                  Text(
                                    "${DateFormat.EEEE().format(DateTime.now())}, ",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white),
                                  ),
                                  Text(
                                    "${DateFormat.d().format(DateTime.now())} ",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white),
                                  ),
                                  Text(
                                    "${DateFormat.MMMM().format(DateTime.now())} ",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white),
                                  ),
                                  Text(
                                    "${DateFormat.y().format(DateTime.now())}",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white),
                                  ),
                                ],
                              ),
                            )
                          ])
                        ],
                      )),
                  //Time
                  Positioned(
                      right: 16,
                      bottom: 100,
                      child: Row(
                        children: [
                          Column(children: [
                            Padding(
                                padding: EdgeInsets.zero,
                                child: Icon(Icons.access_time_filled,
                                    color: Colors.white))
                          ]),
                          Column(children: [
                            Padding(
                              padding: EdgeInsets.only(left: 2),
                              child: Text(
                                  DateFormat.Hm().format(DateTime.now()),
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white)),
                            )
                          ])
                        ],
                      )),
                  //Presensi Login
                  Positioned(
                    left: 16,
                    top: 54,
                    child: Container(
                      height: 68.0,
                      width: 159.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(children: <Column>[
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                child: CircleAvatar(
                                  child: Icon(Icons.login,
                                      size: 23, color: Colors.white),
                                  backgroundColor: Colors.blue,
                                  radius: 18,
                                ),
                              ),
                            ]),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Presensi Masuk",
                                style: TextStyle(fontSize: 14)),
                            Text("--:--", style: TextStyle(fontSize: 15)),
                          ],
                        )
                      ]),
                    ),
                  ),
                  //Presen Logout
                  Positioned(
                    right: 16,
                    top: 54,
                    child: Container(
                      height: 68.0,
                      width: 159.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(children: <Column>[
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: CircleAvatar(
                                  child: Icon(Icons.logout,
                                      size: 23, color: Colors.white),
                                  backgroundColor: Colors.red,
                                  radius: 18,
                                ),
                              ),
                            ]),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Presensi Keluar",
                                style: TextStyle(fontSize: 14)),
                            Text("--:--", style: TextStyle(fontSize: 15)),
                          ],
                        )
                      ]),
                    ),
                  ),
                ],
              ),
            ),
            //Presensi, Izin, Piket, Intensif
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.co_present,
                        color: Colors.white,
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: 34.0,
                          horizontal: 28.0,
                        ),
                        backgroundColor: Colors.blue,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text("Presensi",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold))
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Icon(Icons.pending_actions, color: Colors.white),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: 34.0,
                          horizontal: 28.0,
                        ),
                        backgroundColor: Colors.blue,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text("Izin",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold))
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Icon(Icons.insert_invitation_rounded,
                          color: Colors.white),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: 34.0,
                          horizontal: 28.0,
                        ),
                        backgroundColor: Colors.blue,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text("Piket",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold))
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Icon(Icons.pages, color: Colors.white),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: 34.0,
                          horizontal: 28.0,
                        ),
                        backgroundColor: Colors.blue,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text("Insentif",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold))
                  ],
                ),
              ],
            ),
            //Message Option
            Container(
                height: 20,
                margin: EdgeInsets.only(top: 20, left: 0.0, bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(children: [
                  SizedBox(width: 20),
                  Icon(
                    Icons.message_rounded,
                    size: 30,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Pesan",
                    style: TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                  SizedBox(width: 215),
                  TextButton(
                      onPressed: () {},
                      child: Text("Lihat Semua",
                          style: TextStyle(fontSize: 14, color: Colors.blue)))
                ])),
            //Thumbnail Message
            Container(
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 210.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 1000),
                  viewportFraction: 0.8,
                ),
                items: [
                  Container(
                    height: 152.0,
                    width: 378.0,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                        child: Text('Tidak ada pesan',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold))),
                  ),
                  Container(
                    height: 142.0,
                    width: 398.0,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                        child: Text('Tidak ada pesan',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold))),
                  ),
                  Container(
                    height: 142.0,
                    width: 398.0,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                        child: Text('Tidak ada pesan',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold))),
                  ),
                  Container(
                    height: 142.0,
                    width: 398.0,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                        child: Text('Tidak ada pesan',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold))),
                  ),
                  Container(
                    height: 142.0,
                    width: 398.0,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                        child: Text('Tidak ada pesan',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold))),
                  ),
                ],
              ),
            ),
            //Presensi Option
            Container(
                height: 20,
                margin: EdgeInsets.only(top: 20, left: 0.0, bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(children: [
                  SizedBox(width: 20),
                  Icon(
                    Icons.timer_rounded,
                    size: 30,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Riwayat Presensi",
                    style: TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                  SizedBox(width: 135),
                  TextButton(
                      onPressed: () {},
                      child: Text("Lihat Semua",
                          style: TextStyle(fontSize: 14, color: Colors.blue)))
                ])),
            //Thumbnail Presensi
            Container(
              height: 152.0,
              width: 378.0,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                  child: Text('Tidak ada riwayat presensi',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold))),
            ),
          ],
        )),
      ),
      //Fingerprint
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.fingerprint_sharp, color: Colors.white),
        shape: CircleBorder(),
        backgroundColor: Color.fromRGBO(21, 106, 202, 1),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //Navigation Bottom
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
