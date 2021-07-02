import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:themes/screen/bottom_sheet_screen/bottom_sheet_screen.dart';
import 'package:themes/screen/theme/themes_screen.dart';
import 'package:themes/screen/transaction_screen/transaction_screen.dart';
import '../finance.dart';

SharedPreferences? preferences;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    // BottomSheetScreen(),

    TransactionScreen(),
    FinancialScreen(),
    ThemesScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        currentIndex: selectedIndex,
        onTap: (index) => setState(
          () {
            selectedIndex = index;
          },
        ),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.search),
          //   label: 'Search',
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.color_lens),
            label: 'Colors',
          ),
        ],
      ),
      body: _widgetOptions.elementAt(selectedIndex),
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
