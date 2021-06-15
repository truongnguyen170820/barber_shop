import 'package:barber_shop/blocs/auth_bloc.dart';
import 'package:barber_shop/my_app.dart';
import 'package:barber_shop/view/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp(
      new AuthBloc(),
      MaterialApp(
        debugShowCheckedModeBanner: false,
        builder: (BuildContext context, Widget child) {
          final data = MediaQuery.of(context).copyWith(textScaleFactor: 1.0);
          return MediaQuery(data: data, child: child);
        },
        home: LoginPage(),
      ))
  );
}