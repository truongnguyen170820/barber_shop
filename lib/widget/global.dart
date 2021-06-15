
import 'package:barber_shop/utils/screen/screen_utils.dart';
import 'package:flutter/material.dart';


class Global {
}
setHeight(num value) {
  return ScreenUtil().setHeight(value);
}
boxShadow(){
  return [
    BoxShadow(
      color: Colors.grey.withOpacity(0.2),
      spreadRadius: 1,
      blurRadius: 1,
      offset: Offset(0, 1), // changes position of shadow
    ),
  ];
}
setWidth(num value) {
  return ScreenUtil().setWidth(value);
}

setSp(num value) {
  return ScreenUtil().setSp(value);
}


String getAssetsIcon(String icon){
  return "assets/icons/" + icon;
}

String getAssetsImage(String image){
  return "assets/images/" + image;
}


void dismissKeyboard(BuildContext context) {
  FocusScope.of(context).unfocus();
}
void pushTo(BuildContext context,Widget widget, ){
  Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) =>widget));
}
void pop(BuildContext context, {dynamic result}) {
  Navigator.pop(
    context,
    result,
  );

}