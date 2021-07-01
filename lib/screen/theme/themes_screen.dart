import 'package:flutter/material.dart';
import 'package:themes/screen/transaction_screen/transaction_screen.dart';
import 'package:themes/utils/string_resource.dart';
import 'package:themes/widget/config.dart';
import 'package:themes/widget/constants.dart';
import 'package:themes/widget/custom_text.dart';
import 'package:themes/widget/custom_theme.dart';

class ThemesScreen extends StatefulWidget {
  @override
  _ThemesScreenState createState() => _ThemesScreenState();
}

class _ThemesScreenState extends State<ThemesScreen> {
  Future setColor(int idx) async {
    await preferences!.setInt('color', idx);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: CustomText(
          StringResource.changeTheme,
          // color: Theme.of(context).primaryColor,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              title: Center(
                  child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: CustomText(
                        StringResource.darkLight,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      ))),
              subtitle: GestureDetector(
                  onTap: () => currentTheme.toggleTheme(),
                  child: Icon(Icons.invert_colors)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(),
            ),
            Padding(
                padding: const EdgeInsets.all(16.0),
                child: CustomText(
                  StringResource.selectColors,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                )),
            Wrap(
              alignment: WrapAlignment.end,
              spacing: 20,
              runSpacing: 22,
              children: [
                _colorSelection(Colors.red, onTap: () {
                  primaryColor = Colors.red;
                  setColor(1);
                  setState(() {});
                }),
                // _colorSelection(
                //   Colors.indigo,
                //   onTap: () {
                //     setState(() {
                //       CustomTheme.blueTheme;
                //     });
                //   },
                // ),
                _colorSelection(Colors.indigo, onTap: () {
                  primaryColor = Colors.indigo;
                  setColor(2);
                  setState(() {});
                }),
                _colorSelection(Colors.lightBlue, onTap: () {
                  primaryColor = Colors.lightBlue;
                  setColor(3);
                  setState(() {});
                }),
                _colorSelection(Colors.brown, onTap: () {
                  primaryColor = Colors.brown;
                  setColor(4);
                  setState(() {});
                }),
                _colorSelection(Colors.green, onTap: () {
                  primaryColor = Colors.green;
                  setColor(4);
                  setState(() {});
                }),
                _colorSelection(Colors.pink, onTap: () {
                  primaryColor = Colors.pink;
                  setColor(5);
                  setState(() {});
                }),
                _colorSelection(Colors.purple, onTap: () {
                  primaryColor = Colors.purple;
                  setColor(6);
                  setState(() {});
                }),
                _colorSelection(Colors.yellow, onTap: () {
                  primaryColor = Colors.yellow;
                  setColor(7);
                  setState(() {});
                }),
              ],
            ),
          ],
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
