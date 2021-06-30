import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:themes/screen/transaction_screen/transaction_screen.dart';
import 'package:themes/widget/config.dart';
import 'screen/theme/bloc/themes_bloc.dart';
import 'widget/custom_theme.dart';

Future<void> main() async {
  runApp(MyApp());
}

// void main() {
//   runApp(
//     CustomTheme(
//       initialThemeKey: MyThemeKeys.LIGHT,
//       child: MyApp(),
//     ),
//   );
// }

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Themes',
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.lightTheme,
      darkTheme: CustomTheme.darkTheme,
      themeMode: currentTheme.currentTheme,
      home: TransactionScreen(),
    );
  }
}
