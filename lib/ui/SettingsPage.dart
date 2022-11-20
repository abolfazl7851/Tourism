import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tourism/ui/ui_helper/CustomImage.dart';
import 'package:tourism/ui/ui_helper/SettingItem.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, index) => buildBody(),
                childCount: 1,
              ),
            )
          ],
        ));
  }

  Widget buildBody() {
    return SingleChildScrollView(
      padding: EdgeInsets.only(right: 20, top: 10),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20, top: 20,),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 12,
                ),
                Text(
                  textDirection: TextDirection.rtl,
                  "تنظیمات",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 50),
            child: SettingItem(
                title: "تم",
                leadingIcon: CupertinoIcons.sun_max_fill,
                leadingIconColor: Colors.yellow[700],
                onTap: () {}),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 15),
            child: SettingItem(
                title: "فونت و اندازه متون",
                leadingIcon: Icons.font_download,
                leadingIconColor: Colors.black,
                onTap: () {}),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 15),
            child: SettingItem(
                title: "فایل ها",
                leadingIcon: Icons.file_open,
                leadingIconColor: Colors.blue,
                onTap: () {}),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 15),
            child: SettingItem(
                title: "حریم خصوصی",
                leadingIcon: Icons.privacy_tip_outlined,
                leadingIconColor: Colors.green,
                onTap: () {}),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 15),
            child: SettingItem(
              title: "خروج از برنامه",
              leadingIcon: Icons.exit_to_app,
              leadingIconColor: Colors.red[700],
              onTap: () {
                showConfirmLogout();
              },
            ),
          ),
        ],
      ),
    );
  }

  showConfirmLogout() {
    showCupertinoModalPopup(
      context: context,
      builder: (context) => CupertinoActionSheet(
        message: Text(
          "آیا می خواهید از برنامه خارج شوید؟",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          CupertinoActionSheetAction(
            onPressed: () {
              exit(0) ;
            },
            child: Text(
              "بله",
              style: TextStyle(
                color: Colors.red[600],
              ),
            ),
          ),
        ],
        cancelButton: CupertinoActionSheetAction(
          child: Text("بستن"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
