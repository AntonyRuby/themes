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
        title: CustomText(StringResource.changeTheme, color: Colors.white),
      ),
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              title: Center(
                  child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Dark/Light"),
              )),
              subtitle: GestureDetector(
                  onTap: () => currentTheme.toggleTheme(),
                  child: Icon(Icons.invert_colors)),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text("Select Colors"),
            ),
            Wrap(
              alignment: WrapAlignment.end,
              spacing: 10,
              runSpacing: 12,
              children: [
                _colorSelection(Colors.red, onTap: () {
                  setColor(1);
                  setState(() {});
                }),
                _colorSelection(
                  Colors.indigo,
                  onTap: () {
                    setColor(2);
                    setState(() {});
                  },
                ),
                _colorSelection(Colors.lightBlue),
                _colorSelection(Colors.red),
                _colorSelection(Colors.green),
                _colorSelection(Colors.pink),
                _colorSelection(Colors.purple),
                _colorSelection(Colors.yellow),
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
        width: 50,
        height: 50,
        decoration: new BoxDecoration(
          color: customColor,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
