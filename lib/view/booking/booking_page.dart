import 'package:barber_shop/utils/color_utils.dart';
import 'package:barber_shop/utils/font_utils.dart';
import 'package:barber_shop/utils/utilities.dart';
import 'package:barber_shop/view/home_main_view.dart';
import 'package:barber_shop/widget/circle_avatar.dart';
import 'package:barber_shop/widget/common_appbar.dart';
import 'package:barber_shop/widget/custombutton.dart';
import 'package:barber_shop/widget/global.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class BookingPage extends StatefulWidget {
  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {

  TextEditingController _nameCtrl = TextEditingController();
  TextEditingController _phoneCtrl = TextEditingController();
  int selectedDayIndex = 0;
  int selectEployess = 0;
  DateTime selectedDay;
  List<DateTime> listDays = [];
  List<Employess> listEm = [];
  int hourIndex;
  int minuteIndex;
  @override
  void initState() {

    listEmployess.forEach((element) {
      if(element.status == 2){
        listEm.add(element);
      }
      print("abc ${listEm.length}");
    });


    for (int i = 0; i <= 6; i++) {
      listDays.add(DateTime.now().add(Duration(days: i)));
    }
    hourIndex = DateTime.now().hour - 8;
    minuteIndex =
        double.parse((DateTime.now().minute / 10).toString()).round() + 1;
    if (minuteIndex > 5) {
      hourIndex += 1;
      minuteIndex = 0;
    }
    selectedDay = listDays[0];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backAppBar(context, "Đặt lịch",),
      body: Container(
        padding: EdgeInsets.only(top: setHeight(16), left: setWidth(16), right: setWidth(16)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buidlItem("Họ tên","Nhập họ tên", _nameCtrl),
              _buidlItem("Số điện thoại","Nhập số điện thoại", _phoneCtrl),
              Container(
                height: setHeight(100),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Chọn nhân viên",style: FontUtils.NORMAL.copyWith(color: ColorUtils.TEXT_BLACK_1, fontSize: setSp(12)),),
                    Expanded(
                      child: ListView.builder(
                         scrollDirection: Axis.horizontal,
                          itemCount: listEm.length,
                          itemBuilder: (context, snapshot){
                        return _buildItemEmployess(listEm[snapshot], snapshot);
                      }),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Chọn ngày',
                      style: FontUtils.MEDIUM
                          .copyWith(color: ColorUtils.TEXT_LIGHT)),
                  Text(
                    getWeekDay(selectedDay) +
                        "-" +
                        Utilities.dateToString(selectedDay),
                    style: FontUtils.MEDIUM,
                  ),
                ],
              ),
              Container(
                  height: setHeight(55),
                  width: double.infinity,
                  margin:
                  EdgeInsets.only( top: setHeight(10), bottom: setHeight(16)),
                  child: ListView.builder(
                      itemCount: 7,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return _buildItemDay(index, listDays[index]);
                      })),
              Text(
                "Chọn thời gian checkin",
                style:
                FontUtils.MEDIUM.copyWith(color: ColorUtils.TEXT_LIGHT),
              ),
              Container(
                margin: EdgeInsets.only(top: setHeight(8)),
                width: double.infinity,
                padding: EdgeInsets.only(left: setWidth(16)),
                height: setHeight(250),
                child: ListView.builder(
                    itemCount: 15,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, hour) {
                      return _itemTime(hour);
                    }),
              ),
              Center(
                child: ButtonCustom(
                  onTap: (){},
                  width: setWidth(220),
                  height: setHeight(50),
                  title: "Đặt lịch",
                  borderRadius: 12,
                  bgColor: ColorUtils.gray4,
                  textStyle: FontUtils.MEDIUM.copyWith(color: ColorUtils.WHITE),
                ),
              ),
              SizedBox(height: setHeight(32),)
            ],
          ),
        ),
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
  Widget _buildItemEmployess(Employess employess, int index){
    const Color colorIsSelect = ColorUtils.icon_selected;
    const Color borderColor = ColorUtils.gray4;
   return  GestureDetector(
    onTap: (){
      setState(() {
        selectEployess = index;
      });
    },
     child: Container(
       height: setHeight(55),
       width: setWidth(70),
       margin: EdgeInsets.only(right: setWidth(7)),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Container(
               decoration: BoxDecoration(
                 shape: BoxShape.circle,
                 border: Border.all(
                   width: 2,
                     color: selectEployess == index ? colorIsSelect : borderColor),
               ),
               child: circleAvatar("${employess.imaageUrl??""}", employess.name??"", radius: 20)),
           Text(employess.name??"", style: FontUtils.MEDIUM.copyWith(color: ColorUtils.TEXT_BLACK_1,
               fontSize: setSp(12)),overflow: TextOverflow.clip,maxLines: 2,textAlign: TextAlign.center,)
         ],
       ),
     ),
   );
  }
  Widget _itemTime(int hour) {
    DateTime timeNow = DateTime.now();
    return Column(
      children: List.generate(6, (min) {
        return GestureDetector(
          onTap: () {
            if (timeNow.isBefore(DateTime(selectedDay.year, selectedDay.month,
                selectedDay.day, hour + 8, min * 10))) {
              setState(() {
                hourIndex = hour;
                minuteIndex = min;
              });
            }
          },
          child: Container(
            height: setHeight(30),
            width: setWidth(80),
            alignment: Alignment.center,
            margin: EdgeInsets.only(right: setWidth(8), bottom: setHeight(10)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                    color: (hourIndex == hour && minuteIndex == min)
                        ? ColorUtils.icon_selected
                        : ColorUtils.backgroundBorderLight),
                color: (timeNow.isAfter(DateTime(
                    selectedDay.year,
                    selectedDay.month,
                    selectedDay.day,
                    hour + 8,
                    min * 10)))
                    ? ColorUtils.gray4
                    : (hourIndex == hour && minuteIndex == min)
                    ? ColorUtils.icon_selected
                    : ColorUtils.backgroundGrayLight),
            child: Text(
              Utilities.formatTimeOfDay(
                  TimeOfDay(hour: hour + 8, minute: min * 10)),
              style: FontUtils.MEDIUM.copyWith(
                  color: (hourIndex == hour && minuteIndex == min)
                      ? Colors.white
                      : ColorUtils.TEXT_NORMAL),
            ),
          ),
        );
      }),
    );
  }
  Widget _buildItemDay(int index, DateTime dateTime) {
    const Color colorIsSelect = ColorUtils.icon_selected;
    const Color colorUnSelect = ColorUtils.backgroundGrayLight;
    const Color borderColor = ColorUtils.backgroundBorderLight;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedDayIndex = index;
          selectedDay = dateTime;
        });
      },
      child: Container(
        height: setHeight(55),
        width: setWidth(50),
        margin: EdgeInsets.only(right: setWidth(7)),
        decoration: BoxDecoration(
            color: selectedDayIndex == index ? colorIsSelect : colorUnSelect,
            border: Border.all(
                color: selectedDayIndex == index ? colorIsSelect : borderColor),
            borderRadius: BorderRadius.circular(4)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              getWeekDay(listDays[index]),
              style: FontUtils.MEDIUM.copyWith(
                  fontSize: setSp(12),
                  color: selectedDayIndex == index
                      ? Colors.white
                      : ColorUtils.TEXT_LIGHT),
            ),
            SizedBox(
              height: setHeight(3),
            ),
            Text(
              dateTime.day.toString(),
              style: FontUtils.MEDIUM.copyWith(
                  fontSize: setSp(16),
                  color: selectedDayIndex == index
                      ? Colors.white
                      : ColorUtils.TEXT_LIGHT),
            )
          ],
        ),
      ),
    );
  }
  String getWeekDay(DateTime day) {
    switch (day.weekday) {
      case 1:
        {
          return "T2";
        }
        break;
      case 2:
        {
          return "T3";
        }
        break;
      case 3:
        {
          return "T4";
        }
        break;
      case 4:
        {
          return "T5";
        }
        break;
      case 5:
        {
          return "T6";
        }
        break;
      case 6:
        {
          return "T7";
        }
        break;
      default:
        return "CN";
    }
  }
  check(){
    FocusScope.of(context).unfocus();
    if(_nameCtrl.text.trim().isEmpty){
      Utilities.showToast(context, "Ban chưa thêm họ tên");
      return;
    }
    if(_phoneCtrl.text.trim().isEmpty){
      Utilities.showToast(context, "Ban chưa thêm số điện thoại");
      return;
    }
    listHistory.add(History(
      name: _nameCtrl.text??"",

    ));
    // listHistory.add(HistoryHotel(_nameCtrl.text??"", _birthCtrl.text??"", _mobileCtrl.text??""
    //     , Utilities.formatTimeOfDay(TimeOfDay(hour: hourIndex + 8, minute: minuteIndex* 10))
    //         +" - "+Utilities.dateToString(selectedDay)
    //     , "", nameRoom: listRoom[selectedVipIndex].nameRoom, urlRoom: listRoom[selectedVipIndex].url,
    //     moneyRoom: listRoom[selectedVipIndex].moneyRoom,
    //     address: _txtSearchAddress.text??""));
    Navigator.pop(context);
  }
  Future<Null> _selectDate(BuildContext context, TextEditingController txtController) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1970, 8),
        lastDate: DateTime(2101));
    if (picked != null &&
        DateFormat('dd/MM/yyyy').format(picked) != txtController.text)
      setState(() {
        // selectedDate = picked;
        txtController.text = DateFormat('dd/MM/yyyy').format(picked);
      });
  }
}




