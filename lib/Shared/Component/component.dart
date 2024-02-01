import 'dart:ui';

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../Modules/instructor_Screens/Courses_Screens/Material_content_sec_or_lec.dart';
import '../Cons_widget.dart';
import '../Cubit/App_cubit.dart';
import '../constant.dart';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:mystore_app/modules/Doc_Eng_Screens/Courses_Screens/moreScreen.dart';

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
            border: Border.all(color: BorderColor!,style: BorderStyle.solid,width: BorderWidth!),
            // border: Border.all(color: c5!.withOpacity(.5),style: BorderStyle.solid,width: 1),
          ),
          child: widget,
        ),
      ),
    );

Widget Post() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 6.0),
    child: GlassBox(
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
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: c1,
                          backgroundImage: const NetworkImage(
                              'https://x-act.dk/wp-content/uploads/2020/05/stock-person-png-stock-photo-man-11563049686zqeb9zmqjd.png'),
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
                              const Text(
                                'Name Here',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Icon(
                                Icons.verified,
                                size: 18,
                                color: c4,
                              ),
                            ],
                          ),
                          const Text(
                            'Date & Time',
                            style: TextStyle(
                              // fontWeight: FontWeight.w800,

                              fontSize: 13,

                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: FaIcon(
                            FontAwesomeIcons.ellipsisVertical,
                            color: Colors.grey[300],
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
                            child: Text(
                              // 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.',
                              'Description', maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                                color: Colors.grey[300],
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
                    condition: true,
                    builder: (context) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Row(
                        children: [
                          MaterialButton(
                            onPressed: () {},
                            minWidth: 1,
                            padding: EdgeInsets.zero,
                            child: const Text(
                              '#Tag',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Colors.white,
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
                    condition: true,
                    builder: (context) => Padding(
                      padding: const EdgeInsets.only(
                          left: 0, right: 0.0, top: 5),
                      child: Container(
                        width: double.infinity,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2PacFBpXBfSh1aCipOEs5Wd0lJqAeBXbx2w&usqp=CAU',
                            ),
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
        color: c3.withOpacity(.2),
        borderRadius: 25,
        x: 0,
        y: 0),
  );
}

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

Widget Matrial_C({required index}) => GestureDetector(
  onTap: () {},
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: GlassBox(
        widget: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(
                FontAwesomeIcons.solidFolder,
                color: c1,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                'Lecture ${index + 1}',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: c2,
                ),
              ),
            ],
          ),
        ),
        color: c5.withOpacity(.3),
        borderRadius: 20,
        x: 50,
        y: 50),
  ),
);

Widget OngoingCourse_Card() => GlassBoxWithBorder(
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
            SizedBox(height: 1),
            Text(
              'DR : Amr Masoud',
              style: TextStyle(
                  fontWeight: FontWeight.w400, color: c1, fontSize: 14),
            ),
          ],
        ),
        Spacer(),
        Expanded(
          child: Container(
            alignment: AlignmentDirectional.centerEnd,
            child: FaIcon(
              FontAwesomeIcons.circleRight,
              color: Colors.teal,
              size: 30,
            ),
          ),
        ),
      ],
    ),
  ),
  color: Colors.blueGrey.withOpacity(.02),
  borderRadius: 20,
  x: 30,
  y: 30,
  BorderColor: Colors.blue,
  BorderWidth: 1.5,);

Widget Assignments_Card() => GlassBoxWithBorder(
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
            SizedBox(height: 1),
            Text(
              'DR : Amr Masoud',
              style: TextStyle(
                  fontWeight: FontWeight.w400, color: c1, fontSize: 14),
            ),
          ],
        ),
        Spacer(),
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
                SizedBox(
                  height: 8,
                ),
                Text(
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
  borderRadius: 20,
  x: 30,
  y: 30,
  BorderColor: Colors.blue,
  BorderWidth: 1.5,);

Widget Quizzes_Card() => GlassBoxWithBorder(
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
            SizedBox(height: 1),
            Text(
              'DR : Amr Masoud',
              style: TextStyle(
                  fontWeight: FontWeight.w400, color: c1, fontSize: 14),
            ),
          ],
        ),
        Spacer(),
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
                SizedBox(
                  height: 4,
                ),
                Text(
                  '7:30 PM',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.teal,
                      fontSize: 12),
                ),
                SizedBox(
                  height: 1,
                ),
                Text(
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
  borderRadius: 20,
  x: 30,
  y: 30,
  BorderColor: Colors.blue,
  BorderWidth: 1.5,
);

Widget Upcoming_Courses_Card() => GlassBoxWithBorder(
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
            SizedBox(height: 1),
            Text(
              'DR : Amr Masoud',
              style: TextStyle(
                  fontWeight: FontWeight.w400, color: c1, fontSize: 14),
            ),
          ],
        ),
        Spacer(),
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
                SizedBox(
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
  borderRadius: 20,
  x: 30,
  y: 30,
  BorderColor: Colors.blue,
  BorderWidth: 1.5,);

