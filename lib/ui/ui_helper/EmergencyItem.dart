import 'package:flutter/material.dart';

class EmergencyItem extends StatelessWidget {
  final IconData? leadingIcon;
  final Color? leadingIconColor;
  final String title;
  final GestureTapCallback? onTap;
  const EmergencyItem(
      {Key? key,
        required this.title,
        this.onTap,
        this.leadingIcon,
        this.leadingIconColor = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 15, right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(7)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black87.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        child: Container(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: leadingIcon != null
                ? [
              Container(
                padding: EdgeInsets.all(7),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black87.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ],
                ),
                child: Icon(
                  leadingIcon,
                  size: 24,
                  color: leadingIconColor,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey[500],
                size: 14,
              )
            ]
                : [
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey[500],
                size: 14,
              )
            ],
          ),
        ),
      ),
    );
  }
}
