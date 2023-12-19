import 'package:e_commerce_app/screens/home_screen.dart';
import 'package:e_commerce_app/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import 'cart_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentTab = 2;
  List screens = [
    Scaffold(),
    Scaffold(),
    HomeScreen(),
    CartScreen(),
    Scaffold(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          currentTab = 2;
        },
        elevation: 0,
        shape: CircleBorder(),
        backgroundColor: kprimaryColor,
        child: Icon(
          Ionicons.home,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        height: 70,
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    currentTab = 0;
                  });
                },
                icon: Icon(
                  Ionicons.grid_outline,
                  color: currentTab == 0 ? kprimaryColor : Colors.grey.shade400,
                )),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentTab = 1;
                  });
                },
                icon: Icon(Ionicons.heart_outline,
                    color: currentTab == 1 ? kprimaryColor : Colors.grey.shade400)),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentTab = 3;
                  });
                },
                icon: Icon(Ionicons.cart_outline,
                    color: currentTab == 3 ? kprimaryColor : Colors.grey.shade400)),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentTab = 4;
                  });
                },
                icon: Icon(Ionicons.person_outline,
                    color: currentTab == 4 ? kprimaryColor : Colors.grey.shade400)),
          ],
        ),
      ),
      body: screens[currentTab],
    );
  }
}
