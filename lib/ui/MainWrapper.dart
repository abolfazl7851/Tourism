import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:tourism/ui/CarRental.dart';
import 'package:tourism/ui/HomePage.dart';
import 'package:tourism/ui/EmergencyPage.dart';
import 'package:tourism/ui/ProfilePage.dart';
import 'package:tourism/ui/SettingsPage.dart';
import 'package:tourism/ui/ui_helper/ThemeSwitcher.dart';
// import 'package:tourism/ui/ui_helper/BottomNav.dart';

// import 'package:tourism/ui/ui_helper/BottomNav.dart';
// import 'package:flutter_course_a/ui/ProfilePage.dart';
// import 'package:flutter_course_a/ui/WatchListPage.dart';
// import 'package:flutter_course_a/ui/ui_helper/BottomNav.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({Key? key}) : super(key: key);

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  PageController _myPage = PageController(initialPage: 2);

  @override
  Widget build(BuildContext context) {

    // var primaryColor = Theme.of(context).primaryColor;
    // var primaryColor2 = Theme.of(context).primaryColorDark;
    TextTheme textTheme = Theme.of(context).textTheme;


    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.amber,
      //   onPressed: () {},
      //   child: Icon(Icons.compare_arrows_outlined),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // bottomNavigationBar: BottomNav(pageController: _myPage,),

      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: const Color(0xff292038),
        actions: [
          ThemeSwitcher(),
        ],
        titleTextStyle: textTheme.titleLarge,
        title: const Text("ایران بین",),
        centerTitle: true,
      ),

      bottomNavigationBar: CurvedNavigationBar(
        index: 2,
        height: 60.0,
        items: const <Widget>[
          Icon(Icons.person, size: 32),
          Icon(Icons.car_rental_outlined, size: 32),
          Icon(Icons.home, size: 32),
          Icon(Icons.emergency, size: 32),
          Icon(Icons.settings, size: 32),
        ],
        color: const Color(0xff292038),
        buttonBackgroundColor: const Color(0xffe8c293),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 600),

        onTap: (index) {
          setState(() {
            _myPage.jumpToPage(index);
            print(index);
          });
        },
        letIndexChange: (index) => true,
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _myPage,
        children: const [
          ProfilePage(),
          CarRental(),
          HomePage(),
          EmergencyPage(),
          SettingsPage(),

        ],
      ),
    );
  }
}
