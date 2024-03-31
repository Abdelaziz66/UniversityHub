
import 'dart:io';
import 'dart:ui';

import 'package:day_night_time_picker/lib/daynight_timepicker.dart';
import 'package:day_night_time_picker/lib/state/time.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';


import '../../../Shared/Component/component.dart';
import '../../../Shared/Cons_widget.dart';
import '../../../Shared/Cubit/App_cubit.dart';
import '../../../Shared/Cubit/App_state.dart';
import '../../../Shared/constant.dart';

class INS_About_Assign_Screen extends StatelessWidget {

  INS_About_Assign_Screen({super.key});

  var taskNamecontroller = TextEditingController();
 var taskGradecontroller = TextEditingController();
 var formkey1 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit,App_state>(
      listener:(context,stata){},
      builder: (context,state){
        App_cubit cubit=App_cubit.get(context);
        List<File> all_files=cubit.all_assign_files_List;
        Time _time = Time(hour: 11, minute: 30, second: 00000,);
        final List<String> images = [
          'https://images.unsplash.com/photo-1593642532842-98d0fd5ebc1a?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2250&q=80',
          'https://images.unsplash.com/photo-1612594305265-86300a9a5b5b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80',
          'https://images.unsplash.com/photo-1612626256634-991e6e977fc1?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1712&q=80',
          'https://images.unsplash.com/photo-1593642702749-b7d2a804fbcf?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=80'
        ];

        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    const SizedBox(height: 30,),
                    defaultAppbar(
                        text: cubit.currentCourseName,
                        context: context),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(.3),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child:Center(
                          child: Text(cubit.assignData['assignName'],
                          style: Theme.of(context).textTheme.subtitle1?.copyWith(
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left:0,top: 60,bottom: 15,right: 15),
                      child: SizedBox(
                        height:80,
                        child: Row(
                            children: [
                              Expanded(
                                child:
                                InkWell(
                                  onTap: (){
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
                                                                height: 350,
                                                                child: Padding(
                                                                  padding: const EdgeInsets
                                                                      .only(
                                                                      bottom: 25.0,
                                                                      left: 25,
                                                                      right: 25,
                                                                      top: 20
                                                                  ),
                                                                  child: Column(
                                                                    children: [
                                                                      Row(
                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                                        children: [
                                                                          FaIcon(FontAwesomeIcons.solidUser,color: Colors.teal,size: 18,),
                                                                          SizedBox(width: 15,),
                                                                          Container(
                                                                              child: Text(
                                                                                'Student name',
                                                                                textAlign: TextAlign.center,
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
                                                                      SizedBox(height: 20,),
                                                                      Container(
                                                                        height: 2,
                                                                        color: Colors.teal,
                                                                        width: double.infinity,

                                                                      ),
                                                                      SizedBox(height: 20,),

                                                                      Container(
                                                                        height: 150,
                                                                        child: ListView.separated(
                                                                            itemBuilder:(context,index)=> showSTU_UploadeTask(
                                                                              index: index+1,
                                                                              stuAssign: cubit.studentUplodeTaskModel[index]
                                                                            ),
                                                                          separatorBuilder: (context,index)=>  Container(
                                                                            height: 1,
                                                                            color: Colors.teal,
                                                                            width: double.infinity,

                                                                          ),
                                                                          itemCount: cubit.studentUplodeTaskModel.length,
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
                                  child: ClipRRect(
                                    child: BackdropFilter(
                                      filter:ImageFilter.blur(
                                          sigmaX: 10, sigmaY: 10, tileMode: TileMode.mirror),
                                      child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.grey.withOpacity(.2),
                                            borderRadius: BorderRadius.only(bottomLeft: Radius.zero,topLeft: Radius.zero,
                                              bottomRight:  Radius.circular(50),
                                              topRight:  Radius.circular(50),
                                            ),
                                          ),

                                          child:Padding(
                                            padding: const EdgeInsets.all( 20.0),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  child: Text('Send by ',textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: c1.withOpacity(.8),
                                                      fontSize: 23,
                                                      fontWeight: FontWeight.w900,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 120),
                                                FlutterImageStack(
                                                  showTotalCount: true,
                                                  totalCount: 10,
                                                  itemRadius: 30, // Radius of each images
                                                  itemCount: 3, // Maximum number of images to be shown in stack
                                                  itemBorderWidth: 3,
                                                  imageList: images,
                                                ),
                                              ],
                                            ),

                                          ),



                                      ),
                                    ),
                                  ),


                                ),

                              ),
                            ],
                          ),
                      ),
                    ),
                    const SizedBox(height: 50,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 350,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: .5),
                        ),
                        child: Padding(
                          padding:
                          const EdgeInsets.only(top: 10.0, right: 5, bottom: 10, left: 5),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text('Task data',
                                  style:TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                  )
                                  ),
                                  Spacer(),
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Container(
                                color: Colors.black.withOpacity(.3),
                                height: 1,
                              ),
                              SizedBox(
                                height: 40,
                              ),
                             Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 5.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(8),
                                          height: 50,
                                          decoration: BoxDecoration(
                                            // color: Colors.blueGrey.withOpacity(.05),
                                            borderRadius: BorderRadius.circular(20),
                                            border: Border.all(width: .5),
                                          ),
                                          child: Row(
                                            children: [
                                              FaIcon(
                                                FontAwesomeIcons.bookmark,
                                                size: 20,
                                              ),
                                              SizedBox(
                                                width: 7,
                                              ),
                                              Text(
                                                'Task name ',
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w700, fontSize: 15),
                                              ),

                                              Spacer(),
                                              Text(
                                                cubit.assignData['assignName'],
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w700, fontSize: 15),
                                              ),
                                              SizedBox(width: 15,),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(8),
                                          height: 50,
                                          decoration: BoxDecoration(
                                            // color: Colors.blueGrey.withOpacity(.05),
                                            borderRadius: BorderRadius.circular(20),
                                            border: Border.all(width: .5),
                                          ),
                                          child: Row(
                                            children: [
                                              FaIcon(
                                                FontAwesomeIcons.chartLine,
                                                size: 20,
                                              ),
                                              SizedBox(
                                                width: 7,
                                              ),
                                              Text(
                                                'Task grade',
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w700, fontSize: 15),
                                              ),
                                              Spacer(),
                                              Text(
                                                '5 points',
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w700, fontSize: 15),
                                              ),
                                              SizedBox(width: 15,),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(8),
                                          height: 50,
                                          decoration: BoxDecoration(
                                            // color: Colors.blueGrey.withOpacity(.05),
                                            borderRadius: BorderRadius.circular(20),
                                            border: Border.all(width: .5),
                                          ),
                                          child: Row(
                                            children: [
                                              FaIcon(
                                                FontAwesomeIcons.clock,
                                                size: 20,
                                              ),
                                              SizedBox(
                                                width: 7,
                                              ),
                                              Text(
                                                'Deadline',
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w700, fontSize: 15),
                                              ),
                                              Spacer(),
                                              Text(
                                                cubit.assignData['endDate'],
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w700, fontSize: 15),
                                              ),
                                              SizedBox(width: 15,),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                              InkWell(
                                onTap: (){
                                  print(cubit.assignId);
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
                                                              height: 350,
                                                              child: Padding(
                                                                padding: const EdgeInsets
                                                                    .only(
                                                                    bottom: 25.0,
                                                                    left: 25,
                                                                    right: 25,
                                                                    top: 20
                                                                ),
                                                                child: Form(
                                                                  key: formkey1,
                                                                  child: Column(
                                                                    children: [
                                                                      const Spacer(),
                                                                      SizedBox(
                                                                        height: 15,
                                                                      ),
                                                                      Container(
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
                                                                            taskNamecontroller,
                                                                            keyboardType:
                                                                            TextInputType
                                                                                .text,
                                                                            onFieldSubmitted:
                                                                                (value) {
                                                                              print(value);
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
                                                                                      .edit,
                                                                                  color: c1,
                                                                                  size: 25,
                                                                                ),
                                                                              ),
                                                                              hintText:
                                                                              'Task name',
                                                                              border:
                                                                              InputBorder
                                                                                  .none,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                SizedBox(
                                                                  height: 15,
                                                                ),
                                                                      Container(
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
                                                                           taskGradecontroller,
                                                                            keyboardType:
                                                                            TextInputType
                                                                                .text,
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
                                                                              'Task grade',
                                                                              border:
                                                                              InputBorder
                                                                                  .none,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        height: 15,
                                                                      ),
                                                                      Container(
                                                                        height: 50,
                                                                        child: Row(
                                                                          children: [
                                                                            Expanded(
                                                                                child: Default_Button(

                                                                                    color: Colors.red.withOpacity(.7),
                                                                                    onPressed: () {
                                                                                        showDatePicker(
                                                                                          context: context,
                                                                                          initialDate: DateTime.now(),
                                                                                          firstDate: DateTime(2022),
                                                                                          lastDate: DateTime(2025),
                                                                                          builder: (BuildContext context, Widget? child) {
                                                                                            return Theme(
                                                                                              data: ThemeData.light().copyWith(
                                                                                                colorScheme: ColorScheme.light().copyWith(
                                                                                                  primary: Colors.blue, // Change the primary color as needed
                                                                                                ),
                                                                                              ),
                                                                                              child: child!,
                                                                                            );
                                                                                          },
                                                                                        ).then((selectedDate) {
                                                                                          if (selectedDate != null) {
                                                                                            showTimePicker(
                                                                                              context: context,
                                                                                              initialTime: TimeOfDay.now(),
                                                                                            ).then((selectedTime) {
                                                                                              if (selectedTime != null) {
                                                                                                DateTime selectedDateTime = DateTime(
                                                                                                  selectedDate.year,
                                                                                                  selectedDate.month,
                                                                                                  selectedDate.day,
                                                                                                  selectedTime.hour,
                                                                                                  selectedTime.minute,
                                                                                                );
                                                                                                print('Selected date and time: $selectedDateTime');

                                                                                              }
                                                                                            });
                                                                                          }
                                                                                        });
                                                                                     // );
                                                                                    },
                                                                                    text: 'Change deadline',
                                                                                    textFontSize: 20)),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        height: 15,
                                                                      ),
                                                                      Default_Button(
                                                                          onPressed: () {
                                                                            // cubit.updateINSAssign(
                                                                            //   taskName: taskNamecontroller.text,
                                                                            //  // taskGrade: taskGradecontroller.text,
                                                                            // );
                                                                            Navigator.pop(context);
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
                                                                          containerHeight: 50,
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
                                },
                                child: Container(
                                  height: 45,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.blue.withOpacity(.6),
                                    borderRadius: BorderRadius.circular(12),
                                    // border: Border.all(width: .5),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Edit task data',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,fontSize: 20,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),

                    // Default_Button(onPressed: (){},text: 'Confirm changes'),

                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
