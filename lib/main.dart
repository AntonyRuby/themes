import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:themes/screen/home_screen/home_screen.dart';
import 'package:themes/screen/theme/bloc/theme_data_bloc.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeDataBloc bloc = ThemeDataBloc()..add(LoadThemeEvent());

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => bloc,
      child: BlocBuilder<ThemeDataBloc, ThemeDataState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Themes',
            debugShowCheckedModeBanner: false,
            theme: bloc.currentThemeData,
            home: HomeScreen(),
          );
        },
      ),
    );
  }
}
