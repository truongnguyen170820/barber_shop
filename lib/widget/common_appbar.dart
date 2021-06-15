
import 'package:barber_shop/utils/color_utils.dart';
import 'package:barber_shop/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'global.dart';

Widget searchAppBar(BuildContext context, String title, Function onBackPress,
    SearchDelegate delegate) {
  return AppBar(
    leading: IconButton(
      onPressed: onBackPress,
      icon: Icon(Icons.arrow_back_ios),
    ),
    title: Text(
      title,
      style: TextStyle(fontSize: setSp(17), fontWeight: FontWeight.normal),
    ),
    centerTitle: true,
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.search),
        onPressed: () {
          showSearch(
            context: context,
            delegate: delegate,
          );
        },
      ),
    ],
    flexibleSpace: Container(
      decoration: BoxDecoration(
        color: ColorUtils.MAIN_GRADIENT_1,
        // gradient: ColorUtils.APPBAR_GRADIENT,
      ),
    ),
    textTheme: TextTheme(
        headline6: TextStyle(color: Colors.white, fontSize: setSp(17))),
    iconTheme: IconThemeData(color: Colors.white),
    elevation: 0.0,
  );
}

Widget backAppBar(BuildContext context, String title,
    {List<Widget> actions, bool value}) {
  return AppBar(
    leading: IconButton(
      onPressed: () => Navigator.pop(context, value),
      icon: Icon(Icons.arrow_back_ios),
    ),
    title: Text(
      title,
      style: TextStyles.appbar_text,
    ),
    centerTitle: true,
    actions: actions,

    flexibleSpace: Container(
      decoration: BoxDecoration(
        // color: ColorUtils.MAIN_GRADIENT_1,
        color: ColorUtils.gray4
      ),
    ),
    // textTheme:
    //     TextTheme(headline6: TextStyle(color: Colors.white, fontSize: setSp(17))),
    iconTheme: IconThemeData(color: Colors.white),
    elevation: 2,
  );
}

// class MainAppBar extends StatefulWidget {
//   final String title;
//   MainAppBar(this.title);
//   @override
//   _MainAppBarState createState() => _MainAppBarState();
// }
//
// class _MainAppBarState extends State<MainAppBar> {
//   NotificationCountBloc notificationCountBloc;
//   @override
//   void initState() {
//     super.initState();
//     notificationCountBloc = NotificationCountBloc();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     notificationCountBloc.getNotificationCount(
//         context, GlobalCache().loginData.userInfo.currentDepartment.idStr);
//     return AppBar(
//       title: Text(widget.title, style: TextStyles.appbar_text),
//       centerTitle: true,
//       actions: [
//         Container(
//           padding: EdgeInsets.only(right: 5),
//           child: GestureDetector(
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => NotificationView()),
//               ).then((value) {
//                 setState(() {});
//               });
//             },
//             child: Stack(
//               children: [
//                 IconButton(
//                   onPressed: () {},
//                   icon: Icon(
//                     Icons.notifications_none,
//                     color: Colors.white,
//                     size: 28,
//                   ),
//                 ),
//                 Positioned(
//                   top: 0,
//                   right: 5,
//                   child: StreamBuilder(
//                       stream: notificationCountBloc.getNotificationCountStream,
//                       builder: (context, snapshot) {
//                         NotificationCountModel data;
//                         if (snapshot.hasData) {
//                           data = snapshot.data;
//                           if (data.notificationUnread == 0) {
//                             return Container();
//                           } else
//                             return Container(
//                               constraints: BoxConstraints(
//                                 minWidth: setWidth(18),
//                                 minHeight: setHeight(18),
//                               ),
//                               padding: EdgeInsets.all(3),
//                               decoration: BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   color: ColorUtils.RED_BUTTON),
//                               alignment: Alignment.center,
//                               child: data.notificationUnread > 99
//                                   ? Text(
//                                       '99+',
//                                       style: TextStyle(
//                                           fontSize: setSp(10),
//                                           color: Colors.white),
//                                     )
//                                   : Text('${data.notificationUnread}',
//                                       style: TextStyle(
//                                           fontSize: setSp(12),
//                                           color: Colors.white)),
//                             );
//                         } else
//                           return Container();
//                       }),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//       flexibleSpace: Container(
//         decoration: BoxDecoration(
//           gradient: ColorUtils.APPBAR_GRADIENT,
//         ),
//       ),
//       iconTheme: IconThemeData(color: Colors.white),
//       elevation: 2,
//     );
//   }
//
//   @override
//   void dispose() {
//     notificationCountBloc.dispose();
//     super.dispose();
//   }
// }
