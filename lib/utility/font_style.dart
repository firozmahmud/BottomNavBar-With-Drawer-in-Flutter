import 'package:flutter/material.dart';

TextStyle titleTextStyle() {
  // Title text style
  return TextStyle(
    color: Colors.purple,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.bold,
    fontSize: 25,
  );
}

TextStyle getDrawerTitleStyle() {
  // Title name style on the header section of Drawer
  return TextStyle(
    fontSize: 20,
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );
}

TextStyle getMobileNoTxtStyle() {
  // Mobile no text style on the header of Drawer
  return TextStyle(
    fontSize: 16,
    color: Colors.black54,
    fontWeight: FontWeight.normal,
  );
}
