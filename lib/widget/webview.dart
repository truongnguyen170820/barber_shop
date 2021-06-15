// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
// import 'package:timesoft/widget/common_appbar.dart';
// import 'package:timesoft/widget/loading_widget.dart';
//
// class WebBrowser extends StatelessWidget {
//   final url;
//   final title;
//
//
//   WebBrowser(this.url, this.title);
//
//   @override
//   Widget build(BuildContext context) {
//     return WebviewScaffold(
//       url: url,
//       appBar: backAppBar(context, title),
//       initialChild: Container(
//         color: Colors.white,
//         child: Center(
//           child: LoadingWidget(),
//         ),
//       ),
//     );
//   }
//
// }