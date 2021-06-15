//
// import 'package:flutter/material.dart';
// import 'package:taxi_app/utils/color_utils.dart';
// import 'package:taxi_app/widget/global.dart';
//
// ProgressDialog progDialog(BuildContext context,{String message = "Đang tải..."}) {
//   ProgressDialog progressDialog = ProgressDialog(context);
//   progressDialog.style(
//     message: message,
//     messageTextStyle: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
//     backgroundColor: ColorUtils.backgroundColor,
//     progressWidget: Container(
//       padding: EdgeInsets.all(setWidth(8)),
//       child: CircularProgressIndicator(
//         valueColor: AlwaysStoppedAnimation(Colors.blue),
//       ),
//     ),
//   );
//   return progressDialog;
// // }