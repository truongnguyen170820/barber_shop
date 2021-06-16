import 'package:barber_shop/utils/color_utils.dart';
import 'package:barber_shop/utils/font_utils.dart';
import 'package:barber_shop/view/booking/booking_page.dart';
import 'package:barber_shop/widget/circle_avatar.dart';
import 'package:barber_shop/widget/common_appbar.dart';
import 'package:barber_shop/widget/global.dart';
import 'package:flutter/material.dart';

class HistoryDetailPage extends StatefulWidget {
 final History history;

  const HistoryDetailPage({ this.history});
  @override
  _HistoryDetailPageState createState() => _HistoryDetailPageState();
}

class _HistoryDetailPageState extends State<HistoryDetailPage> {
  TextEditingController _nameCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backAppBar(context, "Thông tin đặt lịch"),
      body: Column(
        children: [
          circleAvatar("${widget.history.imaageUrl??""}", "${widget.history.name??""}", radius: 30),
          _buidlItem("Tên", widget.history.name??"", _nameCtrl)
        ],
      ),
    );
  }
  Widget _buidlItem(String name, String hintName,TextEditingController controller, {Widget widget}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name,
          style: FontUtils.NORMAL.copyWith(color: ColorUtils.TEXT_BLACK_1, fontSize: setSp(12)),),
        Container(
          margin: EdgeInsets.only(top: setHeight(6),bottom: setHeight(16) ),
          decoration: BoxDecoration(
            border: Border.all(color: ColorUtils.gray2),
            borderRadius: BorderRadius.circular(12),
          ),
          child: TextField(
            controller: controller,
            style: TextStyle(fontSize: 18, color: Colors.black),
            decoration: InputDecoration(
                suffixIcon: widget,
                hintText: hintName,
                border: OutlineInputBorder(borderSide: BorderSide.none)),
          ),
        ),
      ],
    );
  }
}
