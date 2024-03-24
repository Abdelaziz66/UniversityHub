
import 'dart:io';

import 'package:day_night_time_picker/lib/daynight_timepicker.dart';
import 'package:day_night_time_picker/lib/state/time.dart';
import 'package:file_picker/file_picker.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';


import '../../../Shared/Component/component.dart';
import '../../../Shared/Cons_widget.dart';
import '../../../Shared/Cubit/App_cubit.dart';
import '../../../Shared/Cubit/App_state.dart';
import '../../../Shared/constant.dart';

class INS_About_Assign_Screen extends StatelessWidget {
  INS_About_Assign_Screen({super.key});
  var taskNamecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit,App_state>(
      listener:(context,stata){},
      builder: (context,state){
        App_cubit cubit=App_cubit.get(context);
        List<File> all_files=cubit.all_assign_files_List;
        Time _time = Time(hour: 11, minute: 30, second: 00000,);

        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
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
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          border: Border.all(color: Colors.blueGrey!,
                               width: 2,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child:Center(
                          child: Text('Assign name',
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
                        height:500,
                        child: Column(children: [
                          Row(
                            children: [
                              Expanded(
                                child: InkWell(
                                  onTap: (){

                                  },
                                  child:
                                  // GlassBoxWithBorder_notification(
                                  //   widget: Padding(
                                  //     padding:
                                  //     const EdgeInsets.only(bottom: 14, right: 30.0, top: 14, left: 30),
                                  //     child: Row(
                                  //       mainAxisAlignment: MainAxisAlignment.start,
                                  //       crossAxisAlignment: CrossAxisAlignment.center,
                                  //       children: [
                                  //             Text(
                                  //               'Parallel Programming',
                                  //               style: TextStyle(
                                  //                   fontWeight: FontWeight.w700, color: c1, fontSize: 17),
                                  //             ),
                                  //         const Spacer(),
                                  //         Container(
                                  //           alignment: AlignmentDirectional.centerEnd,
                                  //           child: const FaIcon(
                                  //             FontAwesomeIcons.circleRight,
                                  //             color: Colors.teal,
                                  //             size: 30,
                                  //           ),
                                  //         ),
                                  //       ],
                                  //     ),
                                  //   ),
                                  //   color: Colors.blueGrey.withOpacity(.02),
                                  //   borderRadius: 30,
                                  //   x: 0,
                                  //   y: 0,
                                  //   BorderColor: Colors.blue,
                                  //   BorderWidth: 1.5,
                                  // ),

                                  Container(
                                    decoration: BoxDecoration(
                                      color:cubit.connnection? Colors.deepPurpleAccent.withOpacity(.25):Colors.grey.withOpacity(.25),
                                      borderRadius: BorderRadius.only(bottomLeft: Radius.zero,topLeft: Radius.zero,
                                      bottomRight:  Radius.circular(50),
                                      topRight:  Radius.circular(50),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all( 20.0),
                                          child: Container(
                                            child: Text('Send by ',textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: c1.withOpacity(.8),
                                                fontSize: 23,
                                                fontWeight: FontWeight.w900,
                                              ),
                                            ),
                                          ),

                                        ),
                                      ],
                                    ),
                                  ),

                                ),

                              ),
                              SizedBox(width: 10,),
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15,),
                          Row(
                            children: [
                              Expanded(
                                child: InkWell(
                                  onTap: (){

                                  },
                                  child:
                                  // GlassBoxWithBorder_notification(
                                  //   widget: Padding(
                                  //     padding:
                                  //     const EdgeInsets.only(bottom: 14, right: 30.0, top: 14, left: 30),
                                  //     child: Row(
                                  //       mainAxisAlignment: MainAxisAlignment.start,
                                  //       crossAxisAlignment: CrossAxisAlignment.center,
                                  //       children: [
                                  //             Text(
                                  //               'Parallel Programming',
                                  //               style: TextStyle(
                                  //                   fontWeight: FontWeight.w700, color: c1, fontSize: 17),
                                  //             ),
                                  //         const Spacer(),
                                  //         Container(
                                  //           alignment: AlignmentDirectional.centerEnd,
                                  //           child: const FaIcon(
                                  //             FontAwesomeIcons.circleRight,
                                  //             color: Colors.teal,
                                  //             size: 30,
                                  //           ),
                                  //         ),
                                  //       ],
                                  //     ),
                                  //   ),
                                  //   color: Colors.blueGrey.withOpacity(.02),
                                  //   borderRadius: 30,
                                  //   x: 0,
                                  //   y: 0,
                                  //   BorderColor: Colors.blue,
                                  //   BorderWidth: 1.5,
                                  // ),

                                  Container(
                                    decoration: BoxDecoration(
                                      color:cubit.connnection?Colors.pinkAccent.withOpacity(.18):Colors.grey.withOpacity(.25),
                                      borderRadius: BorderRadius.only(bottomLeft: Radius.zero,topLeft: Radius.zero,
                                        bottomRight:  Radius.circular(50),
                                        topRight:  Radius.circular(50),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all( 20.0),
                                          child: Container(
                                            child: Text('Task name',textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: c1.withOpacity(.8),
                                                fontSize: 23,
                                                fontWeight: FontWeight.w900,
                                              ),
                                            ),
                                          ),

                                        ),
                                      ],
                                    ),
                                  ),

                                ),

                              ),
                              SizedBox(width: 10,),
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15,),
                          Row(
                            children: [
                              Expanded(
                                child: InkWell(
                                  onTap: (){

                                  },
                                  child:
                                  // GlassBoxWithBorder_notification(
                                  //   widget: Padding(
                                  //     padding:
                                  //     const EdgeInsets.only(bottom: 14, right: 30.0, top: 14, left: 30),
                                  //     child: Row(
                                  //       mainAxisAlignment: MainAxisAlignment.start,
                                  //       crossAxisAlignment: CrossAxisAlignment.center,
                                  //       children: [
                                  //             Text(
                                  //               'Parallel Programming',
                                  //               style: TextStyle(
                                  //                   fontWeight: FontWeight.w700, color: c1, fontSize: 17),
                                  //             ),
                                  //         const Spacer(),
                                  //         Container(
                                  //           alignment: AlignmentDirectional.centerEnd,
                                  //           child: const FaIcon(
                                  //             FontAwesomeIcons.circleRight,
                                  //             color: Colors.teal,
                                  //             size: 30,
                                  //           ),
                                  //         ),
                                  //       ],
                                  //     ),
                                  //   ),
                                  //   color: Colors.blueGrey.withOpacity(.02),
                                  //   borderRadius: 30,
                                  //   x: 0,
                                  //   y: 0,
                                  //   BorderColor: Colors.blue,
                                  //   BorderWidth: 1.5,
                                  // ),

                                  Container(
                                    decoration: BoxDecoration(
                                      color:  Colors.greenAccent.withOpacity(.25),
                                      borderRadius: BorderRadius.only(bottomLeft: Radius.zero,topLeft: Radius.zero,
                                        bottomRight:  Radius.circular(50),
                                        topRight:  Radius.circular(50),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all( 20.0),
                                          child: Container(
                                            child: Text('Task grade',textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: c1.withOpacity(.8),
                                                fontSize: 23,
                                                fontWeight: FontWeight.w900,
                                              ),
                                            ),
                                          ),

                                        ),
                                      ],
                                    ),
                                  ),

                                ),

                              ),
                              SizedBox(width: 10,),
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15,),
                          Row(
                            children: [
                              Expanded(
                                child: InkWell(
                                  onTap: (){

                                  },
                                  child:
                                  // GlassBoxWithBorder_notification(
                                  //   widget: Padding(
                                  //     padding:
                                  //     const EdgeInsets.only(bottom: 14, right: 30.0, top: 14, left: 30),
                                  //     child: Row(
                                  //       mainAxisAlignment: MainAxisAlignment.start,
                                  //       crossAxisAlignment: CrossAxisAlignment.center,
                                  //       children: [
                                  //             Text(
                                  //               'Parallel Programming',
                                  //               style: TextStyle(
                                  //                   fontWeight: FontWeight.w700, color: c1, fontSize: 17),
                                  //             ),
                                  //         const Spacer(),
                                  //         Container(
                                  //           alignment: AlignmentDirectional.centerEnd,
                                  //           child: const FaIcon(
                                  //             FontAwesomeIcons.circleRight,
                                  //             color: Colors.teal,
                                  //             size: 30,
                                  //           ),
                                  //         ),
                                  //       ],
                                  //     ),
                                  //   ),
                                  //   color: Colors.blueGrey.withOpacity(.02),
                                  //   borderRadius: 30,
                                  //   x: 0,
                                  //   y: 0,
                                  //   BorderColor: Colors.blue,
                                  //   BorderWidth: 1.5,
                                  // ),

                                  Container(
                                    decoration: BoxDecoration(
                                      color:cubit.connnection? Colors.lightBlueAccent.withOpacity(.25):Colors.grey.withOpacity(.25),
                                      borderRadius: BorderRadius.only(bottomLeft: Radius.zero,topLeft: Radius.zero,
                                        bottomRight:  Radius.circular(50),
                                        topRight:  Radius.circular(50),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all( 20.0),
                                          child: Container(
                                            child: Text('Deadline',textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: c1.withOpacity(.8),
                                                fontSize: 23,
                                                fontWeight: FontWeight.w900,
                                              ),
                                            ),
                                          ),

                                        ),
                                      ],
                                    ),
                                  ),

                                ),

                              ),
                              SizedBox(width: 10,),
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),



                        ],),
                      ),
                    ),

                    Default_Button(onPressed: (){},text: 'Confirm changes'),

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
