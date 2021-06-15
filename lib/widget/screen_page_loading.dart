import 'package:barber_shop/utils/color_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:timesoft/utils/color_utils.dart';

import 'global.dart';

Widget pageLoading = SizedBox.expand(
  child: Container(
    color: ColorUtils.transparent,
    child: Center(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color:  Colors.transparent
          ),
          borderRadius: BorderRadius.circular(10),
          color: ColorUtils.gray4,
        ),
        alignment: Alignment.center,
        height: setHeight(70),
        width: setHeight(70),
        child: CupertinoActivityIndicator(),
      ),
    ),
  ),
);