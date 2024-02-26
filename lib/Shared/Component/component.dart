import 'dart:ui';

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:university_hup/Modules/Instructor/Courses_Screens/Material_content_sec_or_lec.dart';
import 'package:university_hup/Modules/Student/Student_Quizzes/STU_Quiz_Ques.dart';

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
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(borderRadius!),topRight: Radius.circular(borderRadius) ,topLeft: Radius.zero,bottomLeft:  Radius.circular(borderRadius)),
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
            gradient: const LinearGradient(
              colors: [
                // Colors.deepPurple.withOpacity(.7),
                // Colors.blueGrey.withOpacity(.5),
                // Colors.blue.withOpacity(.7)
                Colors.white,
                Colors.white,
              ],
            ),
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

Widget Post({required bool image,
  context
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
                            children: [
                              Text(
                                'Name Here',
                                style: Theme.of(context).textTheme.subtitle1?.copyWith(
                                  color: Colors.black,
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
                            'Date & Time',
                            style: TextStyle(
                              // fontWeight: FontWeight.w800,

                              fontSize: 13,

                              color: c1,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: FaIcon(
                            FontAwesomeIcons.ellipsisVertical,
                            color: c1,
                          )),
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
                                // 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.',
                                'Congratulations, you have completed your registration ! Lets start your learning journey next.',
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
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.deepPurple[200],
                          // image: const DecorationImage(
                          //   image: NetworkImage(
                          //     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2PacFBpXBfSh1aCipOEs5Wd0lJqAeBXbx2w&usqp=CAU',
                          //   ),
                          //   fit: BoxFit.cover,
                          // ),
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
                Text('Second Quiz',
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
                Text('9:00 AM - 10:00 AM',
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

Widget Calender_Item(
        {required Calender_Number,
        required Calender_Day,
        required bool iselected}) =>
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
      child: Container(
        alignment: AlignmentDirectional.center,
        width: 70,
        decoration: BoxDecoration(
          color: iselected ? Colors.black.withOpacity(.2) : Colors.transparent,
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
                      color:iselected?Colors.black.withOpacity(.9): Colors.black.withOpacity(.5),
                      fontWeight: FontWeight.w600,
                      fontSize: 30)),
              const SizedBox(
                height: 3,
              ),
              Text('${Calender_Day}',
                  style: TextStyle(
                      color: iselected?Colors.black.withOpacity(.9): Colors.black.withOpacity(.5),
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

Widget Matrial_C({required index}) => Padding(
  padding: const EdgeInsets.all(8.0),
  child: GlassBoxWithBorder(
      widget: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(
              FontAwesomeIcons.solidFolder,
              color: c1.withOpacity(.9),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              'Lecture ${index + 1}',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w700,
                color: c1,
              ),
            ),
          ],
        ),
      ),
      color: Colors.blueGrey.withOpacity(.01),
      borderRadius: 15,
      x: 100,
      y: 120,
    BorderColor: Colors.black.withOpacity(.3),
    BorderWidth: 1,
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

Widget BuildCoursesWidget(context) => InkWell(
      onTap: () {
        navigateTo(context, Show_Material_Lec_Or_Sec());
      },
      child: Container(
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.5),
              borderRadius: BorderRadius.circular(10)),
          height: 150,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    const Text('Lec1'),
                    const Spacer(),
                    DropdownButton<Widget>(
                      elevation: 20,
                      menuMaxHeight: 100,
                      alignment: AlignmentDirectional.topEnd,
                      borderRadius: BorderRadius.circular(5),
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
                        App_cubit.get(context)
                            .change_more_list_visible(newValue);
                      },
                    ),

                    // IconButton(

                    //   icon: Icon(Icons.more_vert),

                    //   onPressed: () {

                    //     navigateTo(context, MyDropDownMenu());

                    //     // AppCubit.get(context).change_more_list_visible();

                    //   },

                    // ),

                    //         Column(

                    //   children: [

                    //     // Your other widgets here

                    //     //         IconButton(

                    //     //   icon: Icon(Icons.more_vert),

                    //     //   onPressed: () {

                    //     //    //navigateTo(context, MoreIconScreen());

                    //     //     // AppCubit.get(context).change_more_list_visible();

                    //     //   },

                    //     // ),

                    //     // Visibility(

                    //     //   visible: AppCubit.get(context).isListVisible,

                    //     //   child: Expanded(

                    //     //     child: ListView(

                    //     //       children: [

                    //     //         // Your list items go here

                    //     //         ListTile(

                    //     //           leading: Icon(Icons.star),

                    //     //           title: Text('Star Icon'),

                    //     //         ),

                    //     //         ListTile(

                    //     //           leading: Icon(Icons.favorite),

                    //     //           title: Text('Favorite Icon'),

                    //     //         ),

                    //     //         ListTile(

                    //     //           leading: Icon(Icons.book),

                    //     //           title: Text('Book Icon'),

                    //     //         ),

                    //     //         // Add more items as needed

                    //     //       ],

                    //     //     ),

                    //     //   ),

                    //     // ),

                    //   ],

                    // ),

                    // IconButton(

                    //     onPressed: (){},

                    //     icon: Icon(Icons.more_vert))
                  ],
                ),

                const Expanded(
                    child: Text(
                  'Cyber Security',
                  style: TextStyle(fontSize: 20),
                )),

                Expanded(
                  child: Container(
                      child: const Text(
                    'comment',
                    style: TextStyle(color: Colors.white),
                  )),
                ),

                //Spacer(),

                Container(child: const Text('added at 12/11/2023')),
              ],
            ),
          )),
    );

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
      onTap: () => App_cubit.get(context).openFile_Fun(file),
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

