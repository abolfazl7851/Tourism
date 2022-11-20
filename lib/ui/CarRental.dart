import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tourism/datas/Item.dart';
import 'package:tourism/ui/ui_helper/BranchesPoints.dart';
import 'package:tourism/ui/ui_helper/CustomImage.dart';
import 'package:tourism/ui/ui_helper/EmergencyItem.dart';
import 'package:tourism/ui/ui_helper/SettingItem.dart';

class CarRental extends StatefulWidget {
  const CarRental({Key? key}) : super(key: key);

  @override
  _CarRentalState createState() => _CarRentalState();
}

class _CarRentalState extends State<CarRental> {
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
                  "نیاز به خودرو دارید؟ اینجا خودرو هم داریم:)",
                  style: TextStyle(
                    color: Colors.green[700],
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 50),
            child: EmergencyItem(
                title: "ثبت در خواست خودرو",
                leadingIcon: Icons.car_rental_outlined,
                leadingIconColor: Colors.blue[600],
                onTap: () {

                  registerCarRental();
                }),
          ),


        ],
      ),
    );
  }

registerCarRental() {
  showCupertinoModalPopup(
    context: context,
    builder: (context) => CupertinoActionSheet(
      message: Text(
        "از در خواست خودرو خود مطمئن هستید؟",
        style: TextStyle(color: Colors.black),
      ),
      actions: [
        CupertinoActionSheetAction(
          onPressed: () {
            Navigator.of(context).pop();
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text(
                "تا دقایقی دیگر کارشناسان ما با شما تماس خواهند گرفت.",
                style: TextStyle(color: Colors.black),

              ),
              backgroundColor: Color(0xffe8c293),
            ));
          },
          child: Text(
            "بله",
            style: TextStyle(
              color: Colors.green[700],
               fontWeight: FontWeight.bold
            ),
          ),
        ),
      ],
      cancelButton: CupertinoActionSheetAction(
        child: Text("لغو"),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    ),
  );
}
}
