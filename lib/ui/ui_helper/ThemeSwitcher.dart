
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourism/providers/ThemeProvider.dart';

class ThemeSwitcher extends StatelessWidget {
  const ThemeSwitcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    var swithIcon = Icon(themeProvider.isDarkMode ? CupertinoIcons.moon_fill : CupertinoIcons.sun_max_fill) ;

    return IconButton(onPressed: (){

      themeProvider.toggleTheme();

    }, icon: swithIcon);
  }
}