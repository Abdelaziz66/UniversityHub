
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constant.dart';


// PreferredSizeWidget DefaultAppBar({
//   required BuildContext context,
//   String? title,
//   List<Widget>?actions,
// })=>AppBar(
//   title: Text(title!,style: TextStyle(
//     fontSize: 18,
//   ),),
//   actions: actions,
//   titleSpacing: 0.5,
//   leading: IconButton(
//     onPressed: (){
//       Navigator.pop(context);
//     },
//     icon: Icon(Icons.arrow_back_ios),
//   ),
// );


Widget defaultAppbar({
    String? text,
    context})=>Stack(
  alignment: FractionalOffset.center,

  children: [
    Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: FaIcon(FontAwesomeIcons.angleLeft,size: 30)),
        ),

      ],
    ),
    Center(
      child:Padding(
        padding: const EdgeInsets.only(left: 80.0,right: 40),
        child: Text(
          text??'Parallel Programming ',overflow: TextOverflow.ellipsis,maxLines: 1,

          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.w700, color: c1, fontSize: 20
          ),
        ),
      ),
    ),

    // Padding(
    //   padding: const EdgeInsets.only(right: 30.0),
    //   child: Container(
    //
    //     height: 30,
    //     width:30,
    //     decoration: BoxDecoration(
    //       borderRadius: BorderRadius.circular(10),
    //       image: DecorationImage(
    //
    //           image: AssetImage(
    //             'assets/images/book_.png',
    //
    //           ),
    //           fit: BoxFit.cover
    //       ),
    //       color: Colors.transparent,
    //     ),
    //   ),
    // ),

  ],
);



Widget Default_Button({
  required Function onPressed,
  String? text,
  double ?containerHeight,
  double ?containerWidth,
  double ?textFontSize,
  Widget? child,
})=>Container(
  //padding: EdgeInsets.only(bottom: 4),
width: containerWidth??double.infinity,
height:containerHeight?? 70,
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(25),
color: Colors.blue,
),
  child: TextButton(
    onPressed: (){onPressed();},
    child:child ??
    Text(
        text!,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize:textFontSize?? 25,
        ),
      ),

  ),
);


void navigateTo(context,Widget)=>Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context)=>Widget,
  ),
);


void NavigateAndFinish(context,Widget)=>Navigator.pushAndRemoveUntil(context,
    MaterialPageRoute(
      builder: (context)=>Widget,
    ),
        (route) => false
);

void flutterToast ({
  required String msg,
  Color? backColor,
})=>Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 5,
    backgroundColor:backColor?? Colors.green,
    textColor: Colors.white,
    fontSize: 16.0);