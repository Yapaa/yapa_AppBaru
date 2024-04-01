import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes/app_pages.dart';

class BottomNavigation extends StatefulWidget {
  @override
  State<BottomNavigation> createState() => BottomNavigationState();
}


class BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  String _selectedMenu = 'Home';
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

      if (index == 0) {
        _selectedMenu = 'Dashboard';
        Get.toNamed(Routes.DASHBOARD);
      } else if (index == 1) {
        _selectedMenu = 'Users';
        Get.toNamed(Routes.USER);
      } else if (index == 2) {
        _selectedMenu = 'Login';
        Get.toNamed(Routes.LOGIN);
      } else if (index == 3) {
        _selectedMenu = 'Register';
        Get.toNamed(Routes.REGISTER);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: Color.fromRGBO(21, 106, 202, 1),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.groups),
            label: 'Users',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.login),
            label: 'Login',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_add_rounded),
            label: 'Register',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Color.fromARGB(255, 189, 189, 189),
        selectedItemColor: Color(0xFFACACAC),
        onTap: _onItemTapped,
    );
  }
}