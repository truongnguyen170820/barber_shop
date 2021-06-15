import 'package:barber_shop/utils/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'global.dart';

class SimpleButton extends StatelessWidget {
  final String title;
  final Function onTap;
  final int width;
  final int height;
  final Color color;
  SimpleButton(this.title, this.onTap, {this.width=160, this.height=45, this.color=Colors.blue});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: setWidth(width),
        height: setWidth(height),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(10))
          ),
        child: Text(title, style: TextStyles.button_text,),
      ),
    );
  }
}
class ActionButton extends StatelessWidget {
  final String title;
  final Function onTap;
  ActionButton(this.title, this.onTap);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: setWidth(160),
        height: setWidth(40),
        decoration: BoxDecoration(
            color: Colors.redAccent,
            borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        child: Text(title, style: TextStyles.button_text,),
      ),
    );
  }
}