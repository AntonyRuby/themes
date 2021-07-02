import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:themes/screen/transaction_screen/transaction_screen.dart';
import 'package:themes/utils/string_resource.dart';
import 'package:themes/widget/custom_text.dart';
import 'bloc/theme_data_bloc.dart';

class ThemesScreen extends StatefulWidget {
  @override
  _ThemesScreenState createState() => _ThemesScreenState();
}

class _ThemesScreenState extends State<ThemesScreen> {
  late ThemeDataBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = BlocProvider.of<ThemeDataBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          StringResource.changeTheme,
          // color: Theme.of(context).appBarTheme.titleTextStyle.color,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // ListTile(
              //   title: Center(
              //       child: Padding(
              //           padding: const EdgeInsets.all(16.0),
              //           child: CustomText(
              //             StringResource.darkLight,
              //             fontStyle: FontStyle.italic,
              //             fontWeight: FontWeight.bold,
              //           ))),
              //   subtitle: GestureDetector(
              //       onTap: () => currentTheme.toggleTheme(),
              //       child: Icon(Icons.invert_colors)),
              // ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Divider(),
              // ),
              Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: CustomText(
                    StringResource.selectColors,
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  )),
              Wrap(
                alignment: WrapAlignment.end,
                spacing: 20,
                runSpacing: 22,
                children: [
                  _colorSelection(Colors.red, onTap: () {
                    bloc.add(ChangeThemeEvent(themeName: 'redTheme'));
                  }),
                  _colorSelection(Colors.indigo, onTap: () {
                    bloc.add(ChangeThemeEvent(themeName: 'indigoTheme'));
                  }),
                  _colorSelection(Colors.blue, onTap: () {
                    bloc.add(ChangeThemeEvent(themeName: 'blueTheme'));
                  }),
                  _colorSelection(Colors.brown, onTap: () {
                    bloc.add(ChangeThemeEvent(themeName: 'brownTheme'));
                  }),
                  _colorSelection(Colors.green, onTap: () {
                    bloc.add(ChangeThemeEvent(themeName: 'greenTheme'));
                  }),
                  _colorSelection(Colors.pink, onTap: () {
                    bloc.add(ChangeThemeEvent(themeName: 'pinkTheme'));
                  }),
                  _colorSelection(Colors.purple, onTap: () {
                    bloc.add(ChangeThemeEvent(themeName: 'purpleTheme'));
                  }),
                  _colorSelection(Colors.yellow, onTap: () {
                    bloc.add(ChangeThemeEvent(themeName: 'yellowTheme'));
                  }),
                  _colorSelection(Colors.black, onTap: () {
                    bloc.add(ChangeThemeEvent(themeName: 'blackTheme'));
                  }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _colorSelection(Color customColor, {GestureTapCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: new Container(
        width: 70,
        height: 70,
        decoration: new BoxDecoration(
          color: customColor,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
