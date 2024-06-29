//import 'dart:html';
import 'dart:io';
import 'dart:ui';

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:day_night_time_picker/lib/daynight_timepicker.dart';
import 'package:day_night_time_picker/lib/state/time.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

import 'package:percent_indicator/linear_percent_indicator.dart';

import 'package:rive/rive.dart';

import 'package:university_hup/Models/All_News/AllNewsModel.dart';
import 'package:university_hup/Models/INS_Model/Dashboard_ins_model.dart';
import 'package:university_hup/Models/INS_Model/INS_GetQuizes_Model.dart';
import 'package:university_hup/Models/INS_Model/INS_course_model.dart';
import 'package:university_hup/Models/INS_Model/INS_create_quiz_Model.dart';
import 'package:university_hup/Models/STU_Model/CourseModel/stuAssignAdapter/STU_Course_Assign_Model.dart';
import 'package:university_hup/Models/STU_Model/CourseModel/AllCourcesAdapterModel/Stu_All_Courses_Model.dart';
import 'package:university_hup/Models/STU_Model/CourseModel/materialAdabter/Stu_Course_MaterialModel.dart';
import 'package:university_hup/Models/STU_Model/CourseModel/StuQuizAdapter/Stu_Course_Quiz_Model.dart';
import 'package:university_hup/Models/STU_Model/News_D_model.dart';
import 'package:university_hup/Models/STU_Model/StuDachboardModel&Adapter/Dashboard_stu_model.dart';
import 'package:university_hup/Modules/Instructor/Instructor_Assignment/INS_task_result_Screen.dart';
import 'package:university_hup/Modules/Student/Student_Quizzes/STU_Quiz_Ques.dart';
import '../../Models/HistoryModel&Adapter/historyModel.dart';
import '../../Models/INS_Model/CourseModel.dart';
import '../../Models/INS_Model/INS_Assign_Model.dart';
import '../../Models/INS_Model/INS_Course_Assign_Model.dart';
import '../../Models/INS_Model/flowTest.dart';
import '../../Models/STU_Model/Calender_Model/CalenderMode.dart';
import '../Cons_widget.dart';
import '../Cubit/App_cubit.dart';
import '../constant.dart';

import 'package:file_picker/file_picker.dart';

// Abdealziz ------------------------------------------------------------------------------

Widget GlassBox({
  required Widget? widget,
  required Color? color,
  required double? borderRadius,
  required double? x,
  required double? y,
}) =>
    ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius!),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaY: y!,
          sigmaX: x!,
          tileMode: TileMode.clamp,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(borderRadius),
            // border: Border.all(color: c5!.withOpacity(.5),style: BorderStyle.solid,width: 1),
          ),
          child: widget,
        ),
      ),
    );

Widget GlassBoxWithBorder({
  required Widget? widget,
  required Color? color,
  required double? borderRadius,
  required double? x,
  required double? y,
  required Color? BorderColor,
  required double? BorderWidth,
}) =>
    ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius!),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaY: y!,
          sigmaX: x!,
          tileMode: TileMode.clamp,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(borderRadius),
            border: Border.all(
                color: BorderColor!,
                style: BorderStyle.solid,
                width: BorderWidth!),
            // border: Border.all(color: c5!.withOpacity(.5),style: BorderStyle.solid,width: 1),
          ),
          child: widget,
        ),
      ),
    );

Widget GlassBoxWithBorder_notification({
  required Widget? widget,
  required Color? color,
  required double? borderRadius,
  required double? x,
  required double? y,
  required Color? BorderColor,
  required double? BorderWidth,
}) =>
    ClipRRect(
      // borderRadius: BorderRadius.only(bottomRight: Radius.circular(borderRadius!),topRight: Radius.circular(borderRadius) ,topLeft: Radius.zero,bottomLeft:  Radius.circular(borderRadius)),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaY: y!,
          sigmaX: x!,
          tileMode: TileMode.clamp,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(borderRadius!),
                topRight: Radius.circular(borderRadius),
                topLeft: Radius.zero,
                bottomLeft: Radius.circular(borderRadius)),
            border: Border.all(
                color: BorderColor!,
                style: BorderStyle.solid,
                width: BorderWidth!),
            // border: Border.all(color: c5!.withOpacity(.5),style: BorderStyle.solid,width: 1),
          ),
          child: widget,
        ),
      ),
    );

Widget GlassBoxWithBorder_Gradiant({
  required Widget? widget,
  required Color? color,
  required double? borderRadius,
  required double? x,
  required double? y,
  required Color? BorderColor,
  required double? BorderWidth,
}) =>
    ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius!),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaY: y!,
          sigmaX: x!,
          tileMode: TileMode.clamp,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: color,
            // gradient: const LinearGradient(
            //   colors: [
            //     // Colors.deepPurple.withOpacity(.7),
            //     // Colors.blueGrey.withOpacity(.5),
            //     // Colors.blue.withOpacity(.7)
            //     Colors.white,
            //     Colors.white,
            //   ],
            // ),
            borderRadius: BorderRadius.circular(borderRadius),
            border: Border.all(
                color: BorderColor!,
                style: BorderStyle.solid,
                width: BorderWidth!),

            // border: Border.all(color: c5!.withOpacity(.5),style: BorderStyle.solid,width: 1),
          ),
          child: widget,
        ),
      ),
    );

Widget GlassBoxWithBorder_Gradiant2({
  required Widget? widget,
  required Color? color,
  required double? borderRadius,
  required double? x,
  required double? y,
  required Color? BorderColor,
  required double? BorderWidth,
}) =>
    Container(
      decoration: BoxDecoration(
        // boxShadow: [BoxShadow(color: Colors.black,blurRadius: 15,spreadRadius: .01,)],
        color: color,
        // gradient: LinearGradient(
        //   colors: [
        //
        //
        //     Colors.blue.withOpacity(.5),
        //     Colors.deepPurpleAccent.withOpacity(.5),
        //
        //   ],
        // ),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
            color: BorderColor!, style: BorderStyle.solid, width: BorderWidth!),

        // border: Border.all(color: c5!.withOpacity(.5),style: BorderStyle.solid,width: 1),
      ),
      child: widget,
    );

Widget Background(
        {required Widget widget, required double x, required double y}) =>
    Stack(
      children: [
        Column(
          children: [
            const Spacer(),
            Container(
              height: 600,
              child: const RiveAnimation.asset(
                "assets/riveassets/shapes.riv",
              ),
            ),
          ],
        ),
        Positioned(
            child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: x, sigmaY: y),
          child: const SizedBox(),
        )),
        widget,
      ],
    );

// Widget Post({
//   required bool image,
//   context,
//   GetAllNewsModel?news,
// }) {
//   return Padding(
//     padding: const EdgeInsets.symmetric(horizontal: 6.0),
//     child: GlassBoxWithBorder_Gradiant2(
//         widget: Container(
//           width: double.infinity,
//           child: Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 5.0),
//                   child: Row(
//                     children: [
//                       Container(
//                         decoration:
//                         BoxDecoration(shape: BoxShape.circle, boxShadow: [
//                           BoxShadow(
//                             color: c5,
//                             blurRadius: 2,
//                             spreadRadius: 2,
//                           ),
//                         ]),
//                         child: const CircleAvatar(
//                           radius: 25,
//                           backgroundColor: Colors.blue,
//                           backgroundImage:
//                           AssetImage('assets/images/avatar1.png'),
//                         ),
//                       ),
//                       const SizedBox(
//                         width: 15,
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Row(
//                             children: [
//                                Text(
//                                 '${news?.userName}',),
//                               Text(
//                                 'Name Here',
//                                 style: Theme.of(context).textTheme.subtitle1?.copyWith(
//                                   color: Colors.black,
//                                 ),
//
//                               ),
//                               const SizedBox(
//                                 width: 4,
//                               ),
//                               Icon(
//                                 Icons.verified,
//                                 size: 18,
//                                 color: c1.withOpacity(.5),
//                               ),
//                             ],
//                           ),
//                           Text(
//                             '${news?.createdAt}',
//                             style: TextStyle(
//                               // fontWeight: FontWeight.w800,
//
//                               fontSize: 13,
//
//                               color: c1,
//                             ),
//                           ),
//                         ],
//                       ),
//                       const Spacer(),
//                       IconButton(
//                           onPressed: () {},
//                           icon: FaIcon(
//                             FontAwesomeIcons.ellipsisVertical,
//                             color: c1,
//                           )),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 8,
//                 ),
//                 Container(
//                   color: c1,
//                   width: double.infinity,
//                   height: .3,
//                 ),
//                 const SizedBox(
//                   height: 15,
//                 ),
//                 ConditionalBuilder(
//                     condition: true,
//                     builder: (context) => Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 5.0),
//                           child: Row(
//                             children: [
//                               Expanded(
//                                 child: Padding(
//                                   padding: const EdgeInsets.only(right: 30.0),
//                                   child: Text(
//                                     // 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.',
//                                  //   'Congratulations, you have completed your registration ! Lets start your learning journey next.',
//                                    '${news?.content}',
//                                     maxLines: 4,
//                                     overflow: TextOverflow.ellipsis,
//                                     style: TextStyle(
//                                       fontWeight: FontWeight.w700,
//                                       fontSize: 15,
//                                       color: c1,
//                                     ),
//                                   ),
//
//                     ] ) ) ),
//                     fallback: (context) => const SizedBox(
//                       height: 0,
//                     )),
//                 ConditionalBuilder(
//                     condition: false,
//                     builder: (context) => Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 5.0),
//                       child: Row(
//                         children: [
//                           MaterialButton(
//                             onPressed: () {},
//                             minWidth: 1,
//                             padding: EdgeInsets.zero,
//                             child: Text(
//                               '#Tag',
//                               style: TextStyle(
//                                 fontWeight: FontWeight.w900,
//                                 fontSize: 16,
//                                 color: c1,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     fallback: (context) => const SizedBox(
//                       height: 10,
//                     )),
//                 ConditionalBuilder(
//                     condition: image,
//                     builder: (context) => Padding(
//                       padding: const EdgeInsets.only(
//                           left: 0, right: 0.0, top: 5),
//                       child: Container(
//                         width: double.infinity,
//                         height: 200,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           color: Colors.deepPurple[200],
//                           // image: const DecorationImage(
//                           //   image: NetworkImage(
//                           //     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2PacFBpXBfSh1aCipOEs5Wd0lJqAeBXbx2w&usqp=CAU',
//                           //   ),
//                           //   fit: BoxFit.cover,
//                           // ),
//                         ),
//                       ),
//                     ),
//                     fallback: (context) => const SizedBox(
//                       height: 0,
//                     )),
//               ],
//             ),
//           ),
//         ),
//         BorderWidth: 0,
//         BorderColor: Colors.black,
//
//         color: Colors.white.withOpacity(.2),
//         borderRadius: 20,
//         x: 0,
//         y: 0),
//   );
// }
Widget Post({
  required bool image,
  context,
  GetAllNewsModel? news,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 6.0),
    child: GlassBoxWithBorder_Gradiant2(
        widget: Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Row(
                    children: [
                      Container(
                        decoration:
                            BoxDecoration(shape: BoxShape.circle, boxShadow: [
                          BoxShadow(
                            color: c5,
                            blurRadius: 2,
                            spreadRadius: 2,
                          ),
                        ]),
                        child: const CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.blue,
                          backgroundImage:
                              AssetImage('assets/images/avatar1.png'),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '${news?.userName}',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    ?.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w800,
                                    ),
                                // TextStyle(
                                //   fontWeight: FontWeight.w900,
                                //   fontSize:20,
                                //   color: Colors.black,
                                // ),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Icon(
                                Icons.verified,
                                size: 18,
                                color: c1.withOpacity(.5),
                              ),
                            ],
                          ),
                          Text(
                            '${DateTime.parse(news!.createdAt!).year}-${DateTime.parse(news.createdAt!).month}'
                            '-${DateTime.parse(news.createdAt!).day} at '
                            '${DateTime.parse(news.createdAt!).hour}:${DateTime.parse(news.createdAt!).minute}',
                            // '${news?.createdAt}',
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 12,
                              color: c1.withOpacity(.6),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      // IconButton(
                      //     onPressed: () {},
                      //     icon: FaIcon(
                      //       FontAwesomeIcons.ellipsisVertical,
                      //       color: c1,
                      //     )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  color: c1,
                  width: double.infinity,
                  height: .3,
                ),
                const SizedBox(
                  height: 15,
                ),
                ConditionalBuilder(
                    condition: true,
                    builder: (context) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 30.0),
                                  child: Text(
                                    '${news.content}',
                                    // 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.',
                                    //'Congratulations, you have completed your registration ! Lets start your learning journey next.',
                                    maxLines: 4,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 15,
                                      color: c1,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                    fallback: (context) => const SizedBox(
                          height: 0,
                        )),
                ConditionalBuilder(
                    condition: false,
                    builder: (context) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: Row(
                            children: [
                              MaterialButton(
                                onPressed: () {},
                                minWidth: 1,
                                padding: EdgeInsets.zero,
                                child: Text(
                                  '#Tag',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 16,
                                    color: c1,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                    fallback: (context) => const SizedBox(
                          height: 10,
                        )),
                ConditionalBuilder(
                    condition: image,
                    builder: (context) => Padding(
                          padding: const EdgeInsets.only(
                              left: 0, right: 0.0, top: 5),
                          child: Container(
                            width: double.infinity,
                            height: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.blueGrey.withOpacity(.2),
                              image: DecorationImage(
                                image: NetworkImage('${news.filePath}'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                    fallback: (context) => const SizedBox(
                          height: 0,
                        )),
              ],
            ),
          ),
        ),
        BorderWidth: 0,
        BorderColor: Colors.black,
        color: Colors.white.withOpacity(.2),
        borderRadius: 20,
        x: 0,
        y: 0),
  );
}

Widget Calender_Event({
  GetCalenderDayEventModel? event,
  required Color color1,
  required Color color2,
}) =>
    Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: color1,
        border: Border(
          left: BorderSide(color: color2, width: 6, style: BorderStyle.solid),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                const FaIcon(
                  FontAwesomeIcons.circlePlay,
                  size: 17,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text('Parallel Programming - Dr Amr Masoud',
                    style: TextStyle(
                        color: Colors.black.withOpacity(.8),
                        fontWeight: FontWeight.w600,
                        fontSize: 12)),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                const FaIcon(
                  FontAwesomeIcons.circleQuestion,
                  size: 17,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text('${event?.body}',
                    style: TextStyle(
                        color: Colors.black.withOpacity(.8),
                        fontWeight: FontWeight.w600,
                        fontSize: 12)),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                const FaIcon(
                  FontAwesomeIcons.clock,
                  size: 17,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                    'From ${DateTime.parse(event!.startDate!).hour} : ${DateTime.parse(event.startDate!).minute}'
                    ' to ${DateTime.parse(event.endDate!).hour} : ${DateTime.parse(event.endDate!).minute}',
                    style: TextStyle(
                        color: Colors.black.withOpacity(.8),
                        fontWeight: FontWeight.w600,
                        fontSize: 12)),
              ],
            ),
          ],
        ),
      ),
    );

Widget Calender_Item({
  required Calender_Number,
  required Calender_Day,
  required int selectedIndex,
  int? index,
  //required bool iselected
}) =>
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
      child: Container(
        alignment: AlignmentDirectional.center,
        width: 70,
        decoration: BoxDecoration(
          color: selectedIndex == index
              ? Colors.black.withOpacity(.2)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('${Calender_Number}',
                  style: TextStyle(
                      color: selectedIndex == index
                          ? Colors.black.withOpacity(.9)
                          : Colors.black.withOpacity(.5),
                      fontWeight: FontWeight.w600,
                      fontSize: 30)),
              const SizedBox(
                height: 3,
              ),
              Text('${Calender_Day}',
                  style: TextStyle(
                      color: selectedIndex == index
                          ? Colors.black.withOpacity(.9)
                          : Colors.black.withOpacity(.5),
                      fontWeight: FontWeight.w800,
                      fontSize: 10)),
            ],
          ),
        ),
      ),
    );

Widget Lecture_C() => InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 22.0,
              backgroundImage: const NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2PacFBpXBfSh1aCipOEs5Wd0lJqAeBXbx2w&usqp=CAU',
              ),
              backgroundColor: c2,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              'Computer Security',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: c5,
              ),
            ),
          ],
        ),
      ),
    );

