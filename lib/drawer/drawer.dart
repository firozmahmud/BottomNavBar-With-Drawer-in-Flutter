import 'package:bottom_navy_bar_with_nav_bar/utility/font_style.dart';
import 'package:flutter/material.dart';

Drawer getDrawer() {
  Drawer drawer = Drawer(
    elevation: 0,
    child: SingleChildScrollView(
      child: Container(
        color: Colors.grey[200],
        child: Column(
          children: [
            Container(
              // Header
              color: Colors.teal,
              height: 250,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Firoz Mahmud',
                        style: getDrawerTitleStyle(),
                      ),
                    ),
                    Text(
                      '01744885126',
                      style: getMobileNoTxtStyle(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );

  return drawer;
}
