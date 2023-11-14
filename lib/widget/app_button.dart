import 'package:car_care_transport/component/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color iconColor;
  final Color textColor;
  final Function() ontap;
  final double fontSize;
  final Color backgroundColor;

  const AppButton({
    Key key,
    this.text,
    this.icon,
    this.iconColor = Colors.white,
    this.textColor = AppColor.backGroundColor,
    this.ontap,
    this.fontSize = 20,
    this.backgroundColor = AppColor.backGroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Column(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: backgroundColor,
            ),
            child: Icon(
              icon,
              color: iconColor,
            ),
          ),
          text != null ? Text(
            text,
            style: TextStyle(fontSize: fontSize, color: textColor),
          ): Container(),
        ],
      ),
    );
  }
}
