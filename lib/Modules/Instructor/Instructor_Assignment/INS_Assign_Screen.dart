
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:day_night_time_picker/lib/daynight_timepicker.dart';
import 'package:day_night_time_picker/lib/state/time.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:university_hup/Models/STU_Model/CourseModel/STU_Course_Assign_Model.dart';
import 'package:university_hup/Modules/Instructor/Instructor_Assignment/INS_Add_Assign_Screen.dart';
import 'package:university_hup/Modules/Instructor/Instructor_Assignment/INS_Add_assignment_Screen.dart';

import 'package:university_hup/Modules/Student/Student_Assignment/STU_About_Assign_Screen.dart';

import 'package:university_hup/Shared/Component/component.dart';
import 'package:university_hup/Shared/Cons_widget.dart';
import 'package:university_hup/Shared/Cubit/App_cubit.dart';
import 'package:university_hup/Shared/Cubit/App_state.dart';
import 'package:university_hup/Shared/constant.dart';

import '../../../Models/INS_Model/INS_Assign_Model.dart';

import 'INS_About_Assign_Screen.dart';



class INS_Assign_Screen extends StatelessWidget {
   INS_Assign_Screen({Key? key}) : super(key: key);
    var scafoldkey3 = GlobalKey<ScaffoldState>();



  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit, App_state>(
      listener: (context, state) {},
      builder: (context, state) {
        App_cubit cubit=App_cubit.get(context);
        bool isvisbile=false;
        Time _time = Time(hour: 11, minute: 30, second: 20);
        List<STU_Course_Assign_Model> insAssign=cubit.insCoursesAssignModel;
        return Scaffold(
          key: scafoldkey3,

          floatingActionButton:
          cubit.pend?Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 8),
            child: FloatingActionButton(
              onPressed: (){
                cubit.all_assign_files_List=[];
                navigateTo(context, INS_add_assignment());
              },
              child: FaIcon(FontAwesomeIcons.plus),

            ),
          ):SizedBox(),
          body: SafeArea(
              child: Column(
                children: [
                  const SizedBox(height: 30,),
                  defaultAppbar(context:context),
                  const SizedBox(height: 30,),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  //   child: GlassBox(
                  //       widget: Padding(
                  //         padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 15),
                  //         child: Row(
                  //           mainAxisAlignment: MainAxisAlignment.center,
                  //           children: [
                  //
                  //
                  //             FaIcon(
                  //               FontAwesomeIcons.featherPointed,
                  //               color: c1.withOpacity(.9),
                  //             ),
                  //             const SizedBox(
                  //               width: 10,
                  //             ),
                  //             Text(
                  //               'Assignments',
                  //               style: TextStyle(
                  //                 fontSize: 17,
                  //                 fontWeight: FontWeight.w700,
                  //                 color: c1,
                  //               ),
                  //             ),
                  //             Spacer(),
                  //             FaIcon(
                  //               FontAwesomeIcons.angleRight,
                  //               color: c1.withOpacity(.9),
                  //             ),
                  //             Spacer(),
                  //             FaIcon(
                  //               Icons.add_task,
                  //               color: c1.withOpacity(.9),
                  //             ),
                  //             const SizedBox(
                  //               width: 10,
                  //             ),
                  //             Text(
                  //               'State',
                  //               style: TextStyle(
                  //                 fontSize: 17,
                  //                 fontWeight: FontWeight.w700,
                  //                 color: c1,
                  //               ),
                  //             ),
                  //           ],
                  //         ),
                  //       ),
                  //       color: Colors.blueGrey.withOpacity(.15),
                  //       borderRadius: 15,
                  //       x: 0,
                  //       y: 0
                  //   ),
                  // ),
                  // SizedBox(height: 15,),
                  // Stack(
                  //  alignment: Alignment.topRight,
                  //   children:[
                  //     Container(
                  //       height: 250,
                  //       width: double.infinity,
                  //       decoration: BoxDecoration(
                  //         color: Colors.blue,
                  //         borderRadius: BorderRadius.circular(15),
                  //       ),
                  //     ),
                  //     CircleAvatar(
                  //        radius:50,
                  //         backgroundColor:Colors.white,
                  //     ),
                  //     Positioned(
                  //         child: BackdropFilter(
                  //           blendMode: BlendMode.hardLight,
                  //           filter: ImageFilter.blur(sigmaX: 120, sigmaY: 120),
                  //           child:
                  //             Container(
                  //             height: 250,
                  //             width: double.infinity,
                  //             decoration: BoxDecoration(
                  //                 // gradient:RadialGradient(
                  //                 //   radius:.7,
                  //                 //   center:Alignment.topRight ,
                  //                 //  colors: [
                  //                 //       Colors.white,
                  //                 //       Colors.blue,
                  //                 //     ],
                  //                 // ),
                  //
                  //             color: Colors.blue,
                  //               borderRadius: BorderRadius.circular(15),
                  //             ),
                  //           ),
                  //         )),
                  //
                  //
                  //   ]
                  // )
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                       height: 200,
                      // width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: const RadialGradient(
                          radius: 1.1,
                          center: Alignment.topRight,
                          colors: [
                            Colors.blue,
                            Colors.indigo
                            //HexColor('051875FF'),
                          ],
                        ),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'You are a super warrior !',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 17),
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  children: [
                                    Container(
                                      height: 18,
                                      width: 18,
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: const Icon(
                                        FontAwesomeIcons.check,
                                        size: 14,
                                        color: Colors.indigo,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      '4 task Running',
                                      style: TextStyle(
                                          color: Colors.grey[300], fontSize: 14,fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 18,
                                      width: 18,
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: const Icon(
                                        FontAwesomeIcons.check,
                                        size: 14,
                                        color: Colors.indigo,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      '7 task completed',
                                      style: TextStyle(
                                          color: Colors.grey[300], fontSize: 14,fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 8,
                                ),

                                Row(
                                  children: [
                                    Container(
                                      height: 18,
                                      width: 18,
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: const Icon(
                                        FontAwesomeIcons.check,
                                        size: 14,
                                        color: Colors.indigo,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      '6 task received to day',
                                      style: TextStyle(
                                          color: Colors.grey[300], fontSize: 14,fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Expanded(
                              child: Image(
                                image: AssetImage('assets/images/R.png'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 10, right: 15),
                    child: Container(
                      height: 70,
                      child: Row(
                        children: [
                          Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  cubit.pend_Complete_Function(pe: true);
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: cubit.pend ? Colors.blue :  c1.withOpacity(.8),

                                    boxShadow: [BoxShadow(color:cubit.pend ? Colors.grey: Colors.white,
                                      spreadRadius: 1,
                                      blurRadius: 7,

                                    )],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Center(
                                      child: Text(
                                        'Pending',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: cubit.pend ? c5 : c5,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )),
                          const SizedBox(
                            width: 15,
                          ),
                          Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  cubit.pend_Complete_Function(pe: false);
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: cubit.pend ? c1.withOpacity(.8):Colors.blue ,

                                    boxShadow: [BoxShadow(color:cubit.pend ? Colors.white: Colors.grey,
                                      spreadRadius: 1,
                                      blurRadius: 7,

                                    )],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Center(
                                      child: Text(
                                        'Completed',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: cubit.pend ? c5 : c5,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 20,),
                  Expanded(
                    child: ConditionalBuilder(condition: cubit.pend,
                      builder: (context) =>Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                            child: ListView.separated(
                              physics:  BouncingScrollPhysics(),
                              itemBuilder:(context,index)=>InkWell(
                                  onTap: (){
                                   // cubit.all_assign_files_List=[];
                                    //cubit.assignFile=null;
                                    cubit.assignId=insAssign[index].taskId;
                                    cubit.assignData.addAll({
                                      'assignName':insAssign[index].taskName,
                                      'startDate':insAssign[index].startDate,
                                      'endDate':insAssign[index].endDate,
                                      'filePath':insAssign[index].filePath,
                                    });
                                    cubit.insGetStuUploadTasks(assignId:insAssign[index].taskId );
                                    navigateTo(context,INS_About_Assign_Screen() );
                                  },
                                  child: Build_STU_pend_Tasks(assign: insAssign[index],)),
                              separatorBuilder: (context,index)=>const SizedBox(height: 10,),
                              itemCount: insAssign.length,
                            ),
                    
                      ) ,
                      fallback: (context) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: ListView.separated(
                            physics: const BouncingScrollPhysics(),
                            itemBuilder:(context,index)=>InkWell(
                                onTap: (){
                                  // navigateTo(context,STU_Assign_Screen() );
                                },
                                child: Build_INS_complete_Tasks()),
                            separatorBuilder: (context,index)=>const SizedBox(height: 10,),
                            itemCount: 2,
                          ),
                        
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),

                ],
              ),
            ),

        );
      },
    );
  }
}