Widget Matrial_INS_C(
        {folderFormKey,
        TextEditingController? folderController,
        context,
        GetCourseMaterialsModel? courseMaterial,
        InsAllLecFoldersModel? insFolder,
        // AnimationController? menuAnimation,
        index}) =>
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          // color: Colors.blueGrey.withOpacity(.05),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: .5),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 5.0, right: 10, bottom: 5, left: 10),
          child: Container(
            //height: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 15,
                ),
                FaIcon(
                  FontAwesomeIcons.solidFolderClosed,
                  //color: c1.withOpacity(.9),
                  color: Colors.blueGrey,
                  size: 40,
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                   width: 150,
                  // height: 80,
                  child: Text(
                    maxLines: 1,
                    '${
                    // App_cubit.get(context).stuCoursesMatrialModel.isNotEmpty
                    // || App_cubit.get(context).currentMaterialLecFolders.isNotEmpty
                    // ? courseMaterial?.lectureName :
                    insFolder?.lectureName}',
                    style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontSize: 15,
                      fontWeight: FontWeight.w900,
                      color: c1,
                    ),
                  ),
                ),
                Spacer(),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        folderController?.text = '';
                        showDialog<String>(
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
                                                padding:
                                                    const EdgeInsets.all(15.0),
                                                child: GlassBoxWithBorder(
                                                  widget: Container(
                                                    height: 250,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              bottom: 25.0,
                                                              left: 25,
                                                              right: 25,
                                                              top: 20),
                                                      child: Form(
                                                        key: folderFormKey,
                                                        child: Column(
                                                          children: [
                                                            Row(
                                                              children: [
                                                                FaIcon(
                                                                  FontAwesomeIcons
                                                                      .folder,
                                                                  size: 30,
                                                                ),
                                                                SizedBox(
                                                                  width: 15,
                                                                ),
                                                                Container(
                                                                  width: 220,
                                                                  child: Text(
                                                                    'Edit ${insFolder?.lectureName} name :',
                                                                    maxLines: 2,
                                                                    style: Theme.of(
                                                                            context)
                                                                        .textTheme
                                                                        .subtitle2
                                                                        ?.copyWith(
                                                                            overflow: TextOverflow
                                                                                .ellipsis,
                                                                            fontSize:
                                                                                18,
                                                                            color:
                                                                                Colors.black),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            const Spacer(),

                                                            Container(
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      vertical:
                                                                          5,
                                                                      horizontal:
                                                                          10),
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              height: 60,
                                                              decoration:
                                                                  BoxDecoration(
                                                                // border: Border.all(color: Colors.white),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            18),
                                                                color: Colors
                                                                    .white
                                                                    .withOpacity(
                                                                        .8),
                                                              ),
                                                              child: Padding(
                                                                padding: const EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                        0.0),
                                                                child:
                                                                    TextFormField(
                                                                  controller:
                                                                      folderController,
                                                                  keyboardType:
                                                                      TextInputType
                                                                          .text,
                                                                  onFieldSubmitted:
                                                                      (value) {
                                                                    print(
                                                                        value);
                                                                  },
                                                                  validator:
                                                                      (value) {
                                                                    if (value!
                                                                        .isEmpty) {
                                                                      return 'folder name can\'t be empty';
                                                                    }
                                                                    return null;
                                                                  },
                                                                  // toolbarOptions:
                                                                  //     ToolbarOptions(paste: true, copy: true),
                                                                  cursorColor:
                                                                      c1,
                                                                  style:
                                                                      const TextStyle(
                                                                    fontSize:
                                                                        18,
                                                                  ),
                                                                  decoration:
                                                                      InputDecoration(
                                                                    prefixIcon:
                                                                        Padding(
                                                                      padding: const EdgeInsets
                                                                          .symmetric(
                                                                          horizontal:
                                                                              10.0,
                                                                          vertical:
                                                                              10),
                                                                      child:
                                                                          FaIcon(
                                                                        FontAwesomeIcons
                                                                            .calendar,
                                                                        color:
                                                                            c1,
                                                                        size:
                                                                            25,
                                                                      ),
                                                                    ),
                                                                    hintText:
                                                                        'Enter folder name',
                                                                    border:
                                                                        InputBorder
                                                                            .none,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                              height: 15,
                                                            ),
                                                            Default_Button(
                                                                onPressed: () {
                                                                  if (folderFormKey
                                                                      .currentState!
                                                                      .validate()) {
                                                                    App_cubit.get(
                                                                            context)
                                                                        .INS_UpdateMaterialFolder(
                                                                      folderId:
                                                                          insFolder
                                                                              ?.lectureId,
                                                                      newFolderName:
                                                                          folderController
                                                                              ?.text,
                                                                    );

                                                                    Navigator.pop(
                                                                        context);
                                                                  } else {
                                                                    flutterToast(
                                                                        msg:
                                                                            'please enter the new folder name',
                                                                        backColor:
                                                                            Colors.red);
                                                                  }
                                                                },
                                                                containerHeight:
                                                                    50,
                                                                textFontSize:
                                                                    20,
                                                                text: 'Done'),
                                                            // SizedBox(
                                                            //   height: 15,
                                                            // ),
                                                          ],
                                                        ),
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

                        // Alrat(
                        //     context: context,
                        //     no: () {
                        //       Navigator.pop(context);
                        //     },
                        //     text: 'Do you want to edit ${insFolder?.lectureName} ?',
                        //     yes: () {});
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          // color: Colors.yellow.withOpacity(.9),
                          border: Border.all(
                            width: .5,
                            color: Colors.blue.withOpacity(1),
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: FaIcon(
                            FontAwesomeIcons.pen,
                            size: 13,
                            color: Colors.blue.withOpacity(1),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {
                        Alrat(
                            context: context,
                            no: () {
                              Navigator.pop(context);
                            },
                            text:
                                'Do you want to delete ${insFolder?.lectureName} ?',
                            yes: () {
                              App_cubit.get(context).INS_DeleteMaterialFolder(
                                  folderId: insFolder?.lectureId);
                              Navigator.pop(context);
                            });
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          // color: Colors.red.withOpacity(.6),
                          border: Border.all(
                            width: .5,
                            color: Colors.red.withOpacity(1),
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: FaIcon(
                            FontAwesomeIcons.trashCan,
                            size: 13,
                            color: Colors.red.withOpacity(1),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),

                //   courseMaterial?.type == 'Lecture'

                // Column(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //
                //
                //   ],
                //
                // ):const SizedBox(),
                // : Text(
                //     'Lab ${index + 1}',
                //     style: TextStyle(
                //       fontSize: 17,
                //       fontWeight: FontWeight.w700,
                //       color: c1,
                //     ),
                //   ),
              ],
            ),
          ),
        ),
      ),
    );

Widget Matrial_STU_C(
        {folderFormKey,
        TextEditingController? folderController,
        context,
        GetCourseMaterialsModel? courseMaterial,
        //  InsAllLecFoldersModel? insFolder,
        // AnimationController? menuAnimation,
        index}) =>
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          // color: Colors.blueGrey.withOpacity(.05),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: .5),
        ),
        child: Container(
          //height: 150,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 20,
              ),
              FaIcon(
                FontAwesomeIcons.solidFolderClosed,
                //color: c1.withOpacity(.9),
                color: Colors.blueGrey,
                size: 30,
              ),
              const SizedBox(
                width: 10,
              ),
              //   courseMaterial?.type == 'Lecture'
              Expanded(
                child: Text(
                  maxLines: 2,
                  '${
                  // App_cubit.get(context).stuCoursesMatrialModel.isNotEmpty ?
                  // App_cubit.get(context).currentMaterialLecFolders.isNotEmpty ?
                  courseMaterial?.lectureName}',
                  //   : insFolder?.lectureName}}',
                  style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: c1,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              // Column(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //
              //
              //   ],
              //
              // ):const SizedBox(),
              // : Text(
              //     'Lab ${index + 1}',
              //     style: TextStyle(
              //       fontSize: 17,
              //       fontWeight: FontWeight.w700,
              //       color: c1,
              //     ),
              //   ),
            ],
          ),
        ),
      ),
    );

Widget OngoingCourse_Card() => GlassBoxWithBorder_notification(
      widget: Padding(
        padding:
            const EdgeInsets.only(bottom: 14, right: 30.0, top: 14, left: 30),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Parallel Programming',
                  style: TextStyle(
                      fontWeight: FontWeight.w700, color: c1, fontSize: 17),
                ),
                const SizedBox(height: 1),
                Text(
                  'DR : Amr Masoud',
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: c1, fontSize: 14),
                ),
              ],
            ),
            const Spacer(),
            Container(
              alignment: AlignmentDirectional.centerEnd,
              child: const FaIcon(
                FontAwesomeIcons.circleRight,
                color: Colors.teal,
                size: 30,
              ),
            ),
          ],
        ),
      ),
      color: Colors.blueGrey.withOpacity(.02),
      borderRadius: 30,
      x: 30,
      y: 30,
      BorderColor: Colors.blue,
      BorderWidth: 1.5,
    );

Widget Assignments_Card() => GlassBoxWithBorder_notification(
      widget: Padding(
        padding:
            const EdgeInsets.only(bottom: 14, right: 30.0, top: 14, left: 30),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Parallel Programming',
                  style: TextStyle(
                      fontWeight: FontWeight.w700, color: c1, fontSize: 17),
                ),
                const SizedBox(height: 1),
                Text(
                  'DR : Amr Masoud',
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: c1, fontSize: 14),
                ),
              ],
            ),
            const Spacer(),
            Expanded(
              child: Container(
                alignment: AlignmentDirectional.centerEnd,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.clock,
                      color: c1,
                      size: 20,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'Pending',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.red,
                          fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      color: Colors.blueGrey.withOpacity(.02),
      borderRadius: 30,
      x: 30,
      y: 30,
      BorderColor: Colors.blue,
      BorderWidth: 1.5,
    );

Widget historyCard(
        {required IconData icon, StuHistoryModel? history, context}) =>

    //  rol=="Student" &&
    App_cubit.get(context).stuHistoryModel.isNotEmpty
        ?
        //  || rol=="Doctor" && App_cubit.get(context).insHistoryModel.isNotEmpty  ?
        Dismissible(
            key: Key(history!.hiveIndex.toString()),
            onDismissed: (dismiss) {
              //  print(' his index ---- ${ history.hiveIndex!}');
              //  cubit.dismissItems.forEach((element) {print(element);});
              // cubit.dismissItems.removeAt(index);
              // cubit.dismissItems.forEach((element) {print(element);});

              //rol=='Student'?App_cubit.get(context).stuDeleteHistory(hisIndex: history.hiveIndex!)
              App_cubit.get(context)
                  .stuDeleteHistory(hisIndex: history.hiveIndex!);
            },
            child: GlassBox(
                widget: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.blueGrey.withOpacity(.2),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height: 30,
                            width: 30,
                            alignment: Alignment.center,
                            child: FaIcon(
                              icon,
                              color: c1,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 200,
                            child: Text(
                              '${history.historyMessage}',
                              maxLines: 2,
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color: c1,
                                  fontSize: 15,
                                  overflow: TextOverflow.ellipsis),
                            ),
                          ),
                          const SizedBox(height: 1),
                          Text(
                            '${history.materialName}',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: c1,
                                fontSize: 14),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Container(
                          alignment: AlignmentDirectional.centerEnd,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.clock,
                                color: c1,
                                size: 20,
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                '${history.historyTime}',
                                style: const TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.black,
                                    fontSize: 12),
                              ),
                              // const SizedBox(
                              //   height: 1,
                              // ),
                              // const Text(
                              //   '9:30 PM',
                              //   style: TextStyle(
                              //       fontWeight: FontWeight.w900,
                              //       color: Colors.black,
                              //       fontSize: 12),
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                color: Colors.white.withOpacity(.5),
                borderRadius: 20,
                x: 10,
                y: 10))
        : Container(
            height: 20,
            width: double.infinity,
            color: Colors.red,
            child: Center(child: Text('no recent activity here')),

            // GlassBox(
            // widget: Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            //   child: Row(
            //     children: [
            //       Container(
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(12),
            //           color: Colors.blueGrey.withOpacity(.2),
            //         ),
            //         child: Padding(
            //           padding: const EdgeInsets.all(10.0),
            //           child: Container(
            //             height: 30,
            //             width: 30,
            //             alignment: Alignment.center,
            //             child: FaIcon(
            //               icon,
            //               color: c1,
            //               size: 30,
            //             ),
            //           ),
            //         ),
            //       ),
            //       SizedBox(
            //         width: 15,
            //       ),
            //       Column(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Container(
            //             width:200,
            //             child: Text(
            //               '${history?.historyMessage}',
            //               maxLines: 2,
            //               style: TextStyle(
            //                   fontWeight: FontWeight.w800, color: c1, fontSize: 15,
            //                   overflow:TextOverflow.ellipsis
            //               ),
            //             ),
            //           ),
            //           const SizedBox(height: 1),
            //           Text(
            //             '${history?.materialName}',
            //             style: TextStyle(
            //                 fontWeight: FontWeight.w500, color: c1, fontSize: 14),
            //           ),
            //         ],
            //       ),
            //       Expanded(
            //         child: Container(
            //           alignment: AlignmentDirectional.centerEnd,
            //           child: Column(
            //             crossAxisAlignment: CrossAxisAlignment.center,
            //             mainAxisAlignment: MainAxisAlignment.center,
            //             children: [
            //               FaIcon(
            //                 FontAwesomeIcons.clock,
            //                 color: c1,
            //                 size: 20,
            //               ),
            //               const SizedBox(
            //                 height: 4,
            //               ),
            //               Text(
            //                 '${history?.historyTime}',
            //                 style: TextStyle(
            //                     fontWeight: FontWeight.w900,
            //                     color: Colors.black,
            //                     fontSize: 12),
            //               ),
            //               // const SizedBox(
            //               //   height: 1,
            //               // ),
            //               // const Text(
            //               //   '9:30 PM',
            //               //   style: TextStyle(
            //               //       fontWeight: FontWeight.w900,
            //               //       color: Colors.black,
            //               //       fontSize: 12),
            //               // ),
            //             ],
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // color: Colors.white.withOpacity(.5),
            // borderRadius: 20,
            // x: 10,
            // y: 10) ,
          );

Widget insHistoryCard(
        {required IconData icon, StuHistoryModel? history, context}) =>

    //  rol=="Student" &&
    App_cubit.get(context).insHistoryModel.isNotEmpty
        ?
        //  || rol=="Doctor" && App_cubit.get(context).insHistoryModel.isNotEmpty  ?
        Dismissible(
            key: Key(history!.hiveIndex.toString()),
            onDismissed: (dismiss) {
              //  print(' his index ---- ${ history.hiveIndex!}');
              //  cubit.dismissItems.forEach((element) {print(element);});
              // cubit.dismissItems.removeAt(index);
              // cubit.dismissItems.forEach((element) {print(element);});

              //rol=='Student'?App_cubit.get(context).stuDeleteHistory(hisIndex: history.hiveIndex!)
              App_cubit.get(context)
                  .insDeleteHistory(hisIndex: history.hiveIndex!);
            },
            child: GlassBox(
                widget: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.blueGrey.withOpacity(.2),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height: 30,
                            width: 30,
                            alignment: Alignment.center,
                            child: FaIcon(
                              icon,
                              color: c1,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 200,
                            child: Text(
                              '${history.historyMessage}',
                              maxLines: 2,
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color: c1,
                                  fontSize: 15,
                                  overflow: TextOverflow.ellipsis),
                            ),
                          ),
                          const SizedBox(height: 1),
                          Text(
                            '${history.materialName}',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: c1,
                                fontSize: 14),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Container(
                          alignment: AlignmentDirectional.centerEnd,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.clock,
                                color: c1,
                                size: 20,
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                '${history.historyTime}',
                                style: const TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.black,
                                    fontSize: 12),
                              ),
                              // const SizedBox(
                              //   height: 1,
                              // ),
                              // const Text(
                              //   '9:30 PM',
                              //   style: TextStyle(
                              //       fontWeight: FontWeight.w900,
                              //       color: Colors.black,
                              //       fontSize: 12),
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                color: Colors.white.withOpacity(.5),
                borderRadius: 20,
                x: 10,
                y: 10))
        : Container(
            height: 20,
            width: double.infinity,
            color: Colors.red,
            child: const Center(child: Text('no recent activity here')),

            // GlassBox(
            // widget: Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            //   child: Row(
            //     children: [
            //       Container(
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(12),
            //           color: Colors.blueGrey.withOpacity(.2),
            //         ),
            //         child: Padding(
            //           padding: const EdgeInsets.all(10.0),
            //           child: Container(
            //             height: 30,
            //             width: 30,
            //             alignment: Alignment.center,
            //             child: FaIcon(
            //               icon,
            //               color: c1,
            //               size: 30,
            //             ),
            //           ),
            //         ),
            //       ),
            //       SizedBox(
            //         width: 15,
            //       ),
            //       Column(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Container(
            //             width:200,
            //             child: Text(
            //               '${history?.historyMessage}',
            //               maxLines: 2,
            //               style: TextStyle(
            //                   fontWeight: FontWeight.w800, color: c1, fontSize: 15,
            //                   overflow:TextOverflow.ellipsis
            //               ),
            //             ),
            //           ),
            //           const SizedBox(height: 1),
            //           Text(
            //             '${history?.materialName}',
            //             style: TextStyle(
            //                 fontWeight: FontWeight.w500, color: c1, fontSize: 14),
            //           ),
            //         ],
            //       ),
            //       Expanded(
            //         child: Container(
            //           alignment: AlignmentDirectional.centerEnd,
            //           child: Column(
            //             crossAxisAlignment: CrossAxisAlignment.center,
            //             mainAxisAlignment: MainAxisAlignment.center,
            //             children: [
            //               FaIcon(
            //                 FontAwesomeIcons.clock,
            //                 color: c1,
            //                 size: 20,
            //               ),
            //               const SizedBox(
            //                 height: 4,
            //               ),
            //               Text(
            //                 '${history?.historyTime}',
            //                 style: TextStyle(
            //                     fontWeight: FontWeight.w900,
            //                     color: Colors.black,
            //                     fontSize: 12),
            //               ),
            //               // const SizedBox(
            //               //   height: 1,
            //               // ),
            //               // const Text(
            //               //   '9:30 PM',
            //               //   style: TextStyle(
            //               //       fontWeight: FontWeight.w900,
            //               //       color: Colors.black,
            //               //       fontSize: 12),
            //               // ),
            //             ],
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // color: Colors.white.withOpacity(.5),
            // borderRadius: 20,
            // x: 10,
            // y: 10) ,
          );

