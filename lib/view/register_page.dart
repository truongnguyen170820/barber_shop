

import 'package:barber_shop/blocs/auth_bloc.dart';
import 'package:barber_shop/utils/color_utils.dart';
import 'package:barber_shop/utils/font_utils.dart';
import 'package:barber_shop/utils/msg_dilog.dart';
import 'package:barber_shop/widget/custombutton.dart';
import 'package:barber_shop/widget/global.dart';
import 'package:flutter/material.dart';

import '../utils/loading_dialog.dart';
import 'login_page.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  AuthBloc authBloc = new AuthBloc();

  TextEditingController _nameController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passController = new TextEditingController();
  TextEditingController _phoneController = new TextEditingController();

  @override
  void dispose() {
    authBloc.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.gray8,
      body: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          Image.asset(getAssetsImage("ic_car_red.png")),
          SizedBox(height: setHeight(16)),
          Text(
            "Welcome Aboard!",
            style: FontUtils.MEDIUM.copyWith(fontSize: setSp(22), color: Color(0xff333333)),
          ),
          Text(
            "Signup with iCab in simple steps",
            style: FontUtils.MEDIUM.copyWith(fontSize: setSp(16), color: Color(0xff606470)),
          ),
          Container(
            margin: EdgeInsets.only(left: setWidth(8), right: setWidth(8), top: setHeight(16)),
            padding: EdgeInsets.only(left: setWidth(8), right: setWidth(8), bottom: setHeight(8)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: ColorUtils.WHITE
            ),
            child: Column(
              children: [
                StreamBuilder(
                    stream: authBloc.nameStream,
                    builder: (context, snapshot) => _buidelItem("Name", "ic_user.png", _nameController)),
                StreamBuilder(
                    stream: authBloc.phoneStream,
                    builder: (context, snapshot) => _buidelItem("Phone Number", "ic_phone.png", _phoneController)),
                StreamBuilder(
                    stream: authBloc.emailStream,
                    builder: (context, snapshot) => _buidelItem("Email", "ic_mail.png", _emailController)),
                StreamBuilder(
                    stream: authBloc.passStream,
                    builder: (context, snapshot) => _buidelItem("Password", "ic_lock.png",_passController )),
                SizedBox(height: setHeight(16)),
                ButtonCustom(
                  height: setHeight(42),
                  width: double.infinity,
                  bgColor: ColorUtils.blueAccent,
                  borderRadius: 8,
                  title: "Sig up",
                  textStyle: FontUtils.MEDIUM.copyWith(color: ColorUtils.WHITE),
                  onTap: (){
                    _onSignUpClicked();
                  },
                ),
                SizedBox(height: setHeight(16)),
                GestureDetector(
                  onTap: (){Navigator.pop(context);},
                  child: RichText(
                    text: TextSpan(
                        text: "Already a User? ",
                        style: TextStyle(color: Color(0xff606470), fontSize: 16),
                        children: <TextSpan>[
                          TextSpan(
                              text: "Login now",
                              style: TextStyle(
                                  color: Color(0xff3277D8), fontSize: 16))
                        ]),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buidelItem(String name, String url, TextEditingController controller){
    return Container(
      margin: EdgeInsets.only(top: setHeight(16)),
      decoration: BoxDecoration(
        border: Border.all(color: ColorUtils.gray2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        controller: controller,
        style: TextStyle(fontSize: 18, color: Colors.black),
        decoration: InputDecoration(
            hintText: name,
            prefixIcon: Container(
                width: 50, child: Image.asset(getAssetsImage(url))),
            border: OutlineInputBorder(
                borderSide: BorderSide.none
            )),
      ),
    );
  }
  _onSignUpClicked() {
    var isValid = authBloc.isValid(_nameController.text, _emailController.text,
        _passController.text, _phoneController.text);
    if (isValid) {
      // create user
      // loading dialog
      LoadingDialog.showLoadingDialog(context, 'Loading...');
      authBloc.signUp(_emailController.text, _passController.text,
          _phoneController.text, _nameController.text, () {
            LoadingDialog.hideLoadingDialog(context);
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => LoginPage()));
          },
              (msg) {
            LoadingDialog.hideLoadingDialog(context);
            MsgDialog.showMsgDialog(context, "Sign-In", msg);
            // show msg dialog
          });
    }
  }
}
