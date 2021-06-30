import 'package:flutter/material.dart';

Color primaryColor = Colors.blue;

Color getColorIndex(int idx) {
  switch (idx) {
    case 1:
      return Colors.red;
    case 2:
      return Colors.orange;
  }
  return Colors.blue;
}

// enum MyThemeKeys { LIGHT, DARK, DARKER }

// class MyThemes {
//   static final ThemeData lightTheme = ThemeData(
//     primaryColor: Colors.blue,
//     brightness: Brightness.light,
//   );

//   static final ThemeData darkTheme = ThemeData(
//     primaryColor: Colors.grey,
//     brightness: Brightness.dark,
//   );

//   static final ThemeData blueTheme = ThemeData(
//     primaryColor: Colors.blue,
//   );

//   ThemeData getColorIndex(int idx) {
//     switch (idx) {
//       case 1:
//         return lightTheme;
//       case 2:
//         return darkTheme;
//       case 3:
//         return blueTheme;
//       default:
//         return lightTheme;
//     }
//   }
// }