Widget Quizzes_Card() => GlassBoxWithBorder_notification(
      widget: Padding(
        padding:
            const EdgeInsets.only(bottom: 14, right: 30.0, top: 14, left: 30),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Parallel Programming',
                  style: TextStyle(
                      fontWeight: FontWeight.w700, color: c1, fontSize: 17),
                ),
                const SizedBox(height: 1),
                Text(
                  'DR : Amr Masoud',
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: c1, fontSize: 14),
                ),
              ],
            ),
            const Spacer(),
            Expanded(
              child: Container(
                alignment: AlignmentDirectional.centerEnd,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.clock,
                      color: c1,
                      size: 20,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Text(
                      '7:30 PM',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.teal,
                          fontSize: 12),
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                    const Text(
                      '9:30 PM',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.red,
                          fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      color: Colors.blueGrey.withOpacity(.02),
      borderRadius: 30,
      x: 30,
      y: 30,
      BorderColor: Colors.blue,
      BorderWidth: 1.5,
    );

Widget Upcoming_Courses_Card() => GlassBoxWithBorder_notification(
      widget: Padding(
        padding:
            const EdgeInsets.only(bottom: 14, right: 30.0, top: 14, left: 30),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Parallel Programming',
                  style: TextStyle(
                      fontWeight: FontWeight.w700, color: c1, fontSize: 17),
                ),
                const SizedBox(height: 1),
                Text(
                  'DR : Amr Masoud',
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: c1, fontSize: 14),
                ),
              ],
            ),
            const Spacer(),
            Expanded(
              child: Container(
                alignment: AlignmentDirectional.centerEnd,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.clock,
                      color: c1,
                      size: 25,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      '9:30 PM',
                      style: TextStyle(
                          fontWeight: FontWeight.w900, color: c1, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      color: Colors.blueGrey.withOpacity(.02),
      borderRadius: 30,
      x: 30,
      y: 30,
      BorderColor: Colors.blue,
      BorderWidth: 1.5,
    );

Widget element_in_drawer(
        {required Function Function,
        required String text,
        required int D_value,
        required int index}) =>
    Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: D_value == index
              ? Colors.blue.withOpacity(.8)
              : Colors.transparent,
        ),
        alignment: AlignmentDirectional.topStart,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const SizedBox(width: 10),
              FaIcon(
                FontAwesomeIcons.hatCowboy,
                size: 20,
                color: D_value == index ? Colors.white : c1,
              ),
              const SizedBox(
                width: 5,
              ),
              TextButton(
                onPressed: () {
                  Function;
                  // cubit.D_value = 0;
                  // cubit.SetState_G();
                  // Navigator.pop(context);
                },
                child: Text(
                  '$text',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: D_value == index ? Colors.white : c1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

//Abdelhaq ----------------------------------------------------------------------------------------

Widget BuildLevelsWidget() => Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(.5),
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Center(
          child: Text(
            'year 1',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );

//---------------------------------------------------------

Widget BuildMatrialsWidget() => Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(.5),
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Center(
          child: Text(
            'Material name 1',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );

//---------------------------------------------------------

// Widget BuildCoursesWidget(context) => InkWell(
//       onTap: () {
//         navigateTo(context, Show_Material_Lec_Or_Sec());
//       },
//       child: Container(
//           decoration: BoxDecoration(
//               color: Colors.grey.withOpacity(.5),
//               borderRadius: BorderRadius.circular(10)),
//           height: 150,
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Column(
//               children: [
//                 Row(
//                   children: [
//                     const Text('Lec1'),
//                     const Spacer(),
//                     DropdownButton<Widget>(
//                       elevation: 20,
//                       menuMaxHeight: 100,
//                       alignment: AlignmentDirectional.topEnd,
//                       borderRadius: BorderRadius.circular(5),
//                       icon: const Icon(Icons.more_vert),
//                       // Value is the selected item
//                       // value: AppCubit.get(context).Material_More_selectedItem,
//                       // List of items for the dropdown
//                       items: App_cubit.get(context).items.map((Widget item) {
//                         return DropdownMenuItem<Widget>(
//                           value: item,
//                           child: item,
//                         );
//                       }).toList(),
//
//                       // onChanged callback to update the selected item
//
//                       onChanged: (Widget? newValue) {
//                         App_cubit.get(context)
//                             .change_more_list_visible(newValue);
//                       },
//                     ),
//
//                     // IconButton(
//
//                     //   icon: Icon(Icons.more_vert),
//
//                     //   onPressed: () {
//
//                     //     navigateTo(context, MyDropDownMenu());
//
//                     //     // AppCubit.get(context).change_more_list_visible();
//
//                     //   },
//
//                     // ),
//
//                     //         Column(
//
//                     //   children: [
//
//                     //     // Your other widgets here
//
//                     //     //         IconButton(
//
//                     //     //   icon: Icon(Icons.more_vert),
//
//                     //     //   onPressed: () {
//
//                     //     //    //navigateTo(context, MoreIconScreen());
//
//                     //     //     // AppCubit.get(context).change_more_list_visible();
//
//                     //     //   },
//
//                     //     // ),
//
//                     //     // Visibility(
//
//                     //     //   visible: AppCubit.get(context).isListVisible,
//
//                     //     //   child: Expanded(
//
//                     //     //     child: ListView(
//
//                     //     //       children: [
//
//                     //     //         // Your list items go here
//
//                     //     //         ListTile(
//
//                     //     //           leading: Icon(Icons.star),
//
//                     //     //           title: Text('Star Icon'),
//
//                     //     //         ),
//
//                     //     //         ListTile(
//
//                     //     //           leading: Icon(Icons.favorite),
//
//                     //     //           title: Text('Favorite Icon'),
//
//                     //     //         ),
//
//                     //     //         ListTile(
//
//                     //     //           leading: Icon(Icons.book),
//
//                     //     //           title: Text('Book Icon'),
//
//                     //     //         ),
//
//                     //     //         // Add more items as needed
//
//                     //     //       ],
//
//                     //     //     ),
//
//                     //     //   ),
//
//                     //     // ),
//
//                     //   ],
//
//                     // ),
//
//                     // IconButton(
//
//                     //     onPressed: (){},
//
//                     //     icon: Icon(Icons.more_vert))
//                   ],
//                 ),
//
//                 const Expanded(
//                     child: Text(
//                   'Cyber Security',
//                   style: TextStyle(fontSize: 20),
//                 )),
//
//                 Expanded(
//                   child: Container(
//                       child: const Text(
//                     'comment',
//                     style: TextStyle(color: Colors.white),
//                   )),
//                 ),
//
//                 //Spacer(),
//
//                 Container(child: const Text('added at 12/11/2023')),
//               ],
//             ),
//           )),
//     );

//---------------------------------------------------------

Widget BuildFileViewWidget(
  index,
  context,
  PlatformFile file,
) {
  final kb = file.size / 1024;
  final mb = kb / 1024;
  final fileSize =
      mb >= 1 ? '${mb.toStringAsFixed(2)} MB ' : '${kb.toStringAsFixed(2)} KB';
  final extension = file.extension ?? 'none';
  final color = Colors.red;
  return InkWell(
      onTap: () => print('fff'), //App_cubit.get(context).openFile_Fun(file),
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                '.${extension}',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                ),
              ),
            )),
            const SizedBox(
              height: 8,
            ),
            Text(
              file.name,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              fileSize,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[700],
              ),
            ),
          ],
        ),
        // decoration: BoxDecoration(
        //     color: Colors.grey.withOpacity(.5),
        //     borderRadius: BorderRadius.circular(10)),
        // height: 150,
//       child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child:Image(image: MemoryImage(AppCubit.get(context).all_files[index],))
// //       fit: BoxFit.cover,
// //     ),
//             // Column(
//             //   children: [
//             //
//             //     Row(
//             //       children: [
//             //         Text('Lec1'),
//             //         Spacer(),
//             //         IconButton(
//             //             onPressed: (){},
//             //             icon: Icon(Icons.more_vert))
//             //       ],
//             //     ),
//             //     Expanded(child: Text('Cyber Security',
//             //       style: TextStyle(fontSize: 20),
//             //     )),
//             //     Expanded(
//             //       child: Container(
//             //           child: Text('comment',
//             //             style: TextStyle(color: Colors.white),
//             //           )),
//             //     ),
//             //     //Spacer(),
//             //     Container(
//             //         child: Text('added at 12/11/2023')),
//             //   ],
//             // ),
//           )),
      ));
}

//-----------------------------------------

Widget Build_Lec_View_Widget(
  index,
  context,
) {
  // final kb = file.size / 1024;
  // final mb = kb / 1024;
  // final fileSize =
  // mb >= 1 ? '${mb.toStringAsFixed(2)} MB ' : '${kb.toStringAsFixed(2)} KB';
  // final extension = file.extension ?? 'none';
  final color = Colors.red;
  return Container(
    padding: const EdgeInsets.all(8),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Text(
            '.jpg',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
            ),
          ),
        )),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'lecture name',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  '40 MB',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
            const Spacer(),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  size: 18,
                )),
          ],
        ),
      ],
    ),
  );
}

