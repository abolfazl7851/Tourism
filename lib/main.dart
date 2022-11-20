import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter_course_a/providers/CryptoDataProvider.dart';
// import 'package:flutter_course_a/providers/MarketViewProvider.dart';
// import 'package:flutter_course_a/providers/UserDataProvider.dart';
// import 'package:flutter_course_a/ui/MainWrapper.dart';
// import 'package:flutter_course_a/ui/SignUpScreen.dart';
// import 'package:flutter_course_a/ui/ui_helper/ShimmerMarketWidget.dart';
// import 'package:flutter_course_a/ui/ui_helper/ThemeSwitcher.dart';
import 'package:provider/provider.dart';
import 'package:tourism/providers/ThemeProvider.dart';
import 'package:tourism/ui/HomePage.dart';
import 'package:tourism/ui/MainWrapper.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => ThemeProvider())
          // ChangeNotifierProvider(create: (context) => CryptoDataProvider()),
          // ChangeNotifierProvider(create: (context) => MarketViewProvider()),
          // ChangeNotifierProvider(create: (context) => UserDataProvider()),
        ],
        child: const MyMaterialApp(),
      )
  );
}

class MyMaterialApp extends StatefulWidget {
  const MyMaterialApp({Key? key}) : super(key: key);

  @override
  State<MyMaterialApp> createState() => _MyMaterialAppState();
}

class _MyMaterialAppState extends State<MyMaterialApp> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
        builder: (context,themeProvider,child){
          return   MaterialApp(
            themeMode: themeProvider.themeMode,
            theme: MyThemes.lightTheme,
            darkTheme: MyThemes.darkTheme,
            debugShowCheckedModeBanner: false,
            home: const Directionality(textDirection: TextDirection.rtl, child: MainWrapper())
          );
        });




  }
}