Widget STU_Build_Lec_View_Widget(
    index,
    context,
    ) {
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

          ],
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
Widget Build_STU_Lec() => Container(
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
            width:50,
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
                image: AssetImage('assets/images/bc5.png'),
                fit: BoxFit.cover,
              ),
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
                      fontWeight: FontWeight.w700, color: c1, fontSize: 17
                  ),
                ),
                Text(
                  'Dr : Amr massoud ',
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: c1, fontSize: 14
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Container(
            alignment: AlignmentDirectional.centerEnd,
            child: const FaIcon(
              FontAwesomeIcons.circleRight,
              color: Colors.teal,
              size: 35,
            ),
          ),
        ],
      ),
    );



//--------------Assignments-----------------------------
Widget Build_STU_pend_Tasks() => Container(
    width: double.infinity,
    height: 76.95,
    decoration: ShapeDecoration(
      shape: RoundedRectangleBorder(
        side: const BorderSide(
            color: Colors.blue,
            width: 2),
        borderRadius: BorderRadius.circular(15),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Container(

            height: 50,
            width:50,
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
                style: TextStyle( fontWeight: FontWeight.w700, color: c1, fontSize: 17),
              ),
              Row(
                children: [
                  Text('Deadline', style: TextStyle(
                    fontWeight: FontWeight.w400, color: c1, fontSize: 14,
                  ),),
                  const SizedBox(width: 3,),
                  const Text(
                    '1 more day',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.red, fontSize: 14,
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
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(
              child: Text(
                'more',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    ));

//----------------------------------------

Widget Build_STU_complete_Tasks() => Container(
    width: double.infinity,
    height: 76.95,
    decoration: ShapeDecoration(
      shape: RoundedRectangleBorder(
        side: const BorderSide(
            color: Colors.blue,
            width: 2),
        borderRadius: BorderRadius.circular(15),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Container(

            height: 50,
            width:50,
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
                style: TextStyle( fontWeight: FontWeight.w700, color: c1, fontSize: 17),
              ),
              Row(
                children: [
                  Text('Completed', style: TextStyle(
                    fontWeight: FontWeight.w400, color: c1, fontSize: 14,
                  ),),
                  const SizedBox(width: 3,),
                  Text(
                    '3/4/2024',
                    style: TextStyle(
                      fontWeight: FontWeight.w500, color: c1, fontSize: 14,
                    ),
                  )
                ],
              ),
            ],
          ),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: FaIcon(FontAwesomeIcons.circleCheck,size: 35,color: Colors.green,),
          ),

        ],
      ),
    ));

Widget BuildAssignFileViewWidget(
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
      onTap: () => App_cubit.get(context).openFile_Fun(file),
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
      ));
}

