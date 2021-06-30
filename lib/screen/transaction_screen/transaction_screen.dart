import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:themes/screen/theme/themes_screen.dart';
import 'package:themes/utils/color_resource.dart';
import 'package:themes/utils/string_resource.dart';
import 'package:themes/widget/constants.dart';
import 'package:themes/widget/custom_text.dart';

SharedPreferences? preferences;

class TransactionScreen extends StatefulWidget {
  @override
  _TransactionScreenState createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  int selectedIndex = 0;

  Future getColor() async {
    preferences = await SharedPreferences.getInstance();
    int? idx = preferences!.getInt('color');
    primaryColor = getColorIndex(idx!);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();

    getColor();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  title: CustomText(
                    StringResource.hey,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  subtitle: CustomText(
                    StringResource.welcome,
                    fontSize: 14,
                  ),
                  trailing: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ThemesScreen()));
                    },
                    child: Icon(
                      Icons.account_circle,
                      size: 30,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 28.0, bottom: 30),
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.purple.shade400,
                            Colors.deepPurple.shade400
                          ],
                        ),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomText(StringResource.balance),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomText(StringResource.lastTransaction),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 200,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorResource.grey800,
                      ),
                      child: Center(
                        child: CustomText(
                          StringResource.remittance,
                          fontSize: 16,
                          color: ColorResource.white,
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ColorResource.grey800),
                      child: Center(
                        child: CustomText(
                          StringResource.amazon,
                          fontSize: 16,
                          color: ColorResource.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: selectedIndex,
        onTap: (index) => setState(() {
          selectedIndex = index;
        }),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.color_lens),
            label: 'Colors',
          ),
        ],
      ),
    );
  }
}

// class RadiantGradientMask extends StatelessWidget {
//   RadiantGradientMask({required this.child});
//   final Widget child;

//   @override
//   Widget build(BuildContext context) {
//     return ShaderMask(
//       shaderCallback: (Rect bounds) {
//         return RadialGradient(
//           center: Alignment.bottomLeft,
//           radius: 0.5,
//           colors: <Color>[Colors.black, Colors.amberAccent],
//           tileMode: TileMode.mirror,
//         ).createShader(bounds);
//       },
//       child: child,
//     );
//   }
// }