Widget element_in_drawer({required Function Function,required String text,required int D_value,required int index})=>     Padding(
  padding: const EdgeInsets.symmetric(horizontal: 8.0,),
  child: Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color:D_value==index? Colors.blue.withOpacity(.8):Colors.transparent,
    ),
    alignment: AlignmentDirectional.topStart,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          SizedBox(width: 10),
          FaIcon(
            FontAwesomeIcons.hatCowboy,
            size: 20,
            color:D_value==index? Colors.white:c1,

          ),
          SizedBox(
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
                color:D_value==index? Colors.white:c1,
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
    child: Center(
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
    child: Center(
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
                Text('Lec1'),
                Spacer(),
                DropdownButton<Widget>(
                  elevation: 20,
                  menuMaxHeight: 100,
                  alignment: AlignmentDirectional.topEnd,
                  borderRadius: BorderRadius.circular(5),
                  icon: Icon(Icons.more_vert),
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

            Expanded(
                child: Text(
                  'Cyber Security',
                  style: TextStyle(fontSize: 20),
                )),

            Expanded(
              child: Container(
                  child: Text(
                    'comment',
                    style: TextStyle(color: Colors.white),
                  )),
            ),

            //Spacer(),

            Container(child: Text('added at 12/11/2023')),
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
        padding: EdgeInsets.all(8),
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
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                    ),
                  ),
                )),
            SizedBox(
              height: 8,
            ),
            Text(
              file.name,
              style: TextStyle(
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
    padding: EdgeInsets.all(8),
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
                '.jpg',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                ),
              ),
            )),
        SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
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
            Spacer(),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.delete,
                  size: 18,
                )),
          ],
        ),
      ],
    ),
  );
}

Widget Build_Quezes_Ins(context) => Container(
    padding: EdgeInsetsDirectional.all(10),
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
            Text(
              'Quiz Status',
              style: TextStyle(fontSize: 15),
            ),
            Spacer(),
            DropdownButton<Widget>(
              elevation: 0,
              underline: Container(),
              menuMaxHeight: 100,
              alignment: AlignmentDirectional.topEnd,
              //qborderRadius: BorderRadius.circular(15),
              icon: Icon(Icons.more_vert),
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
        Center(
          child: Text(
            'Material name',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        Spacer(),
        Text('Start at : 20/10 at 3:30'),
        Text('Deadline : 30 minutes')
      ],
    ));

//------------------------------------------------
Widget Build_STU_Lec() => Container(
  height: 100,
  width: double.infinity,
  decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      border: Border.all(
        color: Colors.blue,
        width: 1.5,
      )),
  child: Padding(
    padding:
    const EdgeInsets.only(top: 20.0, bottom: 20, left: 10, right: 10),
    child: Row(
      children: [
        Container(
          height: 80,
          width: 100,
          // height: double.infinity,
          // width:double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: NetworkImage(
                    'https://th.bing.com/th/id/R.8a10e773efccd504248514e0ca6b0f7e?rik=Txi2Gf8RukK1lA&pid=ImgRaw&r=0',
                  ),
                  fit: BoxFit.cover)),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Parllel Programming ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              'Dr : Amr massoud ',
              style: TextStyle(
                //fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ],
        ),
        Spacer(),
        Container(
            height: 40,
            width: 65,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue),
            child: Icon(
              FontAwesomeIcons.arrowRight,
              color: Colors.white,
            ))
      ],
    ),
  ),
);

//--------------Assignments-----------------------------
Widget Build_STU_pend_Tasks() => Container(
    width: double.infinity,
    height: 76.95,
    decoration: ShapeDecoration(
      color: Color(0xFFFAFAFA),
      shape: RoundedRectangleBorder(
        side: BorderSide(width: 2),
        borderRadius: BorderRadius.circular(20),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Icon(
            FontAwesomeIcons.bookAtlas,
            size: 35,
          ),
          SizedBox(
            width: 35,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Parllel',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text('Deadline'),
                    Text(
                      '1 more day',
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: 85,
            height: double.infinity,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xFF3D5CFF),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                'Upload',
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
    height: 95,
    decoration: ShapeDecoration(
      color: Colors.green,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              width: 80,
              child: Text(
                'Material name',
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: 80,
              child: Text(
                'instructor name',
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 95,
                    height: 25,
                    child: Text(
                      'Assignment 1',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 25,
                    child: Text(
                      'Uploaded',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 25,
                    child: Text(
                      '20/1/2024',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
        padding: EdgeInsets.all(8),
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
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                    ),
                  ),
                )),
            SizedBox(
              height: 8,
            ),
            Text(
              file.name,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              fileSize,
              style: TextStyle(
                fontSize: 12,
                color:Colors.grey[700],
              ),
            ),
          ],
        ),

      ));
}
