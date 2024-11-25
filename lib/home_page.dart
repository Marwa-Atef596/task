import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task/core/contstent.dart';
import 'package:task/widget/custom_Side_menu.dart';
import 'package:task/widget/custom_expantion_tile.dart';
import 'widget/custom_app_container.dart';
import 'widget/custom_container.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});

  // ignore: prefer_final_fields
  int _selectedIndex = 0;

  void onTap(int index) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomSideMenu(),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        showUnselectedLabels: true,
        selectedItemColor: Colors.black,
        unselectedItemColor: Kgrey,
        iconSize: 25,
        currentIndex: _selectedIndex,
        onTap: onTap,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.rocket_launch_outlined),
            label: 'Quick Action',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.comments),
            label: 'Recent Discussion',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.circleQuestion),
            label: 'Need Help',
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            CustomContainer(),
            SizedBox(
              height: 20,
            ),
            CustomAppContainer(),
            CustomExpantionTile(),
          ],
        ),
      ),
    );
  }
}
