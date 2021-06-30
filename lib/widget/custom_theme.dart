import 'package:flutter/material.dart';

import 'constants.dart';

class CustomTheme with ChangeNotifier {
  static bool _isDarkTheme = true;
  ThemeMode get currentTheme => _isDarkTheme ? ThemeMode.dark : ThemeMode.light;
  ThemeMode get blueTheme => _isDarkTheme ? ThemeMode.dark : blueTheme;

  void toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }

  static ThemeData get lightTheme {
    return ThemeData(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        // fontFamily: 'Montserrat',
        accentColor: Colors.black,
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyle(color: Colors.black),
          labelStyle: TextStyle(color: Colors.black),
        ),
        brightness: Brightness.light,
        canvasColor: Colors.black,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        accentIconTheme: IconThemeData(color: Colors.black),
        textTheme: TextTheme(
          bodyText1: TextStyle(),
          bodyText2: TextStyle(),
          caption: TextStyle(),
          headline1: TextStyle(),
          subtitle1: TextStyle(),
          headline2: TextStyle(),
          headline3: TextStyle(),
          headline4: TextStyle(),
          headline5: TextStyle(),
          headline6: TextStyle(),
          subtitle2: TextStyle(),
        ).apply(
          bodyColor: Colors.black,
          displayColor: Colors.black,
        ),
        appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(color: Colors.white),
            textTheme: TextTheme(
              bodyText1: TextStyle(),
              bodyText2: TextStyle(),
              caption: TextStyle(),
              headline1: TextStyle(),
              subtitle1: TextStyle(),
              headline2: TextStyle(),
              headline3: TextStyle(),
              headline4: TextStyle(),
              headline5: TextStyle(),
              headline6: TextStyle(),
              subtitle2: TextStyle(),
            ).apply(
              bodyColor: Colors.white,
              displayColor: Colors.white,
            )),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
        ),
        buttonTheme: ButtonThemeData(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0)),
            buttonColor: Colors.black));
  }

  static ThemeData get darkTheme {
    return ThemeData(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
        // fontFamily: 'Montserrat',
        accentColor: Colors.white,
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyle(color: Colors.white),
          labelStyle: TextStyle(color: Colors.white),
        ),
        brightness: Brightness.dark,
        canvasColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        accentIconTheme: IconThemeData(color: Colors.white),
        textTheme: TextTheme(
          bodyText1: TextStyle(),
          bodyText2: TextStyle(),
          caption: TextStyle(),
          headline1: TextStyle(),
          subtitle1: TextStyle(),
          headline2: TextStyle(),
          headline3: TextStyle(),
          headline4: TextStyle(),
          headline5: TextStyle(),
          headline6: TextStyle(),
          subtitle2: TextStyle(),
        ).apply(
          bodyColor: Colors.orange,
          displayColor: Colors.blue,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.black,
        ),
        buttonTheme: ButtonThemeData(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0)),
            buttonColor: Colors.white));
  }
}
//   static ThemeData get blueTheme {
//     return ThemeData(
//         primaryColor: Colors.blue,
//         scaffoldBackgroundColor: Colors.blue,
//         // fontFamily: 'Montserrat',
//         accentColor: Colors.white,
//         inputDecorationTheme: InputDecorationTheme(
//           hintStyle: TextStyle(color: Colors.white),
//           labelStyle: TextStyle(color: Colors.white),
//         ),
//         canvasColor: Colors.white,
//         iconTheme: IconThemeData(
//           color: Colors.white,
//         ),
//         accentIconTheme: IconThemeData(color: Colors.white),
//         textTheme: TextTheme(
//           bodyText1: TextStyle(),
//           bodyText2: TextStyle(),
//           caption: TextStyle(),
//           headline1: TextStyle(),
//           subtitle1: TextStyle(),
//           headline2: TextStyle(),
//           headline3: TextStyle(),
//           headline4: TextStyle(),
//           headline5: TextStyle(),
//           headline6: TextStyle(),
//           subtitle2: TextStyle(),
//         ).apply(
//           bodyColor: Colors.orange,
//           displayColor: Colors.white,
//         ),
//         bottomNavigationBarTheme: BottomNavigationBarThemeData(
//           backgroundColor: Colors.blue,
//         ),
//         buttonTheme: ButtonThemeData(
//             shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(18.0)),
//             buttonColor: Colors.white));
//   }
// }

