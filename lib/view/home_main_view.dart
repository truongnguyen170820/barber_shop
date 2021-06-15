import 'package:barber_shop/utils/color_utils.dart';
import 'package:barber_shop/utils/font_utils.dart';
import 'package:barber_shop/view/booking/booking_page.dart';
import 'package:barber_shop/widget/global.dart';
import 'package:flutter/material.dart';

List<History> listHistory = [];
class HomeMainView extends StatefulWidget {
  @override
  _HomeMainViewState createState() => _HomeMainViewState();
}

class _HomeMainViewState extends State<HomeMainView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Barber"),
        centerTitle: true,
        backgroundColor: ColorUtils.gray4,
      ),
      drawer: _mainDraw(),
      body: Column(
        children: [
         Row(
           children: [
             _buildItem("booking.png", "Booking", ontap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=> BookingPage()));
             }),
             _buildItem("cart.png", "Cart"),
             _buildItem("history.png", "History")
           ],
         )
        ],
      ),
    );
  }

  Widget _mainDraw(){
    return Drawer();
  }
  Widget _buildItem(String url, String name, {Function ontap}){
    return GestureDetector(
      onTap: ontap,
      child: Container(
        margin: EdgeInsets.only(left: setWidth(35), top: setHeight(30)),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: ColorUtils.gray6),
          borderRadius: BorderRadius.circular(12)
        ),
        child: Column(
          children: [
            Image.asset(getAssetsImage(url), height: setHeight(50)),
            SizedBox(height: setHeight(10)),
            Text(name, style: FontUtils.MEDIUM.copyWith(color: ColorUtils.gray4),)
          ],
        ),
      ),
    );
  }
}
