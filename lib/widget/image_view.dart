import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//
// Widget viewImage(String url, num witdh, num height, BuildContext context,
//     {bool isCircle = true,BoxFit boxFit= BoxFit.cover,String replaceName="",double radius = 5}) {
//   return ClipRRect(
//     borderRadius: BorderRadius.circular(radius),
//     child: CachedNetworkImage(
//       width: witdh,
//       height: height,
//       fit: BoxFit.cover,
//       errorWidget: (context, url, error) => Container(
//         child: Center(
//           child: Text(Utilities.getAcronym(replaceName).toUpperCase(),style: FontUtils.SEMIBOLD.copyWith(color: Colors.white),),
//         ),
//         color: ColorUtils.DEFAULT_AVATAR_COLOR[Utilities.getRandomNumber(replaceName, ColorUtils.DEFAULT_AVATAR_COLOR.length)],
//         width: witdh,
//         height: height,
//       ),
//       imageUrl:  ApiConstants.shared.getFullImage(url??""),
//     ),
//   );
// }
