// import 'package:timesoft/widget/global.dart';
// import 'package:flutter/material.dart';
// import 'package:timesoft/utils/color_utils.dart';
// import 'package:timesoft/utils/screen/screen.dart';
//
// class HomeGridViewItem extends StatelessWidget {
//   final String iconPath;
//   final String title;
//   final String value;
//   final Function onTap;
//   HomeGridViewItem(this.iconPath, this.title, this.value, this.onTap);
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Column(
//         children: [
//           Container(
//             width: setWidth(350),
//             // height: setHeight(77),
//             decoration: BoxDecoration(
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.35),
//                     spreadRadius: 3,
//                     blurRadius: 5,
//                     offset: Offset(0, 3), // changes position of shadow
//                   ),
//                 ],
//               color: ColorUtils.WHITE,
//               borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(setWidth(10)),
//                 topRight: Radius.circular(setWidth(10)),
//               )
//             ),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Container(
//                     width: setWidth(43),
//                     height: setHeight(43),
//                   margin: EdgeInsets.only(top: setHeight(9)),
//                     child: Image.asset(iconPath)),
//                 Container(
//                     margin: EdgeInsets.only(top: setHeight(5),bottom: setHeight(5)),
//                     child: Text(title, style: TextStyle(fontSize: setSp(11)))),
//               ],
//             ),
//           ),
//           Expanded(
//             child: Container(
//               alignment: Alignment.center,
//               decoration: BoxDecoration(
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.35),
//                       spreadRadius: 3,
//                       blurRadius: 5,
//                       offset: Offset(0, 3), // changes position of shadow
//                     ),
//                   ],
//                   color: ColorUtils.blue2,
//                   borderRadius: BorderRadius.only(
//                     bottomLeft: Radius.circular(setWidth(10)),
//                     bottomRight: Radius.circular(setWidth(10)),
//                   )
//               ),
//               // width: setWidth(109),
//               // height: setHeight(29),
//               child: Text(value,
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: setSp(13), color: Colors.white)),),
//           ),
//         ],
//       ),
//     );
//   }
// }
