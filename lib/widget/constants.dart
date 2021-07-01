import 'package:flutter/material.dart';

Color primaryColor = Colors.blue;
Color accentColor = Colors.blueAccent;

Color getColorIndex(int idx) {
  switch (idx) {
    // case 1:
    //   return primaryColor = Colors.redAccent
    //   accentColor = Colors.black;

    case 1:
      return Colors.red;

    case 2:
      return Colors.indigo;
    case 3:
      return Colors.lightBlue;
    case 4:
      return Colors.brown;
    case 5:
      return Colors.green;
    case 6:
      return Colors.pink;
    case 7:
      return Colors.purple;
    case 7:
      return Colors.yellow;
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
