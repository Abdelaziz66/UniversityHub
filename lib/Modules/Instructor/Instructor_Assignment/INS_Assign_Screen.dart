
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:day_night_time_picker/lib/daynight_timepicker.dart';
import 'package:day_night_time_picker/lib/state/time.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:university_hup/Models/STU_Model/CourseModel/stuAssignAdapter/STU_Course_Assign_Model.dart';
import 'package:university_hup/Modules/Instructor/Instructor_Assignment/INS_Add_Assign_Screen.dart';
import 'package:university_hup/Modules/Instructor/Instructor_Assignment/INS_Add_assignment_Screen.dart';

import 'package:university_hup/Modules/Student/Student_Assignment/STU_About_Assign_Screen.dart';

import 'package:university_hup/Shared/Component/component.dart';
import 'package:university_hup/Shared/Cons_widget.dart';
import 'package:university_hup/Shared/Cubit/App_cubit.dart';
import 'package:university_hup/Shared/Cubit/App_state.dart';
import 'package:university_hup/Shared/constant.dart';

import '../../../Models/INS_Model/INS_Assign_Model.dart';

import '../../../Models/INS_Model/INS_Course_Assign_Model.dart';
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

        return DefaultTabController(
          length: 2, // Number of tabs
          initialIndex: cubit.Tab_Bar_1_index,
          child: Scaffold(
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
                    defaultAppbar(context:context,text: '${cubit.currentCourseName}'),
                    const SizedBox(height: 30,),

                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                         height: 150,
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
                                        '${cubit.insCoursesAssign_Pending_Model.length} task Running',
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
                                        '${cubit.insCoursesAssign_Completed_Model.length} task completed',
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
                    TabBar(
                      onTap: (index) {
                        cubit.Tab_Bar_1_Function(index: index);
                      },
                      indicatorColor:
                      cubit.Tab_Bar_1_index == 0 ? Colors.red : Colors.teal,
                      indicatorWeight: 5,
                      splashBorderRadius: BorderRadius.circular(25),
                      indicatorSize: TabBarIndicatorSize.label,
                      splashFactory: NoSplash.splashFactory,
                      tabs: [
                        Tab(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.clock,
                                color: cubit.Tab_Bar_1_index == 0
                                    ? Colors.red
                                    : Colors.black.withOpacity(.6),
                                size: cubit.Tab_Bar_1_index == 0 ? 25 : 22,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                'Pending',
                                style: TextStyle(
                                  fontSize: cubit.Tab_Bar_1_index == 0 ? 20 : 18,
                                  color: cubit.Tab_Bar_1_index == 0
                                      ? Colors.red
                                      : Colors.black.withOpacity(.6),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Tab(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.circleCheck,
                                color: cubit.Tab_Bar_1_index == 1
                                    ? Colors.teal
                                    : Colors.black.withOpacity(.6),
                                size: cubit.Tab_Bar_1_index == 1 ? 25 : 22,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                'Complete',
                                style: TextStyle(
                                  fontSize: cubit.Tab_Bar_1_index == 1 ? 20 : 18,
                                  color: cubit.Tab_Bar_1_index == 1
                                      ? Colors.teal
                                      : Colors.black.withOpacity(.6),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ConditionalBuilder(
                      condition: cubit.Tab_Bar_1_index == 0,
                      builder: (context) => Expanded(
                        child:Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: ListView.separated(
                            physics:  BouncingScrollPhysics(),
                            itemBuilder:(context,index)=>InkWell(
                                onTap: (){
                                  // cubit.all_assign_files_List=[];
                                  //cubit.assignFile=null;
                                  // cubit.assignId=insAssign[index].taskId;
                                  // cubit.assignData.addAll({
                                  //   'assignName':insAssign[index].taskName,
                                  //   'startDate':insAssign[index].startDate,
                                  //   'endDate':insAssign[index].endDate,
                                  //   'filePath':insAssign[index].filePath,
                                  // });

                                  // navigateTo(context,INS_About_Assign_Screen() );
                                },
                                child: INS_Task_Card(assign: cubit.insCoursesAssign_Pending_Model[index], context: context,)),
                            separatorBuilder: (context,index)=>const SizedBox(height: 10,),
                            itemCount: cubit.insCoursesAssign_Pending_Model.length,
                          ),

                        ) ,
                      ),
                      fallback: (context) => Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: ListView.separated(
                            physics: const BouncingScrollPhysics(),
                            itemBuilder:(context,index)=>InkWell(
                                onTap: (){
                                  // navigateTo(context,STU_Assign_Screen() );
                                },
                                child: INS_complete_Task_Card(assign: cubit.insCoursesAssign_Completed_Model[index], context: context,)),
                            separatorBuilder: (context,index)=>const SizedBox(height: 10,),
                            itemCount: cubit.insCoursesAssign_Completed_Model.length,
                          ),

                        ),
                      ),
                    ),


                  ],
                ),
              ),

          ),
        );
      },
    );
  }
}
