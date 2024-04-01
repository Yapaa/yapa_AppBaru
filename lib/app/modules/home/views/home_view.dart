import 'package:app_baru/app/routes/app_pages.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/auth_controller.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final user = FirebaseAuth.instance.currentUser;
  AuthController AuthC = AuthController();
  FirebaseAuth currentUser = FirebaseAuth.instance;

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
              // margin: EdgeInsets.only(top: 60),
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello. Yapa!",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "${currentUser.currentUser!.email}",
                          style: TextStyle(fontSize: 16),
                        ),
                      ]),
                  Spacer(),
                  Container(
                    width: 53.33,
                    height: 53.33,
                    margin: EdgeInsets.only(top: 5.33, left: 5.33),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.account_circle,
                      size: 53,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
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
                  Positioned(
                    left: 16,
                    top: 54,
                    child: Container(
                      height: 68.0,
                      width: 159.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.login_sharp,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 16,
                    top: 54,
                    child: Container(
                      height: 68.0,
                      width: 159.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.logout_sharp,
                        color: Colors.red),
                    ),
                  ),
                ],
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
            Container(
              margin: EdgeInsets.only(
                top: 33.33,
                left: 0.0,
                right: 375.0,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(
                Icons.message_rounded,
                size: 30,
                color: Colors.blue,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 150.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
                items: [
                  Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(child: Text('Page 1')),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(child: Text('Page 2')),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(child: Text('Page 3')),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(child: Text('Page 4')),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(child: Text('Page 5')),
                  )
                ],
              ),
            ),
            Container(
              height: 20,
              margin: EdgeInsets.only(
                  top: 33.33, left: 0.0, right: 375.0, bottom: 30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(
                Icons.timer_rounded,
                size: 30,
                color: Colors.blue,
              ),
            ),
            Container(
              height: 142.0,
              width: 398.0,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(child: Text('Page 1')),
            ),
          ],
        )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.fingerprint_sharp, color: Colors.white),
        shape: CircleBorder(),
        backgroundColor: Color.fromRGBO(21, 106, 202, 1),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
