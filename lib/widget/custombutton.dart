import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'global.dart';

class ButtonCustom extends StatelessWidget {

  String title;
  TextStyle textStyle;
  double borderRadius;
  Color bgColor;
  EdgeInsets margin;
  Function onTap;
  double width;
  double height;

  ButtonCustom({this.bgColor, this.onTap, this.title,
    this.borderRadius = 12, this.textStyle, this.margin,this.width=double.infinity,this.height=32});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap,
      child: Container(
        margin: margin,
        width: (width),height:setHeight(height) ,
        alignment: Alignment.center,
        // padding:  EdgeInsets.only(left:setWidth(20), top:setHeight(15), right:setWidth(20), bottom: setHeight(15)),
        decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(borderRadius)
        ),
        child: Text(title, style: textStyle,),
      ),
    );
  }
}