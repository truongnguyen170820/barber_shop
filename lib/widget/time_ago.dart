import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

String timeAgo(String d) {
  if (d == null) {
    return '0';
  }
  var stape = DateFormat("dd/MM/yyyy").parse(d, false);
  var timeNow = DateTime.now();
  Duration diff = timeNow.difference(stape);

  return "${-diff.inDays}";
}
String formatTime(String time){
  var stape = DateFormat("dd/MM/yyyy HH:mm:ss").parse(time, false);
  DateFormat dateFormat = DateFormat("dd/MM/yyyy HH:mm");
  String timeFormat = dateFormat.format(stape);
  return timeFormat;

}


String formattedDate(DateTime dateTime) {
  print('dateTime ($dateTime)');
  return DateFormat("yyyy/M/d").format(dateTime);
}
String formatTimeHHSSDDMMYYYY(String time){
  var stape = DateFormat("yyyy-MM-ddTHH:mm:ss").parse(time, false);
  DateFormat dateFormat = DateFormat("HH:ss dd/MM/yyyy");
  String timeFormat = dateFormat.format(stape);
  return timeFormat;

}String formatTimeSelect(String time){
  var stape = DateFormat("yyyy-MM-dd HH:mm:ss").parse(time, false);
  DateFormat dateFormat = DateFormat("dd/MM/yyyy");
  String timeFormat = dateFormat.format(stape);
  return timeFormat;

}
String formatTimeTraining(String time){
  var stape = DateFormat("yyyy-MM-ddTHH:mm:ss").parse(time, false);
  DateFormat dateFormat = DateFormat("HH:mm:ss");
  String timeFormat = dateFormat.format(stape);
  return timeFormat;

}
String formatTimeOfDay(TimeOfDay tod) {
  final now = new DateTime.now();
  final dt = DateTime(now.year, now.month, now.day, tod.hour, tod.minute);
  final format = DateFormat("HH:mm");  //"6:00 AM"
  return format.format(dt);
}