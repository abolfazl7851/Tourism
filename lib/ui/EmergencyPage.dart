import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tourism/datas/Item.dart';
import 'package:tourism/ui/ui_helper/BranchesPoints.dart';
import 'package:tourism/ui/ui_helper/CustomImage.dart';
import 'package:tourism/ui/ui_helper/EmergencyItem.dart';
import 'package:tourism/ui/ui_helper/SettingItem.dart';

class EmergencyPage extends StatefulWidget {
  const EmergencyPage({Key? key}) : super(key: key);

  @override
  _EmergencyPageState createState() => _EmergencyPageState();
}

class _EmergencyPageState extends State<EmergencyPage> {
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
            padding: EdgeInsets.only(left: 20, top: 20, ),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 12,
                ),
                Text(
                  textDirection: TextDirection.rtl,
                  "نیاز به کدام مورد اورژانسی دارید؟",
                  style: TextStyle(
                    color: Colors.red[800],
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 50),
            child: EmergencyItem(
                title: "برو به نزدیک ترین بیمارستان",
                leadingIcon: Icons.local_hospital,
                leadingIconColor: Colors.red[800],
                onTap: () {
                  List<Item> points =[] ;
                  points.add(Item(108, "بیمارستان امام رضا", "","بیمارستان",
                      "4.3", 32.875075, 59.211816, false,
                      [], "توضیحات بیمارستان"));

                  points.add(Item(109, "بیمارستان ولی عصر", "","بیمارستان",
                      "3.3", 32.858863, 59.233165, false,
                      [], "توضیحات بیمارستان"));
                  points.add(Item(110, "بیمارستان رازی", "","بیمارستان",
                      "3.8", 32.855604, 59.229599, false,
                      [], "توضیحات بیمارستان"));

                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => BranchesPoints(items: points)));
                }),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 30),
            child: EmergencyItem(
                title: "برو به نزدیکترین داروخانه",
                leadingIcon: Icons.local_pharmacy,
                leadingIconColor: Colors.red[500],
                onTap: () {

                  List<Item> points =[] ;
                  points.add(Item(115, "داروخانه دکتر احمد پور", "","داروخانه",
                      "0", 32.891710, 59.221005, false,
                      [], "توضیحات داروخانه"));

                  points.add(Item(116, "داروخانه دکتر زنگویی", "","داروخانه",
                      "0", 32.873849, 59.211432, false,
                      [], "توضیحات داروخانه"));
                  points.add(Item(117, "داروخانه دکتر شمشیر گران", "","داروخانه",
                      "0", 32.865269, 59.216688, false,
                      [], "توضیحات داروخانه"));

                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => BranchesPoints(items: points)));

                }),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 15),
            child: EmergencyItem(
                title: "برو به نزدیک ترین ایستگاه پلیس",
                leadingIcon: Icons.local_police,
                leadingIconColor: Colors.green,
                onTap: () {

                  List<Item> points =[] ;
                  points.add(Item(126, "کلانتری 13 جوادیه ", "","ایستگاه پلیس",
                      "0", 32.898451, 59.224897, false,
                      [], "توضیحات ایستگاه پلیس"));
                  points.add(Item(127, "کلانتری 11 توحید ", "","ایستگاه پلیس",
                      "0", 32.848962, 59.211103, false,
                      [], "توضیحات ایستگاه پلیس"));
                  points.add(Item(128, "کلانتری 12 میدان امام ", "","ایستگاه پلیس",
                      "0", 32.884443, 59.217289, false,
                      [], "توضیحات ایستگاه پلیس"));



                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => BranchesPoints(items: points)));
                }),
          ),

        ],
      ),
    );
  }

  // showConfirmLogout() {
  //   showCupertinoModalPopup(
  //     context: context,
  //     builder: (context) => CupertinoActionSheet(
  //       message: Text(
  //         "آیا می خواهید از حساب کاربری خود خارج شوید؟",
  //         style: TextStyle(color: Colors.black),
  //       ),
  //       actions: [
  //         CupertinoActionSheetAction(
  //           onPressed: () {
  //             Navigator.of(context).pop();
  //             ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //               content: Text(
  //                 "این بخش در حال بروز رسانی می باشد. از شکیبایی شما سپاسگزاریم.",
  //                 style: TextStyle(color: Colors.black),
  //               ),
  //               backgroundColor: Color(0xffe8c293),
  //             ));
  //           },
  //           child: Text(
  //             "بله",
  //             style: TextStyle(
  //               color: Colors.red[600],
  //             ),
  //           ),
  //         ),
  //       ],
  //       cancelButton: CupertinoActionSheetAction(
  //         child: Text("لغو"),
  //         onPressed: () {
  //           Navigator.of(context).pop();
  //         },
  //       ),
  //     ),
  //   );
  // }
}
