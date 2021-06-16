import 'package:barber_shop/utils/color_utils.dart';
import 'package:barber_shop/utils/font_utils.dart';
import 'package:barber_shop/view/history/history_detail_page.dart';
import 'package:barber_shop/view/home_main_view.dart';
import 'package:barber_shop/widget/circle_avatar.dart';
import 'package:barber_shop/widget/common_appbar.dart';
import 'package:barber_shop/widget/global.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HistoryPage extends StatefulWidget {
  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backAppBar(context, 'Lịch sử đặt lịch'),
      body: ListView.builder(
          itemCount: listHistory.length,
          itemBuilder: (context, snapshot){
        return GestureDetector(
          onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=> HistoryDetailPage(history: listHistory[snapshot])));},
          child: Container(
            margin: EdgeInsets.only(left: setWidth(16), right: setWidth(16), top: setHeight(16)),
            padding: EdgeInsets.only(bottom: setHeight(16)),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: ColorUtils.gray6
                )
              )
            ),
            child: Row(
              children: [
              circleAvatar(listHistory[snapshot].imaageUrl??"", listHistory[snapshot].imaageUrl??"", radius: 25),
                SizedBox(width: setWidth(10)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(listHistory[snapshot].name??"", style: FontUtils.MEDIUM),
                    SizedBox(height: setHeight(6)),
                    Text(listHistory[snapshot].dateStr??"", style: FontUtils.MEDIUM)
                  ],
                )

                ],
            ),
          ),
        );
      }),
    );
  }
}
