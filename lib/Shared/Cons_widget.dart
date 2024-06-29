

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:university_hup/Shared/Component/component.dart';

import '../Modules/Student/STU_About_Course.dart';
import 'Cubit/App_cubit.dart';
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
    context,
})=>Stack(
  alignment: FractionalOffset.center,

  children: [
    Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: GestureDetector(
              onTap:(){
                print(App_cubit.get(context).ins_Courses_Model);
                if(App_cubit.get(context).ins_Courses_Model.isEmpty){
                  App_cubit.get(context).INS_GetAllCourses_Function(token: token);
                }
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
          text??'',overflow: TextOverflow.ellipsis,maxLines: 1,

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
  Color?color,
})=>Container(
  //padding: EdgeInsets.only(bottom: 4),
width: containerWidth??double.infinity,
height:containerHeight?? 75,
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(20),
color: color??Colors.blue,
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

void Alrat({required context,required String text,required Function no,required Function yes})=>showDialog<String>(
  context: context,
  barrierColor: Colors.black.withOpacity(.3),
  useSafeArea: true,
  builder: (BuildContext context) => AlertDialog(
    insetPadding: const EdgeInsets.all(0.0),
    scrollable: false,
    shadowColor: Colors.transparent,
    content: Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: GlassBox(
              widget: Stack(
                children: [
                  Column(
                    children: [
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: GlassBoxWithBorder(
                          widget: Container(
                            height: 200,
                            child: Padding(
                              padding: const EdgeInsets
                                  .only(
                                  bottom: 30.0,
                                  left: 25,
                                  right: 25,
                                  top: 45
                              ),
                              child:Column(
                                children: [

                                  Text('$text',
                                    maxLines: 2,
                                    style: TextStyle(

                                        fontSize: 25,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.black.withOpacity(.6),
                                      overflow: TextOverflow.ellipsis
                                  ),),
                                  Spacer(),
                                  Row(children: [
                                    Spacer(),
                                    TextButton(onPressed: (){no();}, child:  Text('No',style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black.withOpacity(.4)

                                    ),),),
                                    SizedBox(width: 15,),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.blue.withOpacity(.7),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                        child: TextButton(onPressed: (){yes();}, child:  Text('Yes',style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w800,
                                            color: Colors.white.withOpacity(.8)

                                        ),),),
                                      ),
                                    ),
                                  ],),
                                ],
                              ),
                            ),
                          ),
                          color: Colors.white
                              .withOpacity(.5),
                          borderRadius: 30,
                          x: 15,
                          y: 15,
                          BorderWidth: 1,
                          BorderColor: Colors.white,
                        ),
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                    ],
                  ),
                ],
              ),
              color: Colors.transparent,
              borderRadius: 0,
              x: 3,
              y: 3),
        ),
      ),
    ),
    elevation: 0,
    clipBehavior: Clip.none,
    surfaceTintColor: Colors.transparent,
    backgroundColor: Colors.transparent,
    contentPadding: EdgeInsets.zero,
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
 required Color? backColor,
})=>Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 5,
    backgroundColor:backColor,
    textColor: Colors.white,
    fontSize: 16.0);