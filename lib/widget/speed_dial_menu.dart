// import 'package:timesoft/utils/color_utils.dart';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_speed_dial/flutter_speed_dial.dart';
//
// class SpeedDialMenuView extends StatefulWidget {
//   @override
//   _SpeedDialMenuViewState createState() => _SpeedDialMenuViewState();
// }
//
// class _SpeedDialMenuViewState extends State<SpeedDialMenuView> {
//   bool isOpen = true;
//   @override
//   Widget build(BuildContext context) {
//     return SpeedDial(
//       child: isOpen? Icon(Icons.add, size: 34,): Icon(Icons.clear, color: Colors.red, size: 30,),
//       // child: isOpen? Icon(Icons.add, size: 25,): Image.asset('assets/icons/ic_floatingmenu/Round Btn Default Light.png'),
//       onOpen: () {
//         setState(() {
//           isOpen = !isOpen;
//         });
//       },
//       onClose: () {
//         setState(() {
//           isOpen = !isOpen;
//         });
//       },
//       // animatedIcon: AnimatedIcons.menu_close,
//       // animatedIconTheme: IconThemeData(size: 22.0),
//       visible: true,
//       curve: Curves.bounceIn,
//       children: [
//         SpeedDialChild(
//           child: Image.asset('assets/icons/floatingmenu/ic_checkin.png'),
//           backgroundColor: Colors.white,
//           onTap: () {
//
//           },
//           label: 'Checkin',
//           labelStyle: TextStyle(fontWeight: FontWeight.w500),
//           labelBackgroundColor: ColorUtils.bgGreen,
//         ),
//         SpeedDialChild(
//           child:
//           Image.asset('assets/icons/floatingmenu/ic_xin_nghi_phep.png'),
//           backgroundColor: Colors.white,
//           onTap: () {
//
//           },
//           label: 'Xin nghỉ phép',
//           labelStyle: TextStyle(fontWeight: FontWeight.w500),
//           labelBackgroundColor: ColorUtils.bgGreen,
//         ),
//         SpeedDialChild(
//           child: Image.asset(
//               'assets/icons/floatingmenu/ic_dang_ky_lam_them.png'),
//           backgroundColor: Colors.white,
//           onTap: () {
//
//           },
//           label: 'Đăng ký làm thêm',
//           labelStyle: TextStyle(fontWeight: FontWeight.w500),
//           labelBackgroundColor: ColorUtils.bgGreen,
//         ),
//       ],
//     );
//   }
// }