Widget Build_Quiz_Data_Widget(
        List<bool> quizState, List<bool> isQuizStart, int index) =>
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
            'Parallel programming Quiz 1',
            style: TextStyle(
                fontWeight: FontWeight.w700, color: c1, fontSize: 17,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text('10 Points',style: TextStyle( fontWeight: FontWeight.w400, color: c1, fontSize: 14),),
          const SizedBox(
            height: 20,
          ),
          ConditionalBuilder(
              condition: quizState[index],
              builder: (context) =>  Container(
            height: 40,
            width: 180,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
                child: isQuizStart[index]
                    ? const Text(
                  'Finished',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                )
                    : const Text(
                  'Waiting',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                )),
          ),

              fallback: (context) => Column(
                    children: [
                      Text('From',style: TextStyle( fontWeight: FontWeight.w400, color: c1, fontSize: 14),),
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
                            child: const Center(child: Text('8:00')),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text('To',style: TextStyle( fontWeight: FontWeight.w400, color: c1, fontSize: 14),),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 25,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.red)),
                            child: const Center(child: Text('10:00')),
                          ),
                        ],
                      ),
                      const SizedBox(height: 25,),
                      Container(
                        height: 40,
                        width: 180,
                        decoration: BoxDecoration(
                          color: isQuizStart[index]
                              ? Colors.green:Colors.blue,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                            child: isQuizStart[index]
                                ? TextButton(
                                    onPressed: () {
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

Widget Build_STU_Quiz_Ques(
        context, List<String> ques, List<String> answers, index) =>
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
            const SizedBox(width: 5,),
            Text(
              '${index + 1}',
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.blue
              ),
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

                const Icon(FontAwesomeIcons.circleInfo,size: 22,),
                const SizedBox(width: 10,),
                Expanded(
                  child: Text(
                    '${ques[index]}',
                    maxLines: 5,

                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 30.0),
        ListView.builder(
          shrinkWrap: true,
          itemCount: App_cubit.get(context).stu_Quiz_Ques_options.length,
          itemBuilder: (context, index) {
            return RadioListTile(
              selectedTileColor: Colors.blue,
              title: Text(
                App_cubit.get(context).stu_Quiz_Ques_options[index],
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              value: App_cubit.get(context).stu_Quiz_Ques_options[index],
              groupValue: App_cubit.get(context).selectedOption,
              onChanged: (value) {
                App_cubit.get(context).Quiz_Select_answer(value);
              },
            );
          },
        ),
      ],
    );


Widget Build_INS_Quiz_Ques(
    context, List<String> ques, List<String> answers, index) {

  return     Column(
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
          const SizedBox(width: 5,),
          Text(
            '${index + 1}',
            style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.blue
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 25,
      ),
      Container(
        height: 200,
        alignment: Alignment.center,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(35),topRight:  Radius.circular(35),bottomRight:  Radius.circular(35)),

          // color: Colors.blueGrey.withOpacity(.1),
          color:Colors.blue.withOpacity(.3),
        ),
        child: Padding(
          padding:
          const EdgeInsets.symmetric(horizontal: 8.0),
          child: TextFormField(

            keyboardType: TextInputType.text,
            maxLines: 5,

            onFieldSubmitted: (value) {
              print(value);
            },
            onChanged: (value) {
              print(value);
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
                  SizedBox(height: 15,),



                  FaIcon(
                    FontAwesomeIcons.pencil ,
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
      Padding(
        padding: const EdgeInsets.only(left: 30.0),
        child: Row(
          children: [

            Expanded(
              child: Container(
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(35),topRight:  Radius.circular(35),bottomRight:  Radius.circular(35)),

                  // color: Colors.blueGrey.withOpacity(.1),
                  color:Colors.blue.withOpacity(.2),
                ),
                child:Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextFormField(

                    keyboardType: TextInputType.text,
                    maxLines: 1,

                    onFieldSubmitted: (value) {
                      print(value);
                    },
                    onChanged: (value) {
                      print(value);
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
                        children: [
                          SizedBox(height: 15,),
                          FaIcon(
                            FontAwesomeIcons.pencil ,
                            color: c1.withOpacity(.6),
                            size: 20,

                          ),
                        ],
                      ),
                      suffixIcon:Column(
                        children: [
                          SizedBox(height: 15,),
                          GestureDetector(
                            onTap: (){

                            },
                            child: FaIcon(
                              FontAwesomeIcons.circleCheck ,
                              color: Colors.teal,
                              size: 28,

                            ),
                          ),
                        ],
                      ) ,

                      hintText: 'Add Answer',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: 10,),
      Padding(
        padding: const EdgeInsets.only(left: 30.0),
        child: Row(
          children: [

            Expanded(
              child: Container(
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(35),topRight:  Radius.circular(35),bottomRight:  Radius.circular(35)),

                  // color: Colors.blueGrey.withOpacity(.1),
                  color:Colors.blue.withOpacity(.2),
                ),
                child:Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextFormField(

                    keyboardType: TextInputType.text,
                    maxLines: 1,

                    onFieldSubmitted: (value) {
                      print(value);
                    },
                    onChanged: (value) {
                      print(value);
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
                        children: [
                          SizedBox(height: 15,),
                          FaIcon(
                            FontAwesomeIcons.pencil ,
                            color: c1.withOpacity(.6),
                            size: 20,

                          ),
                        ],
                      ),
                      suffixIcon:Column(
                        children: [
                          SizedBox(height: 15,),
                          GestureDetector(
                            onTap: (){

                            },
                            child: FaIcon(
                              FontAwesomeIcons.circleXmark ,
                              color: Colors.red,
                              size: 28,

                            ),
                          ),
                        ],
                      ) ,

                      hintText: 'Add Answer',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      ConditionalBuilder(condition: App_cubit.get(context).more>=3, builder: (context) => Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child:  Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Row(
            children: [

              Expanded(
                child: Container(
                  height: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(35),topRight:  Radius.circular(35),bottomRight:  Radius.circular(35)),

                    // color: Colors.blueGrey.withOpacity(.1),
                    color:Colors.blue.withOpacity(.2),
                  ),
                  child:Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 8.0),
                    child: TextFormField(

                      keyboardType: TextInputType.text,
                      maxLines: 1,

                      onFieldSubmitted: (value) {
                        print(value);
                      },
                      onChanged: (value) {
                        print(value);
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
                          children: [
                            SizedBox(height: 15,),
                            FaIcon(
                              FontAwesomeIcons.pencil ,
                              color: c1.withOpacity(.6),
                              size: 20,

                            ),
                          ],
                        ),
                        suffixIcon:Column(
                          children: [
                            SizedBox(height: 15,),
                            GestureDetector(
                              onTap: (){

                              },
                              child: FaIcon(
                                FontAwesomeIcons.circleXmark ,
                                color: Colors.red,
                                size: 28,

                              ),
                            ),
                          ],
                        ) ,

                        hintText: 'Add Answer',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ), fallback: (context) => Container(height: 10,)),
      ConditionalBuilder(condition: App_cubit.get(context).more==4, builder: (context) => Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child:  Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Row(
            children: [

              Expanded(
                child: Container(
                  height: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(35),topRight:  Radius.circular(35),bottomRight:  Radius.circular(35)),

                    // color: Colors.blueGrey.withOpacity(.1),
                    color:Colors.blue.withOpacity(.2),
                  ),
                  child:Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 8.0),
                    child: TextFormField(

                      keyboardType: TextInputType.text,
                      maxLines: 1,

                      onFieldSubmitted: (value) {
                        print(value);
                      },
                      onChanged: (value) {
                        print(value);
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
                          children: [
                            SizedBox(height: 15,),
                            FaIcon(
                              FontAwesomeIcons.pencil ,
                              color: c1.withOpacity(.6),
                              size: 20,

                            ),
                          ],
                        ),
                        suffixIcon:Column(
                          children: [
                            SizedBox(height: 15,),
                            GestureDetector(
                              onTap: (){

                              },
                              child: FaIcon(
                                FontAwesomeIcons.circleXmark ,
                                color: Colors.red,
                                size: 28,

                              ),
                            ),
                          ],
                        ) ,

                        hintText: 'Add Answer',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ), fallback: (context) => Container(height: 10,)),
      SizedBox(height: 15,),
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(onPressed: (){

              App_cubit.get(context).minusmore();
            }, icon: FaIcon(FontAwesomeIcons.circleMinus,color: Colors.redAccent.withOpacity(.8),size: 50,)),
            IconButton(onPressed: (){

              App_cubit.get(context).addmore();
            }, icon: FaIcon(FontAwesomeIcons.circlePlus,color: Colors.teal.withOpacity(.8),size: 50,)),

          ]
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
  );
}



//-----------grades-------------------------------
Widget Build_STU_All_grades(
    context,
    int index,
    List <int> grades
    ,
    ) => Container(
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
        width:50,
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
                  fontWeight: FontWeight.w700, color: c1, fontSize: 17
              ),
            ),
            Text(
              'Dr : Amr massoud ',
              style: TextStyle(
                  fontWeight: FontWeight.w400, color: c1, fontSize: 14
              ),
            ),
          ],
        ),
      ),
      const SizedBox(
        width: 50,
      ),

      Container(
        alignment: AlignmentDirectional.center,
        child: Text('${grades[index]}',
        style: Theme.of(context).textTheme
            .subtitle1?.copyWith
          (
            color: grades[index]<25?Colors.red
                :grades[index]>=25&&grades[index]<40?Colors.orange
                :Colors.green
         ),
        ),
      ),
      const Spacer(),

      Container(
    alignment: AlignmentDirectional.centerEnd,
    child: const FaIcon(
      FontAwesomeIcons.circleRight,
      color: Colors.blueGrey,
      size: 30,
    ),)
    ],
  ),
);


