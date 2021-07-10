import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:bottom_navy_bar_with_nav_bar/campaign/campaign.dart';
import 'package:bottom_navy_bar_with_nav_bar/home/home.dart';
import 'package:bottom_navy_bar_with_nav_bar/order/order.dart';
import 'package:bottom_navy_bar_with_nav_bar/profile/profile.dart';
import 'package:flutter/material.dart';

class MyBottomNavBar extends StatefulWidget {
  @override
  _MyBottomNavBarState createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  var _selectedIndex = 0;
  var _pages = [Home(), Campaign(), Order(), Profile()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: _pages[_selectedIndex],
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25.0),
              topRight: Radius.circular(25.0),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                spreadRadius: 0,
                blurRadius: 3.0,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25.0),
              topRight: Radius.circular(25.0),
            ),
            child: BottomNavyBar(
              backgroundColor: Colors.grey[200],
              showElevation: true,
              selectedIndex: _selectedIndex,
              items: [
                BottomNavyBarItem(
                  icon: Icon(Icons.home_filled),
                  title: Text('Home'),
                  activeColor: Colors.teal,
                  inactiveColor: Colors.black45,
                ),
                BottomNavyBarItem(
                  icon: Icon(Icons.camera),
                  title: Text('Campaign'),
                  activeColor: Colors.teal,
                  inactiveColor: Colors.black45,
                ),
                BottomNavyBarItem(
                  icon: Icon(Icons.photo_library),
                  title: Text('Order'),
                  activeColor: Colors.teal,
                  inactiveColor: Colors.black45,
                ),
                BottomNavyBarItem(
                  icon: Icon(Icons.person),
                  title: Text('Profile'),
                  activeColor: Colors.teal,
                  inactiveColor: Colors.black45,
                ),
              ],
              onItemSelected: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
