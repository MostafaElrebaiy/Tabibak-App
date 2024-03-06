import 'package:flutter/material.dart';

PreferredSizeWidget buildCustomAppBar({
  required String text1,
   String? text2,
  List<Widget>? actions,
  double? toolbarHeight,
  TextStyle? style1,
  TextStyle? style2,
  required bool backarrow,
}) {
  return AppBar(
    automaticallyImplyLeading: backarrow,
    toolbarHeight: toolbarHeight,
    // iconTheme: const IconThemeData(
    //   color: AppColor.white,
    // ),
    // backgroundColor: AppColor.appbar,
    title:RichText(
      text:TextSpan(
        children: [
          TextSpan(
            text: text1,
            style: style1,

          ),
          TextSpan(
            text: text2,
            style: style2,
          ),
        ]
        
      
    ),
    ),
    
    actions: actions,
  );
}
