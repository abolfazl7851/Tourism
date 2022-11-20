import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tourism/ui/ui_helper/CustomImage.dart';
import 'package:tourism/ui/ui_helper/SettingItem.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
                Image.asset(
                  "images/profile.png",
                  width: 80,
                  height: 80,
                  // radius: 50,
                ),
                SizedBox(
                  height: 12,
                ),
                Text(textDirection: TextDirection.ltr,
                  "سلام (نام کاربری)",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "+98 123 456 789",textDirection: TextDirection.ltr,
                  style: TextStyle(
                    color: Colors.black38,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 50),
            child: SettingItem(
                title: "تنظیمات حساب",
                leadingIcon: Icons.settings,
                leadingIconColor: Colors.deepOrange,
                onTap: () {}),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 15),
            child: SettingItem(
                title: "ذخیره شده ها",
                leadingIcon: Icons.bookmark_border,
                leadingIconColor: Colors.blue,
                onTap: () {}),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 15),
            child: SettingItem(
                title: "مورد علاقه ها",
                leadingIcon: Icons.favorite,
                leadingIconColor: Colors.red,
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
              title: "خروج از حساب کاربری",
              leadingIcon: Icons.logout_outlined,
              leadingIconColor: Colors.grey.shade400,
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
          "آیا می خواهید از حساب کاربری خود خارج شوید؟",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(
                  "این بخش در حال بروز رسانی می باشد. از شکیبایی شما سپاسگزاریم.",
                  style: TextStyle(color: Colors.black),
                ),
                backgroundColor: Color(0xffe8c293),
              ));
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
