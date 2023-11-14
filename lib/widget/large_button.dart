import 'package:car_care_transport/component/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';


class LargeButtonText extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final String text;
  final Function() onTap;
  final bool isBorder;


  const LargeButtonText({Key key,
    this.backgroundColor:AppColor.backGroundColor,
    this.textColor,
    this.onTap,
    this.text,
    this.isBorder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width-60,
        margin: EdgeInsets.only(left: 30, right: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
           color: backgroundColor,
          border: Border.all(
            width: 2,
            color: AppColor.mainColor
          ),
        ),
        child: Center(
          child: Text(text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: textColor
          ),
          ),
        ),
      ),
    );
  }
}