// /// ----  Blue Theme  ----
// final bluePrimary = Color(0xFF3F51B5);
// final blueAccent = Color(0xFFFF9800);
// final blueBackground = Color(0xFFFFFFFF);
// final blueTheme = ThemeData(
//     primaryColor: bluePrimary,
//     accentColor: blueAccent,
//     backgroundColor: blueBackground);

// /// ----  Spooky Theme  ----
// final spookyPrimary = Color(0xFF000000);
// final spookyAccent = Color(0xFFBB86FC);
// final spookyBackground = Color(0xFF4A4A4A);
// final spookyTheme = ThemeData(
//   primaryColor: spookyPrimary,
//   accentColor: spookyAccent,
//   backgroundColor: spookyBackground,
// );

// /// ----  Green Theme  ----
// final greenPrimary = Color(0xFF4CAF50);
// final greenAccent = Color(0xFF631739);
// final greenBackground = Color(0xFFFFFFFF);
// final greenTheme = ThemeData(
//     primaryColor: greenPrimary,
//     accentColor: greenAccent,
//     backgroundColor: greenBackground);

// /// ----  Pink Theme  ----
// final pinkPrimary = Color(0xFFE91E63);
// final pinkAccent = Color(0xFF0C7D9C);
// final pinkBackground = Color(0xFFFFFFFF);
// final pinkTheme = ThemeData(
//     primaryColor: pinkPrimary,
//     accentColor: pinkAccent,
//     backgroundColor: pinkBackground);

// import 'package:flutter/material.dart';

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

//   static final ThemeData darkerTheme = ThemeData(
//     primaryColor: Colors.black,
//     brightness: Brightness.dark,
//   );

//   static ThemeData getThemeFromKey(MyThemeKeys themeKey) {
//     switch (themeKey) {
//       case MyThemeKeys.LIGHT:
//         return lightTheme;
//       case MyThemeKeys.DARK:
//         return darkTheme;
//       case MyThemeKeys.DARKER:
//         return darkerTheme;
//       default:
//         return lightTheme;
//     }
//   }
// }

// class _CustomTheme extends InheritedWidget {
//   final CustomThemeState data;

//   _CustomTheme({
//     this.data,
//     Key key,
//     @required Widget child,
//   }) : super(key: key, child: child);

//   @override
//   bool updateShouldNotify(_CustomTheme oldWidget) {
//     return true;
//   }
// }

// class CustomTheme extends StatefulWidget {
//   final Widget child;
//   final MyThemeKeys initialThemeKey;

//   const CustomTheme({
//     Key key,
//     this.initialThemeKey,
//     @required this.child,
//   }) : super(key: key);

//   @override
//   CustomThemeState createState() => new CustomThemeState();

//   static ThemeData of(BuildContext context) {
//     _CustomTheme inherited =
//         (context.dependOnInheritedWidgetOfExactType<_CustomTheme());
//     (context.dependOnInheritedWidgetOfExactType<_CustomTheme>());
//     return inherited.data.theme;
//   }

//   static CustomThemeState instanceOf(BuildContext context) {
//     _CustomTheme inherited =
//         (context.dependOnInheritedWidgetOfExactType<_CustomTheme>());
//     return inherited.data;
//   }
// }

// class CustomThemeState extends State<CustomTheme> {
//   ThemeData _theme;

//   ThemeData get theme => _theme;

//   @override
//   void initState() {
//     _theme = MyThemes.getThemeFromKey(widget.initialThemeKey);
//     super.initState();
//   }

//   void changeTheme(MyThemeKeys themeKey) {
//     setState(() {
//       _theme = MyThemes.getThemeFromKey(themeKey);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return new _CustomTheme(
//       data: this,
//       child: widget.child,
//     );
//   }
// }