class Employess{
  String imaageUrl;
  String name;
  String position;
  int status;

  Employess(this.name, this.position, this.status, this.imaageUrl);
}
List<Employess> listEmployess = [
  Employess("Nguyễn Ánh Vân", "Quản lý", 1,""),
  Employess("Nguyễn Thị Thu", "Lễ Tân", 1,""),
  Employess("Trần Thu Huyền", "Nhân viên gội đầu", 1,""),
  Employess("Nguyễn Thị Mai", "Nhân viên gội đầu", 1,""),
  Employess("Nguyễn Thu Trang", "Nhân viên gội đầu", 1,""),
  Employess("Nguyễn Thu Trà", "Nhân viên gội đầu", 1,""),
  Employess("Nguyễn Trà Giang", "Nhân viên gội đầu", 1,""),
  Employess("NGuyễn Thị Lan", "Nhân viên gội đầu", 1,""),
  Employess("Trần Thu Hà", "Nhân viên gội đầu", 1,""),
  Employess("Lê Anh Thư", "Nhân viên gội đầu", 1,""),
  Employess("Nguyễn Đức Cường", "Nhân viên cắt tóc", 2,""),
  Employess("Nguyễn Đức Trung", "Nhân viên cắt tóc", 2,""),
  Employess("Hứa Văn Cường", "Nhân viên cắt tóc", 2,""),
  Employess("Trần Quốc Trung", "Nhân viên cắt tóc", 2,""),
  Employess("Nguyễn Văn Thành", "Nhân viên cắt tóc", 2,""),
  Employess("Lê Anh Minh", "Nhân viên cắt tóc", 2,""),
  Employess("Vũ Trung Anh", "Nhân viên cắt tóc", 2,""),
  Employess("Lê Viết Hoàng", "Nhân viên cắt tóc", 2,""),
];

class History{
  String imaageUrl;
  String name;
  String phone;
  int status;
  String dateStr;
  String note;

  History({this.imaageUrl, this.name, this.phone, this.status, this.dateStr, this.note});
}