//------------------------------
Widget INS_Build_Lec_View_Widget({
  fileFormKey,
  TextEditingController? fileController,
  GetCourseMaterialsModel? courseMaterial,
  GetCourseMaterialFileModel? file,
  InsLecFilesModel? insFile,
  index,
  context,
}) {
  // final kb = file.size / 1024;
  // final mb = kb / 1024;
  // final fileSize =
  // mb >= 1 ? '${mb.toStringAsFixed(2)} MB ' : '${kb.toStringAsFixed(2)} KB';
  // final extension = file.extension ?? 'none';
  final color = Colors.blueGrey.withOpacity(.7);
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: Colors.blueGrey.withOpacity(.15),
    ),
    padding: const EdgeInsets.all(6),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        rol == 'Doctor'
            ? Row(
                children: [
                  Spacer(),
                  InkWell(
                    onTap: () {
                      fileController?.text = '';
                      showDialog<String>(
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
                                              padding:
                                                  const EdgeInsets.all(15.0),
                                              child: GlassBoxWithBorder(
                                                widget: Container(
                                                  height: 250,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            bottom: 25.0,
                                                            left: 25,
                                                            right: 25,
                                                            top: 20),
                                                    child: Form(
                                                      key: fileFormKey,
                                                      child: Column(
                                                        children: [
                                                          Row(
                                                            children: [
                                                              FaIcon(
                                                                FontAwesomeIcons
                                                                    .folder,
                                                                size: 30,
                                                              ),
                                                              SizedBox(
                                                                width: 15,
                                                              ),
                                                              Container(
                                                                width: 220,
                                                                child: Text(
                                                                  'Edit ${insFile?.fileName} name :',
                                                                  maxLines: 2,
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .subtitle2
                                                                      ?.copyWith(
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          fontSize:
                                                                              18,
                                                                          color:
                                                                              Colors.black),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          const Spacer(),

                                                          Container(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    vertical: 5,
                                                                    horizontal:
                                                                        10),
                                                            alignment: Alignment
                                                                .center,
                                                            height: 60,
                                                            decoration:
                                                                BoxDecoration(
                                                              // border: Border.all(color: Colors.white),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          18),
                                                              color: Colors
                                                                  .white
                                                                  .withOpacity(
                                                                      .8),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .symmetric(
                                                                      horizontal:
                                                                          0.0),
                                                              child:
                                                                  TextFormField(
                                                                controller:
                                                                    fileController,
                                                                keyboardType:
                                                                    TextInputType
                                                                        .text,
                                                                onFieldSubmitted:
                                                                    (value) {
                                                                  print(value);
                                                                },
                                                                validator:
                                                                    (value) {
                                                                  if (value!
                                                                      .isEmpty) {
                                                                    return 'file name can\'t be empty';
                                                                  }
                                                                  return null;
                                                                },
                                                                // toolbarOptions:
                                                                //     ToolbarOptions(paste: true, copy: true),
                                                                cursorColor: c1,
                                                                style:
                                                                    const TextStyle(
                                                                  fontSize: 18,
                                                                ),
                                                                decoration:
                                                                    InputDecoration(
                                                                  prefixIcon:
                                                                      Padding(
                                                                    padding: const EdgeInsets
                                                                        .symmetric(
                                                                        horizontal:
                                                                            10.0,
                                                                        vertical:
                                                                            10),
                                                                    child:
                                                                        FaIcon(
                                                                      FontAwesomeIcons
                                                                          .edit,
                                                                      color: c1,
                                                                      size: 25,
                                                                    ),
                                                                  ),
                                                                  hintText:
                                                                      'Enter folder name',
                                                                  border:
                                                                      InputBorder
                                                                          .none,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                            height: 15,
                                                          ),
                                                          Default_Button(
                                                              onPressed: () {
                                                                if (fileFormKey
                                                                    .currentState!
                                                                    .validate()) {
                                                                  App_cubit.get(
                                                                          context)
                                                                      .INS_UpdateMaterialFile(
                                                                    fileId: insFile
                                                                        ?.lectureFileId,
                                                                    newFileName:
                                                                        fileController
                                                                            ?.text,
                                                                  );

                                                                  Navigator.pop(
                                                                      context);
                                                                } else {
                                                                  flutterToast(
                                                                      msg:
                                                                          'please enter the new folder name',
                                                                      backColor:
                                                                          Colors
                                                                              .red);
                                                                }
                                                              },
                                                              containerHeight:
                                                                  50,
                                                              textFontSize: 20,
                                                              text: 'Done'),
                                                          // SizedBox(
                                                          //   height: 15,
                                                          // ),
                                                        ],
                                                      ),
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

                      // Alrat(
                      //     context: context,
                      //     no: () {
                      //       Navigator.pop(context);
                      //     },
                      //     text: 'Do you want to edit ${insFolder?.lectureName} ?',
                      //     yes: () {});
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        // color: Colors.yellow.withOpacity(.9),
                        border: Border.all(
                          width: .5,
                          color: Colors.blue.withOpacity(1),
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: FaIcon(
                          FontAwesomeIcons.pen,
                          size: 13,
                          color: Colors.blue.withOpacity(1),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Alrat(
                          context: context,
                          no: () {
                            Navigator.pop(context);
                          },
                          text: 'Do you want to delete ${insFile?.fileName} ?',
                          yes: () {
                            App_cubit.get(context).INS_DeleteMaterialFile(
                                fileId: insFile?.lectureFileId);
                            Navigator.pop(context);
                          });
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        // color: Colors.red.withOpacity(.6),
                        border: Border.all(
                          width: .5,
                          color: Colors.red.withOpacity(1),
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: FaIcon(
                          FontAwesomeIcons.trashCan,
                          size: 13,
                          color: Colors.red.withOpacity(1),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            : const SizedBox(),
        SizedBox(
          height: 5,
        ),
        Container(
          height: 100,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            App_cubit.get(context).stuCoursesMatrialFileModel.isNotEmpty ||
                    App_cubit.get(context).MaterialLecFiles.isNotEmpty
                ? '${file?.filePath?.split('.').last}'
                : '${insFile?.filePath?.split('.').last}',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.all(3.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                App_cubit.get(context).stuCoursesMatrialFileModel.isNotEmpty ||
                        App_cubit.get(context).MaterialLecFiles.isNotEmpty
                    ? '${file?.fileName}'
                    : '${insFile?.fileName}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              Text(
                App_cubit.get(context).stuCoursesMatrialFileModel.isNotEmpty ||
                        App_cubit.get(context).MaterialLecFiles.isNotEmpty
                    ? '${file?.createdAt?.split('T').first} at ${file?.createdAt?.split('T').last}'
                    : '${insFile?.createdAt?.split('T').first} at ${insFile?.createdAt?.split('T').last}',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey[700],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget STU_Build_Lec_View_Widget({
  fileFormKey,
  TextEditingController? fileController,
  GetCourseMaterialsModel? courseMaterial,
  GetCourseMaterialFileModel? file,
  InsLecFilesModel? insFile,
  index,
  context,
}) {
  // final kb = file.size / 1024;
  // final mb = kb / 1024;
  // final fileSize =
  // mb >= 1 ? '${mb.toStringAsFixed(2)} MB ' : '${kb.toStringAsFixed(2)} KB';
  // final extension = file.extension ?? 'none';
  final color = Colors.blueGrey.withOpacity(.7);
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: Colors.blueGrey.withOpacity(.15),
    ),
    padding: const EdgeInsets.all(6),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 5,
        ),
        Container(
          height: 100,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            App_cubit.get(context).stuCoursesMatrialFileModel.isNotEmpty ||
                    App_cubit.get(context).MaterialLecFiles.isNotEmpty
                ? '${file?.filePath?.split('.').last}'
                : '${insFile?.filePath?.split('.').last}',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.all(3.0),
          child: Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  App_cubit.get(context)
                              .stuCoursesMatrialFileModel
                              .isNotEmpty ||
                          App_cubit.get(context).MaterialLecFiles.isNotEmpty
                      ? '${file?.fileName}'
                      : '${insFile?.fileName}',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                Text(
                  App_cubit.get(context)
                              .stuCoursesMatrialFileModel
                              .isNotEmpty ||
                          App_cubit.get(context).MaterialLecFiles.isNotEmpty
                      ? '${file?.createdAt?.split('T').first} at ${file?.createdAt?.split('T').last}'
                      : '${insFile?.createdAt?.split('T').first} at ${insFile?.createdAt?.split('T').last}',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
//----------------------------------------
//--------------------------------------

Widget Build_Quezes_Ins(context) => Container(
    padding: const EdgeInsetsDirectional.all(10),
    height: 170,
    width: double.infinity,
    decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.5),
        borderRadius: BorderRadius.circular(15)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Text(
              'Quiz Status',
              style: TextStyle(fontSize: 15),
            ),
            const Spacer(),
            DropdownButton<Widget>(
              elevation: 0,
              underline: Container(),
              menuMaxHeight: 100,
              alignment: AlignmentDirectional.topEnd,
              //qborderRadius: BorderRadius.circular(15),
              icon: const Icon(Icons.more_vert),
              // Value is the selected item
              // value: AppCubit.get(context).Material_More_selectedItem,
              // List of items for the dropdown
              items: App_cubit.get(context).items.map((Widget item) {
                return DropdownMenuItem<Widget>(
                  value: item,
                  child: item,
                );
              }).toList(),

              // onChanged callback to update the selected item

              onChanged: (Widget? newValue) {
                App_cubit.get(context).change_more_list_visible(newValue);
              },
            ),
          ],
        ),
        const Center(
          child: Text(
            'Material name',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        const Spacer(),
        const Text('Start at : 20/10 at 3:30'),
        const Text('Deadline : 30 minutes')
      ],
    ));

//------------------------------------------------
Widget Build_STU_Lec({Stu_GetAllCoursesModel? courses}) => Container(
      padding:
          const EdgeInsets.only(bottom: 10, right: 20.0, top: 10, left: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Colors.black,
            width: .5,
          )),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              // image: DecorationImage(
              //
              //     image: NetworkImage(
              //       '',
              //
              //     ),
              //     fit: BoxFit.cover
              // ),
              color: Colors.blueGrey.withOpacity(.8),
              image: DecorationImage(
                image: AssetImage('assets/images/post/7.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${courses?.name}',
                  maxLines: 1,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: c1,
                    fontSize: 17,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  '${courses?.instructorFullName} ',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: c1, fontSize: 14),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Container(
            alignment: AlignmentDirectional.centerEnd,
            child: FaIcon(
              FontAwesomeIcons.circleRight,
              color: Colors.teal.withOpacity(.8),
              size: 35,
            ),
          ),
        ],
      ),
    );
Widget INS_Course({INS_Course_Model? courses}) => Container(
      padding:
          const EdgeInsets.only(bottom: 10, right: 20.0, top: 10, left: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Colors.black,
            width: .5,
          )),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              // image: DecorationImage(
              //
              //     image: NetworkImage(
              //       '',
              //
              //     ),
              //     fit: BoxFit.cover
              // ),
              color: Colors.blueGrey.withOpacity(.8),
              image: DecorationImage(
                image: AssetImage('assets/images/post/7.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${courses?.name}',
                  maxLines: 1,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: c1,
                    fontSize: 17,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  '${courses?.hours} hours',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(
                      fontWeight: FontWeight.w700, color: c1, fontSize: 14),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Container(
            alignment: AlignmentDirectional.centerEnd,
            child: FaIcon(
              FontAwesomeIcons.circleRight,
              color: Colors.teal.withOpacity(.8),
              size: 35,
            ),
          ),
        ],
      ),
    );
//--------------Assignments-----------------------------
Widget STU_pend_Tasks({STU_Course_Assign_Model? assign}) => Container(
      height: 155,
      decoration: BoxDecoration(
        // color: Colors.blueGrey.withOpacity(.05),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: .5),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 10.0, right: 15, bottom: 10, left: 15),
        child: Column(
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                ),
                Text('${assign?.taskName}'),
                Spacer(),
                Container(
                  height: 30,
                  width: 30,
                  child: Center(
                    child: FaIcon(
                      FontAwesomeIcons.circleUp,
                      size: 26,
                      color: Colors.teal.withOpacity(.7),
                    ),
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                Container(
                  height: 30,
                  width: 30,
                  child: Center(
                    child: FaIcon(
                      FontAwesomeIcons.circleDown,
                      size: 26,
                      color: Colors.teal.withOpacity(.7),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 7,
            ),
            Container(
              color: Colors.black.withOpacity(.3),
              height: .5,
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.bookmark,
                                size: 12,
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                '${assign?.courseName}',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 13),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.user,
                                size: 12,
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                '${assign?.instructorName}',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 13),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.chartLine,
                                size: 12,
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                '${assign?.taskGrade}',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 13),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.clock,
                                size: 12,
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Container(
                                width: 150,
                                child: Text(
                                  'From ${assign?.startDate}  to  ${assign?.startDate}',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 45,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.teal.withOpacity(.6),
                              borderRadius: BorderRadius.circular(12),
                              // border: Border.all(width: .5),
                            ),
                            child: Center(
                              child: Text(
                                'Available',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
Widget Build_STU_pend_Tasks({STU_Course_Assign_Model? assign}) => Container(
    width: double.infinity,
    height: 76.95,
    decoration: ShapeDecoration(
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Colors.blue, width: 2),
        borderRadius: BorderRadius.circular(15),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              // image: DecorationImage(
              //
              //     image: NetworkImage(
              //       '',
              //
              //     ),
              //     fit: BoxFit.cover
              // ),
              color: Colors.blueGrey.withOpacity(.8),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${assign?.taskName}',
                style: TextStyle(
                    fontWeight: FontWeight.w700, color: c1, fontSize: 17),
              ),
              Row(
                children: [
                  Text(
                    'Deadline',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: c1,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Text(
                    '${DateTime.parse(assign!.startDate!).hour}:${DateTime.parse(assign.startDate!).minute}',
                    //'1 more day',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.red,
                      fontSize: 14,
                    ),
                  )
                ],
              ),
            ],
          ),
          const Spacer(),
          Container(
            width: 85,
            height: double.infinity,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.5),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(
              child: Text(
                'more',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  //  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    ));

//----------------------------------------
Widget STU_complete_Tasks({required STU_Course_Assign_Model? assign}) =>
    Container(
      height: 155,
      decoration: BoxDecoration(
        // color: Colors.blueGrey.withOpacity(.05),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: .5),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 10.0, right: 15, bottom: 10, left: 15),
        child: Column(
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                ),
                Text('${assign?.taskName}'),
                Spacer(),
                SizedBox(
                  width: 7,
                ),
                InkWell(
                  onTap: () {
                    // Alrat(
                    //     context: context,
                    //     no: () {
                    //       Navigator.pop(context);
                    //     },
                    //     text: 'Do you want to delete Task ?',
                    //     yes: () {
                    //       App_cubit.get(context).INS_Delete_Assign(Taskid: assign!.taskId);
                    //       Navigator.pop(context);
                    //
                    //     });
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    child: Center(
                      child: FaIcon(
                        FontAwesomeIcons.circleCheck,
                        size: 26,
                        color: Colors.teal.withOpacity(.7),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 7,
            ),
            Container(
              color: Colors.black.withOpacity(.3),
              height: .5,
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.bookmark,
                                size: 12,
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                '${assign?.courseName}',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 13),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.user,
                                size: 12,
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                '${assign?.instructorName}',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 13),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.chartLine,
                                size: 12,
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                '${assign?.taskGrade}',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 13),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.clock,
                                size: 12,
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Container(
                                width: 150,
                                child: Text(
                                  'Ended ${assign?.startDate}',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13,
                                      color: Colors.red),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 45,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.teal.withOpacity(.6),
                              borderRadius: BorderRadius.circular(12),
                              // border: Border.all(width: .5),
                            ),
                            child: Center(
                              child: Text(
                                'Completed',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
Widget Build_STU_complete_Tasks() => Container(
    width: double.infinity,
    height: 76.95,
    decoration: ShapeDecoration(
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Colors.blue, width: 2),
        borderRadius: BorderRadius.circular(15),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              // image: DecorationImage(
              //
              //     image: NetworkImage(
              //       '',
              //
              //     ),
              //     fit: BoxFit.cover
              // ),
              color: Colors.blueGrey.withOpacity(.8),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Parallel',
                style: TextStyle(
                    fontWeight: FontWeight.w700, color: c1, fontSize: 17),
              ),
              Row(
                children: [
                  Text(
                    'Completed',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: c1,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Text(
                    '3/4/2024',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: c1,
                      fontSize: 14,
                    ),
                  )
                ],
              ),
            ],
          ),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: FaIcon(
              FontAwesomeIcons.circleCheck,
              size: 35,
              color: Colors.green,
            ),
          ),
        ],
      ),
    ));

//-------------------INS Completed tasks---------------
// Widget Build_INS_complete_Tasks1() => Container(
//     width: double.infinity,
//     height: 120,
//     decoration: ShapeDecoration(
//       shape: RoundedRectangleBorder(
//         side: const BorderSide(color: Colors.blue, width: 2),
//         borderRadius: BorderRadius.circular(15),
//       ),
//     ),
//     child: Padding(
//       padding: const EdgeInsets.all(10.0),
//       child: Row(
//         children: [
//           Container(
//             height: 50,
//             width: 50,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10),
//               // image: DecorationImage(
//               //
//               //     image: NetworkImage(
//               //       '',
//               //
//               //     ),
//               //     fit: BoxFit.cover
//               // ),
//               color: Colors.blueGrey.withOpacity(.8),
//             ),
//           ),
//           const SizedBox(
//             width: 15,
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 'Task name',
//                 style: TextStyle(
//                     fontWeight: FontWeight.w700, color: c1, fontSize: 17),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Container(
//                 height: 30,
//                 width: 200,
//                 decoration: BoxDecoration(
//                     color: Colors.teal,
//                     border: Border.all(
//                       color: Colors.grey,
//                       width: .5,
//                     ),
//                     borderRadius: BorderRadius.circular(10)),
//                 child: Center(
//                     child: Text(
//                   'Check result',
//                   style: TextStyle(color: Colors.white),
//                 )),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Row(
//                 children: [
//                   Text(
//                     'Completed',
//                     style: TextStyle(
//                       fontWeight: FontWeight.w400,
//                       color: c1,
//                       fontSize: 14,
//                     ),
//                   ),
//                   const SizedBox(
//                     width: 3,
//                   ),
//                   Text(
//                     '3/4/2024',
//                     style: TextStyle(
//                       fontWeight: FontWeight.w500,
//                       color: c1,
//                       fontSize: 14,
//                     ),
//                   )
//                 ],
//               ),
//             ],
//           ),
//           const Spacer(),
//           const Padding(
//             padding: EdgeInsets.only(right: 10.0),
//             child: FaIcon(
//               FontAwesomeIcons.circleCheck,
//               size: 35,
//               color: Colors.green,
//             ),
//           ),
//         ],
//       ),
//     ));

Widget BuildAssignFileViewWidget(
  index,
  context,
  File file,
) {
  final kb = file.lengthSync() / 1024;
  final mb = kb / 1024;
  final fileSize =
      mb >= 1 ? '${mb.toStringAsFixed(2)} MB ' : '${kb.toStringAsFixed(2)} KB';
  final extension = file.path.split('.').last ?? '';
  final color = Colors.blueGrey.withOpacity(.5);
  return InkWell(
    onTap: () => App_cubit.get(context).openFile_Fun(file: file),
    child: GlassBoxWithBorder_Gradiant2(
        widget: Container(
          width: 140,
          height: 140,
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  '.${extension}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                  ),
                ),
              )),
              const SizedBox(
                height: 8,
              ),
              Text(
                file.path.split('/').last,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                '${fileSize}',
                //fileSize,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[700],
                ),
              ),
            ],
          ),
        ),
        BorderWidth: 0,
        BorderColor: Colors.black,
        color: Colors.white.withOpacity(.2),
        borderRadius: 20,
        x: 0,
        y: 0),
  );
}

Widget Build_Quiz_Data_Widget_({
  STU_Quiz_Model? quiz,
  List<bool>? quizIsComplete,
  List<bool>? isQuizStart,
  int? index,
  Function? onQuizStart,
}
        //List<bool> quizState, List<bool> isQuizStart, int index
        ) =>
    Container(
      padding: const EdgeInsetsDirectional.all(12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.blue)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            quiz?.title != null
                ? '${quiz?.title}'
                : 'Parallel programming Quiz 1',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: c1,
              fontSize: 17,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            '10 Points',
            style:
                TextStyle(fontWeight: FontWeight.w400, color: c1, fontSize: 14),
          ),
          const SizedBox(
            height: 20,
          ),
          ConditionalBuilder(
              condition: quizIsComplete![index!],
              builder: (context) => Container(
                    height: 40,
                    width: 180,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                        child:
                            //isQuizStart[index] ?
                            const Text(
                      'Finished',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                        /*  : const Text(
                      'Waiting',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )*/
                        ),
                  ),
              fallback: (context) => Column(
                    children: [
                      Text(
                        'From',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: c1,
                            fontSize: 14),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 25,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.green)),
                            child: Center(
                                child: Text(
                              '${DateTime.parse(quiz!.startDate!).hour}:${DateTime.parse(quiz.startDate!).minute}',
                            )),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'To',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: c1,
                                fontSize: 14),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 25,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.red)),
                            child: Center(
                                child: Text(
                              '${DateTime.parse(quiz.endDate!).hour}:${DateTime.parse(quiz.endDate!).minute}',
                            )),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Container(
                        height: 40,
                        width: 180,
                        decoration: BoxDecoration(
                          color: quiz?.status == 'Available'
                              //isQuizStart[index]
                              ? Colors.green
                              : Colors.blue,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                            child: quiz.status == 'Not Available'
                                // isQuizStart[index]
                                ? TextButton(
                                    onPressed: () {
                                      //  print(App_cubit.get(context).allquizAnswers![0]);

                                      //print(App_cubit.get(context).allquizAnswers![0]);

                                      //  App_cubit.get(context).quizAnswerSelected='';

                                      App_cubit.get(context).submitQuizAnswers =
                                          [];

                                      onQuizStart;

                                      App_cubit.get(context).currentQuizId =
                                          quiz.id;

                                      App_cubit.get(context)
                                          .StuGetQuizDataById();

                                      App_cubit.get(context).currentQuizName =
                                          quiz.title;

                                      //  App_cubit.get(context).allquizAnswers[0]=App_cubit.get(context).quizAnswerSelected;
                                      //  App_cubit.get(context).allquizAnswers =  List<String>.filled(App_cubit.get(context).questionModel.length,'');

                                      navigateTo(
                                          context, STU_Quizes_Ques_Screen());
                                    },
                                    child: const Text(
                                      'Start',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  )
                                : const Text(
                                    'Waiting',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  )),
                      ),
                    ],
                  )),
        ],
      ),
    );

Widget STU_Quiz_Card({
  STU_Quiz_Model? quiz,
  List<bool>? quizIsComplete,
  List<bool>? isQuizStart,
  int? index,
  required context,
  Function? onQuizStart,
}
        //List<bool> quizState, List<bool> isQuizStart, int index
        ) =>
    Container(
      height: 155,
      decoration: BoxDecoration(
        // color: Colors.blueGrey.withOpacity(.05),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: .5),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 10.0, right: 15, bottom: 10, left: 15),
        child: Column(
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                ),
                Text('${quiz?.title}'),
                Spacer(),
                Container(
                  height: 30,
                  width: 30,
                  child: Center(
                    child: FaIcon(
                      FontAwesomeIcons.clock,
                      size: 26,
                      color: Colors.teal.withOpacity(.7),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 7,
            ),
            Container(
              color: Colors.black.withOpacity(.3),
              height: .5,
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.bookmark,
                                size: 12,
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                '${quiz?.notes}',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 13),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.user,
                                size: 12,
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                '${quiz?.status}',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 13),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.chartLine,
                                size: 12,
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                '10 minutes',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 13),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.clock,
                                size: 12,
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Container(
                                width: 150,
                                child: Text(
                                  'From ${DateTime.parse(quiz!.startDate!).hour}:${DateTime.parse(quiz!.startDate!).minute}  to  ${DateTime.parse(quiz!.endDate!).hour}:${DateTime.parse(quiz!.endDate!).minute} ',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            quiz?.status == 'Available'
                                ? print('Available')
                                : print(quiz?.status);
                            //  print(App_cubit.get(context).allquizAnswers![0]);

                            //print(App_cubit.get(context).allquizAnswers![0]);

                            //  App_cubit.get(context).quizAnswerSelected='';



                            //  App_cubit.get(context).allquizAnswers[0]=App_cubit.get(context).quizAnswerSelected;
                            //  App_cubit.get(context).allquizAnswers =  List<String>.filled(App_cubit.get(context).questionModel.length,'');
                            print('-------------------------------------------------------');
                            // print(DateTime.now());
                            // print(DateTime.parse(quiz.startDate!));
                            // print(DateTime.parse(quiz.endDate!));
                            // if(DateTime.now().isAfter(DateTime.parse(quiz.startDate!))&& DateTime.now().isBefore(DateTime.parse(quiz.endDate!))){
                              App_cubit.get(context).submitQuizAnswers = [];

                              onQuizStart;

                              App_cubit.get(context).currentQuizId = quiz.id;

                              App_cubit.get(context).StuGetQuizDataById();

                              App_cubit.get(context).currentQuizName = quiz.title;
                              navigateTo(context, STU_Quizes_Ques_Screen());

                           // }

                            print('-------------------------------------------------------');

                          },
                          child: Container(
                            height: 45,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: DateTime.now().isAfter(DateTime.parse(quiz.startDate!)) && DateTime.now().isBefore(DateTime.parse(quiz.endDate!))

                                  ? Colors.teal.withOpacity(.6)
                                  : Colors.red.withOpacity(.6),
                              borderRadius: BorderRadius.circular(12),
                              // border: Border.all(width: .5),
                            ),
                            child: Center(
                              child: Text(
                                DateTime.now().isAfter(DateTime.parse(quiz.startDate!)) && DateTime.now().isBefore(DateTime.parse(quiz.endDate!))?
                                'Available':'Pending',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

Widget INS_Quiz_Card({required context, required GetQuizes_Model quizes}

        //List<bool> quizState, List<bool> isQuizStart, int index
        ) =>
    Container(
      height: 200,
      decoration: BoxDecoration(
        // color: Colors.blueGrey.withOpacity(.05),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: .5),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 10.0, right: 15, bottom: 10, left: 15),
        child: Column(
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(quizes.title!),
                Spacer(),
                InkWell(
                  onTap: () {
                    Alrat(
                        context: context,
                        no: () {
                          Navigator.pop(context);
                        },
                        text: 'Do you want to edit quiz ?',
                        yes: () {});
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      // color: Colors.yellow.withOpacity(.9),
                      border: Border.all(
                        width: .8,
                        color: Colors.blue.withOpacity(1),
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: FaIcon(
                        FontAwesomeIcons.pen,
                        size: 15,
                        color: Colors.blue.withOpacity(1),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                InkWell(
                  onTap: () {
                    Alrat(
                        context: context,
                        no: () {
                          Navigator.pop(context);
                        },
                        text: 'Do you want to delete quiz ?',
                        yes: () {
                          Navigator.pop(context);
                          App_cubit.get(context)
                              .INS_Delete_Quiz(quizid: quizes.id);
                        });
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      // color: Colors.red.withOpacity(.6),
                      border: Border.all(
                        width: .8,
                        color: Colors.red.withOpacity(1),
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: FaIcon(
                        FontAwesomeIcons.trashCan,
                        size: 15,
                        color: Colors.red.withOpacity(1),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                InkWell(
                  onTap: () {
                    Alrat(
                        context: context,
                        no: () {
                          Navigator.pop(context);
                        },
                        text: 'Do you want to see quiz ?',
                        yes: () {
                          Navigator.pop(context);
                          App_cubit.get(context).INS_GetQuizeDetails_Function(
                            QuizID: quizes.id,
                          );
                        });
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      // color: Colors.teal.withOpacity(.6),
                      border: Border.all(
                        width: .8,
                        color: Colors.teal.withOpacity(1),
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: FaIcon(
                        FontAwesomeIcons.eye,
                        size: 15,
                        color: Colors.teal.withOpacity(1),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 7,
            ),
            Container(
              color: Colors.black.withOpacity(.3),
              height: .5,
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.bookmark,
                                size: 12,
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                'Computer Security',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 13),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.user,
                                size: 12,
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                'Sara shehab',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 13),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.chartLine,
                                size: 12,
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                '5 points',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 13),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.clock,
                                size: 12,
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                'From ${quizes?.startDate?.hour}:${quizes?.startDate?.minute}  ${quizes?.startDate?.month}/${quizes?.startDate?.day} To '
                                    '${quizes?.endDate?.hour}:${quizes?.endDate?.minute} ${quizes?.endDate?.month}/${quizes?.endDate?.day}',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 13),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 45,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.teal.withOpacity(.6),
                            borderRadius: BorderRadius.circular(12),
                            // border: Border.all(width: .5),
                          ),
                          child: Center(
                            child: Text(
                              'Available',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 40,
              child: LinearPercentIndicator(
                percent: .6,
                backgroundColor: Colors.blueGrey.withOpacity(.2),
                progressColor: Colors.teal.withOpacity(.6),
                barRadius: Radius.circular(20),
                lineHeight: 12,
                trailing: Text('125'),
                leading: Text('60'),

                animation: true,
                animationDuration: 1500,
                curve: Curves.easeOutBack,

                // footer: Padding(
                //   padding: const EdgeInsets.only(top:0.0),
                //   child: Text('Submited',
                //     style: TextStyle(
                //       fontWeight: FontWeight.w600,
                //       fontSize: 15,
                //       color: Colors.teal,
                //     ),
                //   ),
                // ),
              ),
            ),
          ],
        ),
      ),
    );

var taskNamecontroller = TextEditingController();
var taskGradecontroller = TextEditingController();

int? starthours;
int? startminutes;
int? endhours;
int? endminutes;

Time _time = Time(hour: 11, minute: 30, second: 0);
var formkey1 = GlobalKey<FormState>();
Widget
    INS_Task_Card({required context, required INS_Course_Assign_Model? assign}

            //List<bool> quizState, List<bool> isQuizStart, int index
            ) =>
        Container(
          height: 185,
          decoration: BoxDecoration(
            // color: Colors.blueGrey.withOpacity(.05),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: .5),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
                top: 10.0, right: 15, bottom: 10, left: 15),
            child: Column(
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text('${assign?.taskName}'),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        Alrat(
                            context: context,
                            no: () {
                              Navigator.pop(context);
                            },
                            text: 'Do you want to edit Task ?',
                            yes: () {
                              Navigator.pop(context);
                              print(assign!.taskId);
                              showDialog<String>(
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
                                                      padding:
                                                          const EdgeInsets.all(
                                                              15.0),
                                                      child: GlassBoxWithBorder(
                                                        widget: Container(
                                                          height: 420,
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    bottom:
                                                                        25.0,
                                                                    left: 25,
                                                                    right: 25,
                                                                    top: 20),
                                                            child: Form(
                                                              key: formkey1,
                                                              child: Column(
                                                                children: [
                                                                  const Spacer(),
                                                                  SizedBox(
                                                                    height: 15,
                                                                  ),
                                                                  Container(
                                                                    padding: EdgeInsets.symmetric(
                                                                        vertical:
                                                                            5,
                                                                        horizontal:
                                                                            10),
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    height: 60,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      // border: Border.all(color: Colors.white),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              18),
                                                                      color: Colors
                                                                          .white
                                                                          .withOpacity(
                                                                              .5),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsets
                                                                          .symmetric(
                                                                          horizontal:
                                                                              0.0),
                                                                      child:
                                                                          TextFormField(
                                                                        controller:
                                                                            taskNamecontroller,
                                                                        keyboardType:
                                                                            TextInputType.text,
                                                                        onFieldSubmitted:
                                                                            (value) {
                                                                          print(
                                                                              value);
                                                                        },
                                                                        // validator:
                                                                        //     (value) {
                                                                        //   if (value!
                                                                        //       .isEmpty) {
                                                                        //     return 'Event title can\'t be empty';
                                                                        //   }
                                                                        //   return null;
                                                                        // },
                                                                        // toolbarOptions:
                                                                        //     ToolbarOptions(paste: true, copy: true),
                                                                        cursorColor:
                                                                            c1,
                                                                        style:
                                                                            const TextStyle(
                                                                          fontSize:
                                                                              18,
                                                                        ),
                                                                        decoration:
                                                                            InputDecoration(
                                                                          prefixIcon:
                                                                              Padding(
                                                                            padding:
                                                                                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                                                                            child:
                                                                                FaIcon(
                                                                              FontAwesomeIcons.edit,
                                                                              color: c1,
                                                                              size: 25,
                                                                            ),
                                                                          ),
                                                                          hintText:
                                                                              'Task name',
                                                                          border:
                                                                              InputBorder.none,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 15,
                                                                  ),
                                                                  Container(
                                                                    padding: EdgeInsets.symmetric(
                                                                        vertical:
                                                                            5,
                                                                        horizontal:
                                                                            10),
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    height: 60,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      // border: Border.all(color: Colors.white),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              18),
                                                                      color: Colors
                                                                          .white
                                                                          .withOpacity(
                                                                              .5),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsets
                                                                          .symmetric(
                                                                          horizontal:
                                                                              0.0),
                                                                      child:
                                                                          TextFormField(
                                                                        controller:
                                                                            taskGradecontroller,
                                                                        keyboardType:
                                                                            TextInputType.text,
                                                                        onFieldSubmitted:
                                                                            (value) {
                                                                          print(
                                                                              value);
                                                                        },
                                                                        //validator:
                                                                        //     (value) {
                                                                        //   if (value!
                                                                        //       .isEmpty) {
                                                                        //     return 'Event title can\'t be empty';
                                                                        //   }
                                                                        //   return null;
                                                                        // },
                                                                        // toolbarOptions:
                                                                        //     ToolbarOptions(paste: true, copy: true),
                                                                        cursorColor:
                                                                            c1,
                                                                        style:
                                                                            const TextStyle(
                                                                          fontSize:
                                                                              18,
                                                                        ),
                                                                        decoration:
                                                                            InputDecoration(
                                                                          prefixIcon:
                                                                              Padding(
                                                                            padding:
                                                                                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                                                                            child:
                                                                                FaIcon(
                                                                              FontAwesomeIcons.solidEdit,
                                                                              color: c1,
                                                                              size: 25,
                                                                            ),
                                                                          ),
                                                                          hintText:
                                                                              'Task grade',
                                                                          border:
                                                                              InputBorder.none,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 15,
                                                                  ),
                                                                  Container(
                                                                    height: 60,
                                                                    child: GestureDetector(
                                                                      onTap: () {
                                                                        showDatePicker(
                                                                          context: context,
                                                                          initialDate:
                                                                          DateTime.now(),
                                                                          firstDate:
                                                                          DateTime(2022),
                                                                          lastDate:
                                                                          DateTime(2025),
                                                                          builder: (BuildContext
                                                                          context,
                                                                              Widget? child) {
                                                                            return Theme(
                                                                              data: ThemeData
                                                                                  .dark()
                                                                                  .copyWith(
                                                                                colorScheme:
                                                                                ColorScheme
                                                                                    .dark()
                                                                                    .copyWith(
                                                                                  primary: Colors
                                                                                      .blue, // Change the primary color as needed
                                                                                ),
                                                                              ),
                                                                              child: child!,
                                                                            );
                                                                          },
                                                                        ).then((selectedDate) {
                                                                          Navigator.of(context)
                                                                              .push(
                                                                            showPicker(
                                                                              context: context,
                                                                              value: time,
                                                                              sunrise: TimeOfDay(
                                                                                  hour: 6,
                                                                                  minute:
                                                                                  0), // optional
                                                                              sunset: TimeOfDay(
                                                                                  hour: 18,
                                                                                  minute:
                                                                                  0), // optional
                                                                              duskSpanInMinutes:
                                                                              120, // optional

                                                                              borderRadius: 25,
                                                                              accentColor:
                                                                              Colors.blue,
                                                                              blurredBackground:
                                                                              true,
                                                                              elevation: 0,

                                                                              is24HrFormat:
                                                                              false,
                                                                              onCancel: () {
                                                                                Navigator.pop(
                                                                                    context);
                                                                              },
                                                                              onChange:
                                                                                  (value) {
                                                                                startminutes =
                                                                                    value
                                                                                        .minute;
                                                                                starthours =
                                                                                    value.hour;

                                                                              },
                                                                              // onChangeDateTime: (){},
                                                                            ),
                                                                          )
                                                                              .then((value) {
                                                                            if (selectedDate !=
                                                                                null) {
                                                                              DateTime
                                                                              selectedDateTime =
                                                                              DateTime(
                                                                                selectedDate
                                                                                    .year,
                                                                                selectedDate
                                                                                    .month,
                                                                                selectedDate
                                                                                    .day,
                                                                                starthours!,
                                                                                startminutes!,
                                                                              );
                                                                              print(
                                                                                  'Selected date and time: $selectedDateTime');
                                                                              App_cubit.get(context).StartDate_Function(time:DateFormat(
                                                                                  "yyyy-MM-ddTHH:mm:ss.SSS")
                                                                                  .format(
                                                                                  selectedDateTime) );
                                                                              print(
                                                                                  '2024-03-23T22:31:30.911Z');
                                                                              // Handle the selected date and time as needed
                                                                            }
                                                                          });
                                                                        });

                                                                      },
                                                                      child: Container(
                                                                        decoration: BoxDecoration(
                                                                          borderRadius:
                                                                          BorderRadius
                                                                              .circular(20),
                                                                          color: Colors.teal
                                                                              .withOpacity(.5),
                                                                        ),
                                                                        child: Padding(
                                                                          padding:
                                                                          const EdgeInsets
                                                                              .symmetric(
                                                                              horizontal:
                                                                              15.0),
                                                                          child: Row(
                                                                            mainAxisAlignment:
                                                                            MainAxisAlignment
                                                                                .start,
                                                                            children: [
                                                                              FaIcon(
                                                                                  FontAwesomeIcons
                                                                                      .clock),
                                                                              SizedBox(
                                                                                width: 12,
                                                                              ),
                                                                              Text(
                                                                                'Start',
                                                                                style: TextStyle(
                                                                                  fontSize: 22,
                                                                                  color: Colors
                                                                                      .black
                                                                                      .withOpacity(
                                                                                      .7),
                                                                                  fontWeight:
                                                                                  FontWeight
                                                                                      .w700,
                                                                                ),
                                                                              ),
                                                                              Spacer(),
                                                                              Container(
                                                                                decoration:
                                                                                BoxDecoration(
                                                                                  borderRadius:
                                                                                  BorderRadius
                                                                                      .circular(
                                                                                      15),
                                                                                  color: Colors
                                                                                      .white
                                                                                      .withOpacity(
                                                                                      .3),
                                                                                ),
                                                                                child: Padding(
                                                                                  padding: const EdgeInsets
                                                                                      .symmetric(
                                                                                      vertical:
                                                                                      8.0,
                                                                                      horizontal:
                                                                                      15),
                                                                                  child: Row(
                                                                                    children: [
                                                                                      Text(        App_cubit.get(context).StartDate==null?'-- : --':
                                                                                      '${DateTime.parse(App_cubit.get(context).StartDate!).hour} / ${DateTime.parse(App_cubit.get(context).StartDate!).minute}',
                                                                                        style:
                                                                                        TextStyle(
                                                                                          fontSize:
                                                                                          18,
                                                                                          color: Colors
                                                                                              .black,
                                                                                          fontWeight:
                                                                                          FontWeight.w600,
                                                                                        ),
                                                                                      ),
                                                                                      Text(
                                                                                        '${''}',
                                                                                        style:
                                                                                        TextStyle(
                                                                                          fontSize:
                                                                                          13,
                                                                                          color: Colors
                                                                                              .black,
                                                                                          fontWeight:
                                                                                          FontWeight.w800,
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              SizedBox(
                                                                                width: 10,
                                                                              ),
                                                                              Container(
                                                                                decoration:
                                                                                BoxDecoration(
                                                                                  borderRadius:
                                                                                  BorderRadius
                                                                                      .circular(
                                                                                      15),
                                                                                  color: Colors
                                                                                      .white
                                                                                      .withOpacity(
                                                                                      .3),
                                                                                ),
                                                                                child: Padding(
                                                                                  padding: const EdgeInsets
                                                                                      .symmetric(
                                                                                      vertical:
                                                                                      8.0,
                                                                                      horizontal:
                                                                                      15),
                                                                                  child: Row(
                                                                                    children: [
                                                                                      Text(        App_cubit.get(context).StartDate==null?'-- / --':
                                                                                      '${DateTime.parse(App_cubit.get(context).StartDate!).day} / ${DateTime.parse(App_cubit.get(context).StartDate!).month}',
                                                                                        style:
                                                                                        TextStyle(
                                                                                          fontSize:
                                                                                          18,
                                                                                          color: Colors
                                                                                              .black,
                                                                                          fontWeight:
                                                                                          FontWeight.w600,
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 10,
                                                                  ),
                                                                  Container(
                                                                      height: 60,
                                                                    child: GestureDetector(
                                                                      onTap: () {
                                                                        showDatePicker(
                                                                          context: context,
                                                                          initialDate:
                                                                          DateTime.now(),
                                                                          firstDate:
                                                                          DateTime(2022),
                                                                          lastDate:
                                                                          DateTime(2025),
                                                                          builder: (BuildContext
                                                                          context,
                                                                              Widget? child) {
                                                                            return Theme(
                                                                              data: ThemeData
                                                                                  .dark()
                                                                                  .copyWith(
                                                                                colorScheme:
                                                                                ColorScheme
                                                                                    .dark()
                                                                                    .copyWith(
                                                                                  primary: Colors
                                                                                      .blue,

                                                                                  // Change the primary color as needed
                                                                                ),
                                                                              ),
                                                                              child: child!,
                                                                            );
                                                                          },
                                                                        ).then((selectedDate) {
                                                                          Navigator.of(context)
                                                                              .push(
                                                                            showPicker(
                                                                              context: context,
                                                                              value: time,
                                                                              sunrise: TimeOfDay(
                                                                                  hour: 6,
                                                                                  minute:
                                                                                  0), // optional
                                                                              sunset: TimeOfDay(
                                                                                  hour: 18,
                                                                                  minute:
                                                                                  0), // optional
                                                                              duskSpanInMinutes:
                                                                              120, // optional

                                                                              borderRadius: 25,
                                                                              accentColor:
                                                                              Colors.blue,
                                                                              blurredBackground:
                                                                              true,
                                                                              elevation: 0,

                                                                              is24HrFormat:
                                                                              false,
                                                                              onCancel: () {
                                                                                Navigator.pop(
                                                                                    context);
                                                                              },
                                                                              onChange:
                                                                                  (value) {
                                                                                endminutes =
                                                                                    value
                                                                                        .minute;
                                                                                endhours =
                                                                                    value.hour;
                                                                              },
                                                                              // onChangeDateTime: (){},
                                                                            ),
                                                                          )
                                                                              .then((value) {
                                                                            if (selectedDate !=
                                                                                null) {

                                                                              DateTime
                                                                              selectedDateTime =
                                                                              DateTime(
                                                                                selectedDate
                                                                                    .year,
                                                                                selectedDate
                                                                                    .month,
                                                                                selectedDate
                                                                                    .day,
                                                                                endhours!,
                                                                                endminutes!,
                                                                              );
                                                                              print(
                                                                                  'Selected date and time: $selectedDateTime');
                                                                              App_cubit.get(context).EndDate_Function(time: DateFormat(
                                                                                  "yyyy-MM-ddTHH:mm:ss.SSS")
                                                                                  .format(
                                                                                  selectedDateTime) );
                                                                              print(
                                                                                  '2024-03-23T22:31:30.911Z');
                                                                              // Handle the selected date and time as needed
                                                                            }
                                                                          });
                                                                        });

                                                                      },
                                                                      child: Container(
                                                                        decoration: BoxDecoration(
                                                                          borderRadius:
                                                                          BorderRadius
                                                                              .circular(20),
                                                                          color: Colors.red
                                                                              .withOpacity(.5),
                                                                        ),
                                                                        child: Padding(
                                                                          padding:
                                                                          const EdgeInsets
                                                                              .symmetric(
                                                                              horizontal:
                                                                              15.0),
                                                                          child: Row(
                                                                            mainAxisAlignment:
                                                                            MainAxisAlignment
                                                                                .start,
                                                                            children: [
                                                                              FaIcon(
                                                                                  FontAwesomeIcons
                                                                                      .clock),
                                                                              SizedBox(
                                                                                width: 12,
                                                                              ),
                                                                              Text(
                                                                                'End',
                                                                                style: TextStyle(
                                                                                  fontSize: 22,
                                                                                  color: Colors
                                                                                      .black
                                                                                      .withOpacity(
                                                                                      .7),
                                                                                  fontWeight:
                                                                                  FontWeight
                                                                                      .w700,
                                                                                ),
                                                                              ),
                                                                              Spacer(),
                                                                              Container(
                                                                                decoration:
                                                                                BoxDecoration(
                                                                                  borderRadius:
                                                                                  BorderRadius
                                                                                      .circular(
                                                                                      15),
                                                                                  color: Colors
                                                                                      .white
                                                                                      .withOpacity(
                                                                                      .3),
                                                                                ),
                                                                                child: Padding(
                                                                                  padding: const EdgeInsets
                                                                                      .symmetric(
                                                                                      vertical:
                                                                                      8.0,
                                                                                      horizontal:
                                                                                      15),
                                                                                  child: Row(
                                                                                    children: [
                                                                                      Text(
                                                                                        App_cubit.get(context).EndDate==null?'-- : --':
                                                                                        '${DateTime.parse(App_cubit.get(context).EndDate!).hour } : ${DateTime.parse(App_cubit.get(context).EndDate!).minute}',
                                                                                        style:
                                                                                        TextStyle(
                                                                                          fontSize:
                                                                                          18,
                                                                                          color: Colors
                                                                                              .black,
                                                                                          fontWeight:
                                                                                          FontWeight.w600,
                                                                                        ),
                                                                                      ),
                                                                                      Text(
                                                                                        '${''}',
                                                                                        style:
                                                                                        TextStyle(
                                                                                          fontSize:
                                                                                          13,
                                                                                          color: Colors
                                                                                              .black,
                                                                                          fontWeight:
                                                                                          FontWeight.w800,
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              SizedBox(
                                                                                width: 10,
                                                                              ),
                                                                              Container(
                                                                                decoration:
                                                                                BoxDecoration(
                                                                                  borderRadius:
                                                                                  BorderRadius
                                                                                      .circular(
                                                                                      15),
                                                                                  color: Colors
                                                                                      .white
                                                                                      .withOpacity(
                                                                                      .3),
                                                                                ),
                                                                                child: Padding(
                                                                                  padding: const EdgeInsets
                                                                                      .symmetric(
                                                                                      vertical:
                                                                                      8.0,
                                                                                      horizontal:
                                                                                      15),
                                                                                  child: Row(
                                                                                    children: [

                                                                                      Text( App_cubit.get(context).EndDate==null?'-- / --':
                                                                                      '${DateTime.parse(App_cubit.get(context).EndDate!).day} / ${DateTime.parse(App_cubit.get(context).EndDate!).month}',
                                                                                        style:
                                                                                        TextStyle(
                                                                                          fontSize:
                                                                                          18,
                                                                                          color: Colors
                                                                                              .black,
                                                                                          fontWeight:
                                                                                          FontWeight.w600,
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 15,
                                                                  ),
                                                                  Default_Button(
                                                                      onPressed:
                                                                          () {
                                                                        if (formkey1.currentState!.validate() &&
                                                                            App_cubit.get(context).StartDate !=
                                                                                null &&
                                                                            App_cubit.get(context).EndDate !=
                                                                                null) {
                                                                          App_cubit.get(context)
                                                                              .updateINSAssign(
                                                                            Taskid:
                                                                                assign.taskId,
                                                                            taskName:
                                                                                taskNamecontroller.text,
                                                                            taskGrade:
                                                                                taskGradecontroller.text,
                                                                            startDate:
                                                                            App_cubit.get(context).StartDate,
                                                                            endDate:
                                                                            App_cubit.get(context).EndDate,
                                                                          );

                                                                          Navigator.pop(
                                                                              context);
                                                                          App_cubit.get(context).StartDate=null;
                                                                          App_cubit.get(context).EndDate=null;
                                                                        }

                                                                        //   if (formkey1.currentState!.validate()) {
                                                                        //   cubit.AddEventToCalender(
                                                                        //       startDate: cubit.startTime,
                                                                        //       endDate: cubit.endTime,
                                                                        //       eventBody: taskGradecontroller.text);
                                                                        //   Navigator.pop(
                                                                        //       context);
                                                                        // } else {
                                                                        //   flutterToast(
                                                                        //       msg: 'please enter the event title',
                                                                        //       backColor: Colors.red);
                                                                        // }
                                                                      },
                                                                      containerHeight:
                                                                          50,
                                                                      textFontSize:
                                                                          20,
                                                                      text:
                                                                          'Confirm changes'),
                                                                  // SizedBox(
                                                                  //   height: 15,
                                                                  // ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        color: Colors.white
                                                            .withOpacity(.5),
                                                        borderRadius: 30,
                                                        x: 15,
                                                        y: 15,
                                                        BorderWidth: 1,
                                                        BorderColor:
                                                            Colors.white,
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
                            });
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          // color: Colors.yellow.withOpacity(.9),
                          border: Border.all(
                            width: .8,
                            color: Colors.blue.withOpacity(1),
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: FaIcon(
                            FontAwesomeIcons.pen,
                            size: 15,
                            color: Colors.blue.withOpacity(1),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    InkWell(
                      onTap: () {
                        Alrat(
                            context: context,
                            no: () {
                              Navigator.pop(context);
                            },
                            text: 'Do you want to delete Task ?',
                            yes: () {
                              App_cubit.get(context)
                                  .INS_Delete_Assign(Taskid: assign!.taskId);
                              Navigator.pop(context);
                            });
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          // color: Colors.red.withOpacity(.6),
                          border: Border.all(
                            width: .8,
                            color: Colors.red.withOpacity(1),
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: FaIcon(
                            FontAwesomeIcons.trashCan,
                            size: 15,
                            color: Colors.red.withOpacity(1),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    InkWell(
                      onTap: () {
                        Alrat(
                            context: context,
                            no: () {
                              Navigator.pop(context);
                            },
                            text: 'Do you want to see Task ?',
                            yes: () {
                              App_cubit.get(context).openFile_Fun(
                                  networkFile:
                                      assign?.filePath?.split('net/').last);
                            });
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          // color: Colors.teal.withOpacity(.6),
                          border: Border.all(
                            width: .8,
                            color: Colors.teal.withOpacity(1),
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: FaIcon(
                            FontAwesomeIcons.eye,
                            size: 15,
                            color: Colors.teal.withOpacity(1),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 7,
                ),
                Container(
                  color: Colors.black.withOpacity(.3),
                  height: .5,
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.bookmark,
                                    size: 12,
                                  ),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Expanded(
                                    child: Text(
                                      '${App_cubit.get(context).currentCourseName}',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 13),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Row(
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.user,
                                    size: 12,
                                  ),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Text(
                                    '${App_cubit.get(context).currentInstructorName}',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 13),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Row(
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.clock,
                                    size: 12,
                                  ),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Container(
                                    width: 150,
                                    child: Text(
                                      'Ended  ${assign!.endDate!.hour}:${assign!.endDate!.minute} - ${assign!.endDate!.day}/${assign!.endDate!.month}/${assign!.endDate!.year}',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color:  Colors.red,
                                          fontSize: 13),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                App_cubit.get(context).insGetStuUploadTasks(
                                    assignId: assign?.taskId);
                                showDialog<String>(
                                  context: context,
                                  barrierColor: Colors.black.withOpacity(.3),
                                  useSafeArea: true,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                    insetPadding: const EdgeInsets.all(0.0),
                                    scrollable: false,
                                    shadowColor: Colors.transparent,
                                    content: Center(
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
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
                                                        padding:
                                                            const EdgeInsets
                                                                .all(15.0),
                                                        child:
                                                            GlassBoxWithBorder(
                                                          widget: Container(
                                                            height: 350,
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      bottom:
                                                                          25.0,
                                                                      left: 25,
                                                                      right: 25,
                                                                      top: 20),
                                                              child: Column(
                                                                children: [
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      FaIcon(
                                                                        FontAwesomeIcons
                                                                            .solidUser,
                                                                        color: Colors
                                                                            .teal,
                                                                        size:
                                                                            18,
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            15,
                                                                      ),
                                                                      Container(
                                                                          child:
                                                                              Text(
                                                                        'Student name',
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: Theme.of(context)
                                                                            .textTheme
                                                                            .subtitle1
                                                                            ?.copyWith(
                                                                              color: Colors.teal,
                                                                              fontSize: 18,
                                                                              fontWeight: FontWeight.w900,
                                                                            ),
                                                                      )),
                                                                      Spacer(),
                                                                      // Container(
                                                                      //     child: Text(
                                                                      //       'Upload at',
                                                                      //       textAlign: TextAlign.center,
                                                                      //       style: Theme.of(context)
                                                                      //           .textTheme
                                                                      //           .subtitle1
                                                                      //           ?.copyWith(
                                                                      //         color: Colors.teal,
                                                                      //         fontSize: 15,
                                                                      //         fontWeight: FontWeight.w900,
                                                                      //       ),
                                                                      //     )),
                                                                    ],
                                                                  ),
                                                                  SizedBox(
                                                                    height: 20,
                                                                  ),
                                                                  Container(
                                                                    height: 2,
                                                                    color: Colors
                                                                        .teal,
                                                                    width: double
                                                                        .infinity,
                                                                  ),
                                                                  SizedBox(
                                                                    height: 20,
                                                                  ),
                                                                  Container(
                                                                    height: 150,
                                                                    child: ListView
                                                                        .separated(
                                                                      itemBuilder: (context, index) => showSTU_UploadeTask(
                                                                          index: index +
                                                                              1,
                                                                          context:
                                                                              context,
                                                                          stuAssign:
                                                                              App_cubit.get(context).studentUplodeTaskModel[index], taskid: '',),

                                                                      separatorBuilder:
                                                                          (context, index) =>
                                                                              Container(
                                                                        height:
                                                                            1,
                                                                        color: Colors
                                                                            .teal,
                                                                        width: double
                                                                            .infinity,
                                                                      ),
                                                                      itemCount: App_cubit.get(
                                                                              context)
                                                                          .studentUplodeTaskModel
                                                                          .length,
                                                                    ),
                                                                  ),
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
                                                          BorderColor:
                                                              Colors.white,
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
                              },
                              child: Container(
                                height: 45,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.teal.withOpacity(.6),
                                  borderRadius: BorderRadius.circular(12),
                                  // border: Border.all(width: .5),
                                ),
                                child: Center(
                                  child: Text(
                                    'Available',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 40,
                  child: LinearPercentIndicator(
                    percent:assign.numberOfStudentsUploads!/assign.numberOfAllStudents!,
                    backgroundColor: Colors.blueGrey.withOpacity(.2),
                    progressColor: Colors.teal.withOpacity(.6),
                    barRadius: Radius.circular(20),
                    lineHeight: 12,
                    trailing: Text('${assign.numberOfAllStudents}'),
                    leading: Text('${assign.numberOfStudentsUploads}'),

                    animation: true,
                    animationDuration: 1500,
                    curve: Curves.easeOutBack,

                    // footer: Padding(
                    //   padding: const EdgeInsets.only(top:0.0),
                    //   child: Text('Submited',
                    //     style: TextStyle(
                    //       fontWeight: FontWeight.w600,
                    //       fontSize: 15,
                    //       color: Colors.teal,
                    //     ),
                    //   ),
                    // ),
                  ),
                ),
              ],
            ),
          ),
        );

Widget INS_complete_Task_Card(
        {required context, required INS_Course_Assign_Model? assign}

        //List<bool> quizState, List<bool> isQuizStart, int index
        ) =>
    Container(
      height: 180,
      decoration: BoxDecoration(
        // color: Colors.blueGrey.withOpacity(.05),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: .5),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 10.0, right: 15, bottom: 10, left: 15),
        child: Column(
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                ),
                Text('${assign?.taskName}'),
                Spacer(),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      // color: Colors.yellow.withOpacity(.9),

                      ),
                  child: Center(
                    child: FaIcon(
                      FontAwesomeIcons.circleCheck,
                      size: 25,
                      color: Colors.teal.withOpacity(.8),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 7,
            ),
            Container(
              color: Colors.black.withOpacity(.3),
              height: .5,
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.bookmark,
                                size: 12,
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Expanded(
                                child: Text(
                                  '${App_cubit.get(context).currentCourseName}',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700, fontSize: 13),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.user,
                                size: 12,
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                '${App_cubit.get(context).currentInstructorName}',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 13),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.clock,
                                size: 12,
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Container(
                                width: 150,
                                child: Text(
                                  'Ended  ${assign!.endDate!.hour}:${assign!.endDate!.minute} ${assign!.endDate!.month}/${assign!.endDate!.day}',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,color: Colors.red,
                                      fontSize: 13),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            App_cubit.get(context)
                                .insGetStuUploadTasks(assignId: assign?.taskId);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      INS_task_result_Screen(taskid: assign.taskId!,),
                                ));
                          },
                          child: Container(
                            height: 45,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.teal.withOpacity(.6),
                              borderRadius: BorderRadius.circular(12),
                              // border: Border.all(width: .5),
                            ),
                            child: Center(
                              child: Text(
                                'Result',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 40,
              child: LinearPercentIndicator(
                percent:assign.numberOfStudentsUploads!/assign.numberOfAllStudents!,
                backgroundColor: Colors.blueGrey.withOpacity(.2),
                progressColor: Colors.teal.withOpacity(.6),
                barRadius: Radius.circular(20),
                lineHeight: 12,
                trailing: Text('${assign.numberOfAllStudents}'),
                leading: Text('${assign.numberOfStudentsUploads}'),

                animation: true,
                animationDuration: 1500,
                curve: Curves.easeOutBack,

                // footer: Padding(
                //   padding: const EdgeInsets.only(top:0.0),
                //   child: Text('Submited',
                //     style: TextStyle(
                //       fontWeight: FontWeight.w600,
                //       fontSize: 15,
                //       color: Colors.teal,
                //     ),
                //   ),
                // ),
              ),
            ),
          ],
        ),
      ),
    );

Widget INS_Quiz_Complete_Card(

    {required context, required GetQuizes_Model quizes}
        ) =>
    Container(
      height: 200,
      decoration: BoxDecoration(
        // color: Colors.blueGrey.withOpacity(.05),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: .5),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 10.0, right: 15, bottom: 10, left: 15),
        child: Column(
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                ),
                Text('${quizes.title}'),
                Spacer(),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      // color: Colors.yellow.withOpacity(.9),

                      ),
                  child: Center(
                    child: FaIcon(
                      FontAwesomeIcons.circleCheck,
                      size: 25,
                      color: Colors.teal.withOpacity(.8),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 7,
            ),
            Container(
              color: Colors.black.withOpacity(.3),
              height: .5,
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.bookmark,
                                size: 12,
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                'Computer Security',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 13),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.user,
                                size: 12,
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                'Sara shehab',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 13),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.chartLine,
                                size: 12,
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                '5 points',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 13),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.clock,
                                size: 12,
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                'Ended  ${quizes?.endDate?.hour}:${quizes?.endDate?.minute}  ${quizes?.endDate?.month}/${quizes?.endDate?.day}',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 13,color: Colors.red),

                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 45,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.teal.withOpacity(.6),
                            borderRadius: BorderRadius.circular(12),
                            // border: Border.all(width: .5),
                          ),
                          child: Center(
                            child: Text(
                              'Result',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 40,
              child: LinearPercentIndicator(
                percent: .85,
                backgroundColor: Colors.blueGrey.withOpacity(.2),
                progressColor: Colors.teal.withOpacity(.6),
                barRadius: Radius.circular(20),
                lineHeight: 12,
                trailing: Text('125'),
                leading: Text('120'),

                animation: true,
                animationDuration: 1500,
                curve: Curves.easeOutBack,

                // footer: Padding(
                //   padding: const EdgeInsets.only(top:0.0),
                //   child: Text('Submited',
                //     style: TextStyle(
                //       fontWeight: FontWeight.w600,
                //       fontSize: 15,
                //       color: Colors.teal,
                //     ),
                //   ),
                // ),
              ),
            ),
          ],
        ),
      ),
    );

//
// Widget Build_Quiz_Data_Widget({
//   STU_Quiz_Model ?quiz,
//           List<bool>? quizState,
//           List<bool> ?isQuizStart,
//   int? index
// }) =>
//     Container(
//       padding: const EdgeInsetsDirectional.all(12),
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(15),
//           border: Border.all(color: Colors.blue)),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           const SizedBox(
//             height: 20,
//           ),
//           Text(
//             '${quiz?.title}',
//             style: TextStyle(
//                 fontWeight: FontWeight.w700, color: c1, fontSize: 17,
//             ),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           Text('10 Points',style: TextStyle( fontWeight: FontWeight.w400, color: c1, fontSize: 14),),
//           const SizedBox(
//             height: 20,
//           ),
//           ConditionalBuilder(
//               condition: quizState![index!],
//               builder: (context) =>  Container(
//             height: 40,
//             width: 180,
//             decoration: BoxDecoration(
//               color: Colors.blue,
//               borderRadius: BorderRadius.circular(15),
//             ),
//             child: Center(
//                 child:quiz?.status=='not Available'
//             ? const Text(
//                   'Waiting',
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 20),
//                 )
//                     : const Text(
//                   'Finished',
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 20),
//                 )),
//           ),
//
//               fallback: (context) => Column(
//                     children: [
//                       Text('From',style: TextStyle( fontWeight: FontWeight.w400, color: c1, fontSize: 14),),
//                       const SizedBox(height: 10),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//
//                           Container(
//                             height: 25,
//                             width: 60,
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(5),
//                                 border: Border.all(color: Colors.green)),
//                             child: const Center(child: Text('8:00')),
//                           ),
//                           const SizedBox(
//                             width: 10,
//                           ),
//                           Text('To',style: TextStyle( fontWeight: FontWeight.w400, color: c1, fontSize: 14),),
//                           const SizedBox(
//                             width: 10,
//                           ),
//                           Container(
//                             height: 25,
//                             width: 60,
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(5),
//                                 border: Border.all(color: Colors.red)),
//                             child: const Center(child: Text('10:00')),
//                           ),
//                         ],
//                       ),
//                       const SizedBox(height: 25,),
//                       Container(
//                         height: 40,
//                         width: 180,
//                         decoration: BoxDecoration(
//                           color: quiz?.status=='Available'
//                               ? Colors.green:Colors.blue,
//                           borderRadius: BorderRadius.circular(15),
//                         ),
//                         child: Center(
//                             child:quiz?.status=='Available'
//                             //isQuizStart[index]
//                                 ? TextButton(
//                                     onPressed: () {
//                                       navigateTo(
//                                           context, STU_Quizes_Ques_Screen());
//                                     },
//                                     child: const Text(
//                                       'Start',
//                                       style: TextStyle(
//                                           color: Colors.white,
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 20),
//                                     ),
//                                   )
//                                 : const Text(
//                                     'Waiting',
//                                     style: TextStyle(
//                                         color: Colors.white,
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 20),
//                                   )),
//                       ),
//                     ],
//                   )),
//         ],
//       ),
//     );

Widget Build_STU_Quiz_Ques({
  context,
  // List<String>? ques,
  // List<String>? answers,
  qIndex,
  Questions? questions,
}) =>
    Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Question',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              '${qIndex + 1}',
              style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
          ],
        ),
        const SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsetsDirectional.all(15),
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.blue),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  FontAwesomeIcons.circleInfo,
                  size: 22,
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Text(
                    '${questions?.text}',
                    maxLines: 5,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 30.0),
        ListView.builder(
          shrinkWrap: true,
          itemCount: questions?.answers?.length,
          itemBuilder: (context, index) {
            return RadioListTile(
              selectedTileColor: Colors.blue,
              title: Text(
                '${questions?.answers![index].text}',
                //App_cubit.get(context).stu_Quiz_Ques_options[index],
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              value: questions?.answers![index].id,
              //App_cubit.get(context).allquizAnswers[qIndex],
              groupValue: //'',//App_cubit.get(context).quizAnswerSelected,
                  App_cubit.get(context).allquizAnswers![qIndex],
              onChanged: (value) {
                print(App_cubit.get(context).allquizAnswers![qIndex]);
                print(('------${value}'));
                App_cubit.get(context).Quiz_Select_answer(qIndex, value);
//                App_cubit.get(context).allquizAnswers[qIndex]=App_cubit.get(context).quizAnswerSelected;
                print(App_cubit.get(context).allquizAnswers);
                print(App_cubit.get(context).allquizAnswers![qIndex]);
                print(
                  questions?.answers![index].id,
                );
              },
            );
          },
        ),
      ],
    );

// final GlobalKey<AnimatedListState> ANS_listKey = GlobalKey();

Widget INS_Quiz_Answer({required context, required index, required index2}) {
  // print('//////////////////////////////////////////////////////////////////');
  // print('element of Key of $index = ${App_cubit.get(context).ANS_listKey[index]}');
  // print('//////////////////////////////////////////////////////////////////');
  return Padding(
    padding: const EdgeInsets.only(left: 30.0, top: 5, bottom: 5),
    child: Row(
      children: [
        Expanded(
          child: Container(
            height: 60,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                  bottomRight: Radius.circular(35)),

              // color: Colors.blueGrey.withOpacity(.1),
              color: Colors.blue.withOpacity(.2),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TextFormField(
                keyboardType: TextInputType.text,
                maxLines: 1,
                controller: App_cubit.get(context).AController[index][index2],

                onFieldSubmitted: (value) {
                  print(value);
                },
                onChanged: (value) {
                  print(value);
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Answer can\'t be empty';
                  }
                  return null;
                },
                // toolbarOptions:
                //     ToolbarOptions(paste: true, copy: true),
                cursorColor: c1,
                style: const TextStyle(
                  fontSize: 20,
                ),
                decoration: InputDecoration(
                  prefixIcon: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      FaIcon(
                        FontAwesomeIcons.a,
                        color: c1.withOpacity(.6),
                        size: 20,
                      ),
                    ],
                  ),
                  suffixIcon: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      GestureDetector(
                        onTap: () {
                          App_cubit.get(context).Acheck_Function(index, index2);
                        },
                        child: FaIcon(
                          App_cubit.get(context).Acheck[index][index2]
                              ? FontAwesomeIcons.circleCheck
                              : FontAwesomeIcons.circleDot,
                          color: App_cubit.get(context).Acheck[index][index2]
                              ? Colors.teal
                              : Colors.blueGrey.withOpacity(.8),
                          size: 28,
                        ),
                      ),
                    ],
                  ),
                  hintText: 'Add Answer',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget Build_INS_Quiz_Ques(context, index, Animation<double> animation) {
  return SizeTransition(
    sizeFactor: animation,
    axis: Axis.vertical,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              'Question',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              '${index + 1}',
              style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 200,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                topRight: Radius.circular(30),
                bottomRight: Radius.circular(30)),

            // color: Colors.blueGrey.withOpacity(.1),
            color: Colors.blue.withOpacity(.3),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: TextFormField(
              keyboardType: TextInputType.text,
              maxLines: 5,
              controller: App_cubit.get(context).QController[index],

              onFieldSubmitted: (value) {
                print('onFieldSubmitted');
                // print(value);
              },
              onChanged: (value) {
                print('onChanged');
                // Q!.removeAt(index);
                // Q!.insert(index,value);
                // print(Q);
              },
              onTapOutside: (value) {
                print('onTapOutside');
                // print(value);
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Question can\'t be empty';
                }
                return null;
              },
              // toolbarOptions:
              //     ToolbarOptions(paste: true, copy: true),
              cursorColor: c1,
              style: const TextStyle(
                fontSize: 20,
              ),
              decoration: InputDecoration(
                prefixIcon: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    FaIcon(
                      FontAwesomeIcons.pencil,
                      color: c1.withOpacity(.6),
                      size: 30,
                    ),
                  ],
                ),
                hintText: 'Add Question',
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        const SizedBox(height: 15.0),
        Container(
          height: 280,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),

            // controller: controllerforlist,
            itemCount: 4,

            itemBuilder: (context, index2) =>
                INS_Quiz_Answer(index: index, context: context, index2: index2),
          ),
        ),
        // Container(
        //   height: 280,
        //   child: AnimatedList(
        //     physics: BouncingScrollPhysics(),
        //     key: App_cubit.get(context).ANS_listKey[index],
        //     // controller: controllerforlist,
        //     initialItemCount: App_cubit.get(context).AController[index].length,
        //     itemBuilder: (BuildContext context, int index2,
        //         Animation<double> animation) =>
        //         INS_Quiz_Answer(index: index,
        //           index2: index2,context: context,
        //             animation: animation),
        //   ),
        // ),
        // Padding(
        //   padding: const EdgeInsets.only(left: 30.0),
        //   child: Row(
        //     children: [
        //       Expanded(
        //         child: Container(
        //           height: 60,
        //           alignment: Alignment.center,
        //           decoration: BoxDecoration(
        //             borderRadius: BorderRadius.only(
        //                 bottomLeft: Radius.circular(35),
        //                 topRight: Radius.circular(35),
        //                 bottomRight: Radius.circular(35)),
        //
        //             // color: Colors.blueGrey.withOpacity(.1),
        //             color: Colors.blue.withOpacity(.2),
        //           ),
        //           child: Padding(
        //             padding: const EdgeInsets.symmetric(horizontal: 8.0),
        //             child: TextFormField(
        //               keyboardType: TextInputType.text,
        //               maxLines: 1,
        //
        //               onFieldSubmitted: (value) {
        //                 print(value);
        //               },
        //               onChanged: (value) {
        //                 print(value);
        //               },
        //               validator: (value) {
        //                 if (value!.isEmpty) {
        //                   return 'Question can\'t be empty';
        //                 }
        //                 return null;
        //               },
        //               // toolbarOptions:
        //               //     ToolbarOptions(paste: true, copy: true),
        //               cursorColor: c1,
        //               style: const TextStyle(
        //                 fontSize: 20,
        //               ),
        //               decoration: InputDecoration(
        //                 prefixIcon: Column(
        //                   children: [
        //                     SizedBox(
        //                       height: 15,
        //                     ),
        //                     FaIcon(
        //                       FontAwesomeIcons.a,
        //                       color: c1.withOpacity(.6),
        //                       size: 20,
        //                     ),
        //                   ],
        //                 ),
        //                 suffixIcon: Column(
        //                   children: [
        //                     SizedBox(
        //                       height: 15,
        //                     ),
        //                     GestureDetector(
        //                       onTap: () {},
        //                       child: FaIcon(
        //                         FontAwesomeIcons.circleCheck,
        //                         color: Colors.teal,
        //                         size: 28,
        //                       ),
        //                     ),
        //                   ],
        //                 ),
        //                 hintText: 'Add Answer',
        //                 border: InputBorder.none,
        //               ),
        //             ),
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        // SizedBox(
        //   height: 10,
        // ),
        // Padding(
        //   padding: const EdgeInsets.only(left: 30.0),
        //   child: Row(
        //     children: [
        //       Expanded(
        //         child: Container(
        //           height: 60,
        //           alignment: Alignment.center,
        //           decoration: BoxDecoration(
        //             borderRadius: BorderRadius.only(
        //                 bottomLeft: Radius.circular(35),
        //                 topRight: Radius.circular(35),
        //                 bottomRight: Radius.circular(35)),
        //
        //             // color: Colors.blueGrey.withOpacity(.1),
        //             color: Colors.blue.withOpacity(.2),
        //           ),
        //           child: Padding(
        //             padding: const EdgeInsets.symmetric(horizontal: 8.0),
        //             child: TextFormField(
        //               keyboardType: TextInputType.text,
        //               maxLines: 1,
        //
        //               onFieldSubmitted: (value) {
        //                 print(value);
        //               },
        //               onChanged: (value) {
        //                 print(value);
        //               },
        //               validator: (value) {
        //                 if (value!.isEmpty) {
        //                   return 'Question can\'t be empty';
        //                 }
        //                 return null;
        //               },
        //               // toolbarOptions:
        //               //     ToolbarOptions(paste: true, copy: true),
        //               cursorColor: c1,
        //               style: const TextStyle(
        //                 fontSize: 20,
        //               ),
        //               decoration: InputDecoration(
        //                 prefixIcon: Column(
        //                   children: [
        //                     SizedBox(
        //                       height: 15,
        //                     ),
        //                     FaIcon(
        //                       FontAwesomeIcons.b,
        //                       color: c1.withOpacity(.6),
        //                       size: 20,
        //                     ),
        //                   ],
        //                 ),
        //                 suffixIcon: Column(
        //                   children: [
        //                     SizedBox(
        //                       height: 15,
        //                     ),
        //                     GestureDetector(
        //                       onTap: () {},
        //                       child: FaIcon(
        //                         FontAwesomeIcons.circleDot,
        //                         color: Colors.black.withOpacity(.4),
        //                         size: 28,
        //                       ),
        //                     ),
        //                   ],
        //                 ),
        //                 hintText: 'Add Answer',
        //                 border: InputBorder.none,
        //               ),
        //             ),
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        // ConditionalBuilder(
        //     condition: App_cubit.get(context).more >= 3,
        //     builder: (context) => Padding(
        //           padding: const EdgeInsets.only(top: 10.0),
        //           child: Padding(
        //             padding: const EdgeInsets.only(left: 30.0),
        //             child: Row(
        //               children: [
        //                 Expanded(
        //                   child: Container(
        //                     height: 60,
        //                     alignment: Alignment.center,
        //                     decoration: BoxDecoration(
        //                       borderRadius: BorderRadius.only(
        //                           bottomLeft: Radius.circular(35),
        //                           topRight: Radius.circular(35),
        //                           bottomRight: Radius.circular(35)),
        //
        //                       // color: Colors.blueGrey.withOpacity(.1),
        //                       color: Colors.blue.withOpacity(.2),
        //                     ),
        //                     child: Padding(
        //                       padding:
        //                           const EdgeInsets.symmetric(horizontal: 8.0),
        //                       child: TextFormField(
        //                         keyboardType: TextInputType.text,
        //                         maxLines: 1,
        //
        //                         onFieldSubmitted: (value) {
        //                           print(value);
        //                         },
        //                         onChanged: (value) {
        //                           print(value);
        //                         },
        //                         validator: (value) {
        //                           if (value!.isEmpty) {
        //                             return 'Question can\'t be empty';
        //                           }
        //                           return null;
        //                         },
        //                         // toolbarOptions:
        //                         //     ToolbarOptions(paste: true, copy: true),
        //                         cursorColor: c1,
        //                         style: const TextStyle(
        //                           fontSize: 20,
        //                         ),
        //                         decoration: InputDecoration(
        //                           prefixIcon: Column(
        //                             children: [
        //                               SizedBox(
        //                                 height: 15,
        //                               ),
        //                               FaIcon(
        //                                 FontAwesomeIcons.c,
        //                                 color: c1.withOpacity(.6),
        //                                 size: 20,
        //                               ),
        //                             ],
        //                           ),
        //                           suffixIcon: Column(
        //                             children: [
        //                               SizedBox(
        //                                 height: 15,
        //                               ),
        //                               GestureDetector(
        //                                 onTap: () {},
        //                                 child: FaIcon(
        //                                   FontAwesomeIcons.circleDot,
        //                                   color: Colors.black.withOpacity(.4),
        //                                   size: 28,
        //                                 ),
        //                               ),
        //                             ],
        //                           ),
        //                           hintText: 'Add Answer',
        //                           border: InputBorder.none,
        //                         ),
        //                       ),
        //                     ),
        //                   ),
        //                 ),
        //               ],
        //             ),
        //           ),
        //         ),
        //     fallback: (context) => Container(
        //           height: 10,
        //         )),
        // ConditionalBuilder(
        //     condition: App_cubit.get(context).more == 4,
        //     builder: (context) => Padding(
        //           padding: const EdgeInsets.only(top: 10.0),
        //           child: Padding(
        //             padding: const EdgeInsets.only(left: 30.0),
        //             child: Row(
        //               children: [
        //                 Expanded(
        //                   child: Container(
        //                     height: 60,
        //                     alignment: Alignment.center,
        //                     decoration: BoxDecoration(
        //                       borderRadius: BorderRadius.only(
        //                           bottomLeft: Radius.circular(35),
        //                           topRight: Radius.circular(35),
        //                           bottomRight: Radius.circular(35)),
        //
        //                       // color: Colors.blueGrey.withOpacity(.1),
        //                       color: Colors.blue.withOpacity(.2),
        //                     ),
        //                     child: Padding(
        //                       padding:
        //                           const EdgeInsets.symmetric(horizontal: 8.0),
        //                       child: TextFormField(
        //                         keyboardType: TextInputType.text,
        //                         maxLines: 1,
        //
        //                         onFieldSubmitted: (value) {
        //                           print(value);
        //                         },
        //                         onChanged: (value) {
        //                           print(value);
        //                         },
        //                         validator: (value) {
        //                           if (value!.isEmpty) {
        //                             return 'Question can\'t be empty';
        //                           }
        //                           return null;
        //                         },
        //                         // toolbarOptions:
        //                         //     ToolbarOptions(paste: true, copy: true),
        //                         cursorColor: c1,
        //                         style: const TextStyle(
        //                           fontSize: 20,
        //                         ),
        //                         decoration: InputDecoration(
        //                           prefixIcon: Column(
        //                             children: [
        //                               SizedBox(
        //                                 height: 15,
        //                               ),
        //                               FaIcon(
        //                                 FontAwesomeIcons.d,
        //                                 color: c1.withOpacity(.6),
        //                                 size: 20,
        //                               ),
        //                             ],
        //                           ),
        //                           suffixIcon: Column(
        //                             children: [
        //                               SizedBox(
        //                                 height: 15,
        //                               ),
        //                               GestureDetector(
        //                                 onTap: () {},
        //                                 child: FaIcon(
        //                                   FontAwesomeIcons.circleDot,
        //                                   color: Colors.black.withOpacity(.4),
        //                                   size: 28,
        //                                 ),
        //                               ),
        //                             ],
        //                           ),
        //                           hintText: 'Add Answer',
        //                           border: InputBorder.none,
        //                         ),
        //                       ),
        //                     ),
        //                   ),
        //                 ),
        //               ],
        //             ),
        //           ),
        //         ),
        //     fallback: (context) => Container(
        //           height: 10,
        //         )),
        // SizedBox(
        //   height: 15,
        // ),
        // Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        //   IconButton(
        //       onPressed: () {
        //         App_cubit.get(context).minusmore(App_cubit.get(context).ANS_listKey[index],index);
        //       },
        //       icon: FaIcon(
        //         FontAwesomeIcons.circleMinus,
        //         color: Colors.redAccent.withOpacity(.8),
        //         size: 50,
        //       )),
        //   IconButton(
        //       onPressed: () {
        //         App_cubit.get(context).addmore(App_cubit.get(context).ANS_listKey[index],index);
        //       },
        //       icon: FaIcon(
        //         FontAwesomeIcons.circlePlus,
        //         color: Colors.teal.withOpacity(.8),
        //         size: 50,
        //       )),
        // ]),
        SizedBox(
          height: 25,
        ),
        Container(
          height: 1,
          color: Colors.blueGrey,
        ),

        // ListView.builder(
        //   shrinkWrap: true,
        //   itemCount: App_cubit.get(context).stu_Quiz_Ques_options.length,
        //   itemBuilder: (context, index) {
        //     return RadioListTile(
        //       selectedTileColor: Colors.blue,
        //       title: Text(
        //         App_cubit.get(context).stu_Quiz_Ques_options[index],
        //         style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        //       ),
        //       value: App_cubit.get(context).stu_Quiz_Ques_options[index],
        //       groupValue: App_cubit.get(context).selectedOption,
        //       onChanged: (value) {
        //         App_cubit.get(context).Quiz_Select_answer(value);
        //       },
        //     );
        //   },
        // ),
      ],
    ),
  );
}

//-----------grades-------------------------------
Widget Build_STU_All_grades(
  context,
  int index,
  List<int> grades,
) =>
    Container(
      padding:
          const EdgeInsets.only(bottom: 10, right: 20.0, top: 10, left: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Colors.blue,
            width: 1.5,
          )),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              // image: DecorationImage(
              //
              //     image: NetworkImage(
              //       '',
              //
              //     ),
              //     fit: BoxFit.cover
              // ),
              color: Colors.blueGrey.withOpacity(.8),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Parllel Programming ',
                  style: TextStyle(
                      fontWeight: FontWeight.w700, color: c1, fontSize: 17),
                ),
                Text(
                  'Dr : Amr massoud ',
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: c1, fontSize: 14),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 50,
          ),
          Container(
            alignment: AlignmentDirectional.center,
            child: Text(
              '${grades[index]}',
              style: Theme.of(context).textTheme.subtitle1?.copyWith(
                  color: grades[index] < 25
                      ? Colors.red
                      : grades[index] >= 25 && grades[index] < 40
                          ? Colors.orange
                          : Colors.green),
            ),
          ),
          const Spacer(),
          Container(
            alignment: AlignmentDirectional.centerEnd,
            child: const FaIcon(
              FontAwesomeIcons.circleRight,
              color: Colors.blueGrey,
              size: 30,
            ),
          )
        ],
      ),
    );

Widget Task_D({required Task? task})=>Padding(
  padding: const EdgeInsets.only(
      top: 10.0, right: 10, bottom: 3, left: 10),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text('Check Task'),
      SizedBox(
        height: 7,
      ),
      Container(
        color: Colors.black.withOpacity(.3),
        height: 1.5,
      ),
      Spacer(),
      Row(
        children: [
          FaIcon(
            FontAwesomeIcons.bookmark,
            size: 12,
          ),
          SizedBox(
            width: 7,
          ),
          Text(
            '${task?.courseCycle}',
            textAlign: TextAlign.start,
            style:
            TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
          ),
        ],
      ),
      SizedBox(
        height: 2,
      ),
      Row(
        children: [
          FaIcon(
            FontAwesomeIcons.user,
            size: 12,
          ),
          SizedBox(
            width: 7,
          ),
          Text(
            '${task?.instructor}',
            textAlign: TextAlign.start,
            style:
            TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
          ),
        ],
      ),
      SizedBox(
        height: 2,
      ),
      Row(
        children: [
          FaIcon(
            FontAwesomeIcons.chartLine,
            size: 12,
          ),
          SizedBox(
            width: 7,
          ),
          Text(
            '${task?.grade} points',
            textAlign: TextAlign.start,
            style:
            TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
          ),
        ],
      ),
      SizedBox(
        height: 2,
      ),
      Row(
        children: [
          FaIcon(
            FontAwesomeIcons.clock,
            size: 12,
          ),
          SizedBox(
            width: 7,
          ),
          Text(
            'Deadline ${DateTime.parse(task!.endDate!).day}/${DateTime.parse(task!.endDate!).month}',
            textAlign: TextAlign.start,
            style:
            TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
          ),
        ],
      ),
      SizedBox(
        height: 2,
      ),
      Row(
        children: [
          FaIcon(
            FontAwesomeIcons.clock,
            size: 12,
          ),
          SizedBox(
            width: 7,
          ),
          Text(
            'From ${DateTime.parse(task.startDate!).hour}/${DateTime.parse(task.endDate!).hour}',
            textAlign: TextAlign.start,
            style:
            TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
          ),
        ],
      ),
      Spacer(),
    ],
  ),
);
Widget Quiz_D({required Quiz? quiz})=>Padding(
  padding: const EdgeInsets.only(
      top: 10.0, right: 10, bottom: 3, left: 10),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text('Check Quiz'),
      SizedBox(
        height: 7,
      ),
      Container(
        color: Colors.black.withOpacity(.3),
        height: 1.5,
      ),
      Spacer(),
      Row(
        children: [
          FaIcon(
            FontAwesomeIcons.bookmark,
            size: 12,
          ),
          SizedBox(
            width: 7,
          ),
          Text(
            '${quiz?.courseCycle}',
            textAlign: TextAlign.start,
            style:
            TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
          ),
        ],
      ),
      SizedBox(
        height: 2,
      ),
      Row(
        children: [
          FaIcon(
            FontAwesomeIcons.user,
            size: 12,
          ),
          SizedBox(
            width: 7,
          ),
          Text(
            '${quiz?.instructor}',
            textAlign: TextAlign.start,
            style:
            TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
          ),
        ],
      ),
      SizedBox(
        height: 2,
      ),
      Row(
        children: [
          FaIcon(
            FontAwesomeIcons.chartLine,
            size: 12,
          ),
          SizedBox(
            width: 7,
          ),
          Text(
            '${quiz?.grade} points',
            textAlign: TextAlign.start,
            style:
            TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
          ),
        ],
      ),
      SizedBox(
        height: 2,
      ),
      Row(
        children: [
          FaIcon(
            FontAwesomeIcons.clock,
            size: 12,
          ),
          SizedBox(
            width: 7,
          ),
          Text(
            'Deadline ${DateTime.parse(quiz!.endDate!).day}/${DateTime.parse(quiz!.endDate!).month}',
            textAlign: TextAlign.start,
            style:
            TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
          ),
        ],
      ),
      SizedBox(
        height: 2,
      ),
      Row(
        children: [
          FaIcon(
            FontAwesomeIcons.clock,
            size: 12,
          ),
          SizedBox(
            width: 7,
          ),
          Text(
            'From ${DateTime.parse(quiz!.startDate!).day}/${DateTime.parse(quiz!.endDate!).month}',
            textAlign: TextAlign.start,
            style:
            TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
          ),
        ],
      ),
      Spacer(),
    ],
  ),
);


Widget Task_ins_D({required Dashboard_ins_model? task})=>Padding(
  padding: const EdgeInsets.only(
      top: 10.0, right: 10, bottom: 3, left: 10),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text('Check Task'),
      SizedBox(
        height: 7,
      ),
      Container(
        color: Colors.black.withOpacity(.3),
        height: 1.5,
      ),
      Spacer(),
      Row(
        children: [
          FaIcon(
            FontAwesomeIcons.bookmark,
            size: 12,
          ),
          SizedBox(
            width: 7,
          ),
          Expanded(
            child: Text(
              '${task?.name}',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
              style:
              TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 2,
      ),
      Row(
        children: [
          FaIcon(
            FontAwesomeIcons.user,
            size: 12,
          ),
          SizedBox(
            width: 7,
          ),
          Text(
            '${task?.instructorName}',
            textAlign: TextAlign.start,
            style:
            TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
          ),
        ],
      ),
      SizedBox(
        height: 2,
      ),
      Row(
        children: [
          FaIcon(
            FontAwesomeIcons.chartLine,
            size: 12,
          ),
          SizedBox(
            width: 7,
          ),
          Text(
            '${task?.grade} points',
            textAlign: TextAlign.start,
            style:
            TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
          ),
        ],
      ),
      SizedBox(
        height: 2,
      ),
      Row(
        children: [
          FaIcon(
            FontAwesomeIcons.clock,
            size: 12,
          ),
          SizedBox(
            width: 7,
          ),
          Text(
            'Deadline ${task?.endDate!.day}/${task?.endDate!.month}',
            textAlign: TextAlign.start,
            style:
            TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
          ),
        ],
      ),
      SizedBox(
        height: 2,
      ),
      Row(
        children: [
          FaIcon(
            FontAwesomeIcons.check,
            size: 12,
          ),
          SizedBox(
            width: 7,
          ),
          Text(
            '${task?.studentSubmissionCount} Submitted',
            textAlign: TextAlign.start,
            style:
            TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
          ),
        ],
      ),
      Spacer(),
    ],
  ),
);
Widget Quiz_ins_D({required Dashboard_ins_model? quiz})=>Padding(
  padding: const EdgeInsets.only(
      top: 10.0, right: 10, bottom: 3, left: 10),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text('Check Quiz'),
      SizedBox(
        height: 7,
      ),
      Container(
        color: Colors.black.withOpacity(.3),
        height: 1.5,
      ),
      Spacer(),
      Row(
        children: [
          FaIcon(
            FontAwesomeIcons.bookmark,
            size: 12,
          ),
          SizedBox(
            width: 7,
          ),
          Expanded(
            child: Text(
              '${quiz?.name}',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
              style:
              TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 2,
      ),
      Row(
        children: [
          FaIcon(
            FontAwesomeIcons.user,
            size: 12,
          ),
          SizedBox(
            width: 7,
          ),
          Text(
            '${quiz?.instructorName}',
            textAlign: TextAlign.start,
            style:
            TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
          ),
        ],
      ),
      SizedBox(
        height: 2,
      ),
      Row(
        children: [
          FaIcon(
            FontAwesomeIcons.chartLine,
            size: 12,
          ),
          SizedBox(
            width: 7,
          ),
          Text(
            '${quiz?.grade} points',
            textAlign: TextAlign.start,
            style:
            TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
          ),
        ],
      ),
      SizedBox(
        height: 2,
      ),
      Row(
        children: [
          FaIcon(
            FontAwesomeIcons.clock,
            size: 12,
          ),
          SizedBox(
            width: 7,
          ),
          Text(
            'Deadline ${quiz?.endDate!.day}/${quiz?.endDate!.month}',
            textAlign: TextAlign.start,
            style:
            TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
          ),
        ],
      ),
      SizedBox(
        height: 2,
      ),
      Row(
        children: [
          FaIcon(
            FontAwesomeIcons.check,
            size: 12,
          ),
          SizedBox(
            width: 7,
          ),
          Text(
            '${quiz?.studentSubmissionCount} Submitted',
            textAlign: TextAlign.start,
            style:
            TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
          ),
        ],
      ),
      Spacer(),
    ],
  ),
);
Widget News_D({required News_D_model? news})=>Padding(
  padding: const EdgeInsets.all(10.0),
  child: Row(
    children: [
      Expanded(
        child: ConditionalBuilder(
            condition: true,
            builder: (context) => Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 5.0),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          right: 10.0,
                          top: 15,
                          bottom: 15,
                          left: 10),
                      child: Text(
                        '${news!.content}',
                        // 'Congratulations, you have completed your registration ! Lets start your learning journey next.',

                        maxLines: 6,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                          color: c1.withOpacity(1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            fallback: (context) => const SizedBox(
              height: 0,
            )),
      ),
      Expanded(
        child: ConditionalBuilder(
            condition: news?.filePath !=null,
            builder: (context) => Padding(
              padding: const EdgeInsets.only(
                  left: 0, right: 0.0, top: 0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue[100],
                  image:  DecorationImage(
                    image: NetworkImage('${news!.filePath}'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            fallback: (context) => const SizedBox(
              height: 0,
            )),
      ),
    ],
  ),
);

//---------------------------INSTRUCTOR----------------
//------------------------------------------------------
//--------------------------------------------------------
var puttaskGradecontroller = TextEditingController();
Widget showSTU_UploadeTask({
  int? index,
  required context,
  InsStudentUplodeTaskModel? stuAssign,
  required String taskid,
}) =>
    Container(
      child: Row(
        children: [
          Text(
            '$index.  ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            '${stuAssign?.studentName}',
            style: TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),
          Spacer(),
          InkWell(
            onTap: () {
              showDialog<String>(
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
                                          height: 290,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 25.0,
                                                left: 25,
                                                right: 25,
                                                top: 20),
                                            child: Form(
                                              key: formkey1,
                                              child: Column(
                                                children: [
                                                  Text(
                                                    '${stuAssign?.studentName}',
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      // border: Border.all(color: Colors.white),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              18),
                                                      color: Colors.blueGrey
                                                          .withOpacity(.25),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Row(
                                                        children: [
                                                          SizedBox(
                                                            width: 8,
                                                          ),
                                                          FaIcon(
                                                              FontAwesomeIcons
                                                                  .clock),
                                                          SizedBox(
                                                            width: 10,
                                                          ),
                                                          Text(
                                                            '${stuAssign?.timeUploaded}',
                                                            style: TextStyle(
                                                              fontSize: 13,
                                                            ),
                                                          ),
                                                          Spacer(),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 15,
                                                  ),

                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: Container(
                                                          // width: 150,

                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  vertical: 5,
                                                                  horizontal:
                                                                      10),
                                                          alignment:
                                                              Alignment.center,
                                                          height: 60,
                                                          decoration:
                                                              BoxDecoration(
                                                            // border: Border.all(color: Colors.white),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        18),
                                                            color: Colors.white
                                                                .withOpacity(
                                                                    .5),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                        0.0),
                                                            child:
                                                                TextFormField(
                                                              controller:
                                                                  puttaskGradecontroller,
                                                              keyboardType:
                                                                  TextInputType
                                                                      .number,
                                                              onFieldSubmitted:
                                                                  (value) {
                                                                print(value);
                                                              },
                                                              //validator:
                                                              //     (value) {
                                                              //   if (value!
                                                              //       .isEmpty) {
                                                              //     return 'Event title can\'t be empty';
                                                              //   }
                                                              //   return null;
                                                              // },
                                                              // toolbarOptions:
                                                              //     ToolbarOptions(paste: true, copy: true),
                                                              cursorColor: c1,
                                                              style:
                                                                  const TextStyle(
                                                                fontSize: 18,
                                                              ),
                                                              decoration:
                                                                  InputDecoration(
                                                                prefixIcon:
                                                                    Padding(
                                                                  padding: const EdgeInsets
                                                                      .symmetric(
                                                                      horizontal:
                                                                          10.0,
                                                                      vertical:
                                                                          10),
                                                                  child: FaIcon(
                                                                    FontAwesomeIcons
                                                                        .solidEdit,
                                                                    color: c1,
                                                                    size: 25,
                                                                  ),
                                                                ),
                                                                hintText:
                                                                    'Points',
                                                                border:
                                                                    InputBorder
                                                                        .none,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      Expanded(
                                                        child: InkWell(
                                                          onTap: () {
                                                            App_cubit.get(
                                                                    context)
                                                                .openFile_Fun(
                                                                    networkFile: stuAssign
                                                                        ?.filePath
                                                                        ?.split(
                                                                            'net/')
                                                                        .last);
                                                          },
                                                          child: Container(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    vertical: 5,
                                                                    horizontal:
                                                                        10),
                                                            alignment: Alignment
                                                                .center,
                                                            height: 60,
                                                            decoration:
                                                                BoxDecoration(
                                                              // border: Border.all(color: Colors.white),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          18),
                                                              color: Colors
                                                                  .white
                                                                  .withOpacity(
                                                                      .5),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .symmetric(
                                                                      horizontal:
                                                                          0.0),
                                                              child: Container(
                                                                  child: Row(
                                                                children: [
                                                                  SizedBox(
                                                                    width: 8,
                                                                  ),
                                                                  FaIcon(FontAwesomeIcons
                                                                      .folderOpen),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  ),
                                                                  Text(
                                                                    'Open File',
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          18,
                                                                    ),
                                                                  ),
                                                                ],
                                                              )),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),

                                                  SizedBox(
                                                    height: 15,
                                                  ),

                                                  Default_Button(
                                                      onPressed: () {

                                                         print('ss');
                                                         App_cubit.get(context)?.PutgradeINSAssign(grade:int.parse(puttaskGradecontroller.text),examId:taskid ,studentId:stuAssign!.studentId );
                                                          Navigator.pop(
                                                              context);


                                                      },
                                                      containerHeight: 60,
                                                      textFontSize: 20,
                                                      text: 'Confirm changes'),
                                                  // SizedBox(
                                                  //   height: 15,
                                                  // ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        color: Colors.white.withOpacity(.5),
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
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.teal, width: 2)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 1.0, horizontal: 6),
                child: Text(
                  'more',
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
