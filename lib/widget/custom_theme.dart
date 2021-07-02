import 'package:flutter/material.dart';

class CustomTheme with ChangeNotifier {
  // static bool _isDarkTheme = true;
  // ThemeMode get currentTheme => _isDarkTheme ? ThemeMode.dark : ThemeMode.light;
  // // ThemeMode get blueTheme =>
  // //     _isDarkTheme ? ThemeMode.dark : ThemeMode.blueTheme;

  // void toggleTheme() {
  //   _isDarkTheme = !_isDarkTheme;
  //   notifyListeners();
  // }

  static Map<String, ThemeData> get themes {
    return {
      'pinkTheme': CustomTheme._pinkTheme,
      'greenTheme': CustomTheme._greenTheme,
      'redTheme': CustomTheme._redTheme,
      'blackTheme': CustomTheme._blackTheme,
      'indigoTheme': CustomTheme._indigoTheme,
      'blueTheme': CustomTheme._blueTheme,
      'purpleTheme': CustomTheme._purpleTheme,
      'yellowTheme': CustomTheme._yellowTheme,
      'brownTheme': CustomTheme._brownTheme,
    };
  }

  static ThemeData defaultTheme = CustomTheme._blackTheme;

  static ThemeData _pinkTheme = ThemeData(
      primaryColor: Colors.pink.shade300,
      scaffoldBackgroundColor: Colors.pink.shade100,
      // fontFamily: 'Montserrat',
      accentColor: Colors.pinkAccent.shade700,
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(color: Colors.black),
        labelStyle: TextStyle(color: Colors.black),
      ),
      // brightness: Brightness.light,
      canvasColor: Colors.black,
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
        bodyColor: Colors.white,
        displayColor: Colors.white,
      ),
      floatingActionButtonTheme:
          FloatingActionButtonThemeData(backgroundColor: Colors.pinkAccent),
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.pink.shade500,
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
              decorationColor: Colors.white)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.pink,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Colors.pink,
      ),
      buttonTheme: ButtonThemeData(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          buttonColor: Colors.pink));

  static ThemeData _blackTheme = ThemeData(
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
        bodyColor: Colors.white,
        displayColor: Colors.white,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.black,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Colors.black,
      ),
      buttonTheme: ButtonThemeData(
          textTheme: ButtonTextTheme.normal,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          buttonColor: Colors.blue));

  static ThemeData _blueTheme = ThemeData(
      primaryColor: Colors.blue.shade300,
      scaffoldBackgroundColor: Colors.blue.shade100,
      // fontFamily: 'Montserrat',
      accentColor: Colors.blueAccent.shade700,
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(color: Colors.white),
        labelStyle: TextStyle(color: Colors.white),
      ),
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
        bodyColor: Colors.white,
        displayColor: Colors.white,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.blue,
      ),
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue.shade500,
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
              decorationColor: Colors.white)),
      buttonTheme: ButtonThemeData(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          buttonColor: Colors.white),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Colors.blue,
      ));

  static ThemeData _greenTheme = ThemeData(
      primaryColor: Colors.green.shade300,
      scaffoldBackgroundColor: Colors.green.shade100,

      // fontFamily: 'Montserrat',
      accentColor: Colors.greenAccent,
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(color: Colors.white),
        labelStyle: TextStyle(color: Colors.white),
      ),
      canvasColor: Colors.white,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      accentIconTheme: IconThemeData(color: Colors.white),
      textTheme: TextTheme().apply(
        bodyColor: Colors.white,
        displayColor: Colors.white,
      ),
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.green.shade500,
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
              // bodyColor: Colors.green,
              displayColor: Colors.yellow,
              decorationColor: Colors.green)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.green,
      ),
      buttonTheme: ButtonThemeData(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          buttonColor: Colors.white));

  static ThemeData _redTheme = ThemeData(
      primaryColor: Colors.red.shade500,
      scaffoldBackgroundColor: Colors.red.shade100,
      // fontFamily: 'Montserrat',
      accentColor: Colors.redAccent,
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(color: Colors.white),
        labelStyle: TextStyle(color: Colors.white),
      ),
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
        bodyColor: Colors.pink,
        displayColor: Colors.white,
      ),
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.red.shade500,
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
              decorationColor: Colors.white)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.red,
      ),
      buttonTheme: ButtonThemeData(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          buttonColor: Colors.white));

  static ThemeData _brownTheme = ThemeData(
      primaryColor: Colors.brown.shade300,
      scaffoldBackgroundColor: Colors.red.shade100,
      // fontFamily: 'Montserrat',
      accentColor: Colors.redAccent,
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(color: Colors.white),
        labelStyle: TextStyle(color: Colors.white),
      ),
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
        bodyColor: Colors.green,
        displayColor: Colors.white,
      ),
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.brown.shade500,
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
              decorationColor: Colors.white)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.red,
      ),
      buttonTheme: ButtonThemeData(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          buttonColor: Colors.white));

  static ThemeData _yellowTheme = ThemeData(
      primaryColor: Colors.yellow.shade300,
      scaffoldBackgroundColor: Colors.red.shade100,
      // fontFamily: 'Montserrat',
      accentColor: Colors.redAccent,
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(color: Colors.white),
        labelStyle: TextStyle(color: Colors.white),
      ),
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
        bodyColor: Colors.green,
        displayColor: Colors.white,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.yellow,
      ),
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.yellow.shade500,
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
              decorationColor: Colors.white)),
      buttonTheme: ButtonThemeData(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          buttonColor: Colors.white));

  static ThemeData _indigoTheme = ThemeData(
      primaryColor: Colors.indigo.shade300,
      scaffoldBackgroundColor: Colors.indigo.shade100,
      // fontFamily: 'Montserrat',
      accentColor: Colors.redAccent,
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(color: Colors.white),
        labelStyle: TextStyle(color: Colors.white),
      ),
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
        bodyColor: Colors.green,
        displayColor: Colors.white,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.indigo,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Colors.indigo,
      ),
      buttonTheme: ButtonThemeData(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          buttonColor: Colors.indigo));

  static ThemeData _purpleTheme = ThemeData(
      primaryColor: Colors.purple.shade300,
      scaffoldBackgroundColor: Colors.purple.shade100,
      // fontFamily: 'Montserrat',
      accentColor: Colors.redAccent,
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(color: Colors.white),
        labelStyle: TextStyle(color: Colors.white),
      ),
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
        bodyColor: Colors.green,
        displayColor: Colors.white,
      ),
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.purple.shade500,
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
              decorationColor: Colors.white)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.red,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Colors.purple,
      ),
      buttonTheme: ButtonThemeData(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          buttonColor: Colors.purple));
}
