
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:university_hup/Models/INS_Model/INS_course_model.dart';
import 'package:university_hup/Models/STU_Model/CourseModel/AllCourcesAdapterModel/Stu_All_Courses_Model.dart';
import 'package:university_hup/Modules/Student/STU_About_Course.dart';
import 'package:university_hup/Shared/Component/component.dart';
import 'package:university_hup/Shared/Cons_widget.dart';

import 'package:university_hup/Shared/Cubit/App_cubit.dart';
import 'package:university_hup/Shared/Cubit/App_state.dart';
import 'package:university_hup/Shared/constant.dart';








class STU_Lecture_Screen extends StatelessWidget {
  const STU_Lecture_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit, App_state>(
      listener: (context, state) {},
      builder: (context, state) {
        App_cubit cubit=App_cubit.get(context);
        List<Stu_GetAllCoursesModel>courses=cubit.stuAllCoursesModel;
      //  List<Stu_GetAllCoursesModel>allcoursesFromHIVE=cubit.allLECFromHIVE;
        List<INS_Course_Model>insCourses=cubit.ins_Courses_Model;
        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,vertical: 20),
                    child: Row(
                      children: [
                        const Text(
                          'Enrolled',
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(width: 8,),
                        const Text(
                          '5',
                          style: TextStyle(
                            color: Colors.teal,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 8,),
                        const Text(
                          'Courses',
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(width: 8,),
                        // Spacer(),
                        Expanded(
                          child: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child:
                              Image.asset(
                                  'assets/images/bluebook.png'),

                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 5,),
                  Expanded(
                    child: ConditionalBuilder(
                      condition: cubit.allLECFromHIVE.isEmpty|| cubit.connnection,
                      builder:(context)=>ListView.separated(
                        itemBuilder: (context, index) => InkWell(
                            onTap: () {
                             // print(cubit.currentCycleId);
                            //  print(courses[index].cycleId);
                              if(rol=='Student') {
                                cubit.currentCourseName = courses[index].name;
                                if (cubit.currentCycleId !=
                                    courses[index].cycleId) {
                                  cubit.stuCoursesMatrialModel = [];
                                  cubit.stuLECTUREModel = [];
                                  cubit.stuLABModel = [];
                                  //cubit.stuCoursesMatrialFileModel=[];
                                  cubit.stuCoursesAssignModel = [];
                                  cubit.stuCoursesQuizlModel = [];
                                  cubit.courseGradesModel = [];
                                  cubit.isCycleIdChange = true;
                                } else {
                                  cubit.isCycleIdChange = false;
                                }
                                cubit.currentCycleId = courses[index].cycleId!;}
                              else{
                                cubit.currentCourseName = insCourses[index].name;
                                if (cubit.currentCycleId !=
                                    insCourses[index].cycleId) {
                                  cubit.ins_Courses_Model= [];
                                  cubit.insLECTUREModel = [];
                                  cubit.insLABModel = [];
                                  //cubit.stuCoursesMatrialFileModel=[];
                               //   cubit.stuCoursesAssignModel = [];
                               //   cubit.stuCoursesQuizlModel = [];
                              //    cubit.courseGradesModel = [];
                               //   cubit.isCycleIdChange = true;
                                } else {
                                  cubit.isCycleIdChange = false;
                                }
                                cubit.currentCycleId = insCourses[index].cycleId!;
                              }


                              navigateTo(context,  STU_About_course());
                            },
                            child:rol=='Student'? Build_STU_Lec(
                              courses:courses[index],):INS_Course( courses:cubit.ins_Courses_Model[index],)),
                        separatorBuilder: (context, index) => const SizedBox(
                          height: 20,
                        ),
                        itemCount:rol=='Student'? courses.length:cubit.ins_Courses_Model.length,
                      ),
                      fallback:(context)=> ListView.separated(
                        itemBuilder: (context, index) => InkWell(
                            onTap: () {
                              cubit.currentCycleId=cubit.allLECFromHIVE[index].cycleId;

                              print(cubit.allLECFromHIVE[0].name);
                              print('cycle Id : ${cubit.currentCycleId}');
                            //  print(courses[index].cycleId);
                              cubit.currentCourseName=cubit.allLECFromHIVE[index].name;
                              if(cubit.currentCycleId!=cubit.allLECFromHIVE[index].cycleId) {
                                cubit.stuCoursesMatrialModel=[];
                                cubit.stuLECTUREModel=[];
                                cubit.stuLABModel=[];
                                //cubit.stuCoursesMatrialFileModel=[];
                                cubit.stuCoursesAssignModel=[];
                                cubit.stuCoursesQuizlModel=[];
                                cubit.courseGradesModel=[];
                                cubit.isCycleIdChange=true;
                              } else {
                                cubit.isCycleIdChange=false;
                              }
                              navigateTo(context,  STU_About_course());
                            },
                            child:rol=='Student'? Build_STU_Lec(
                              courses:cubit.allLECFromHIVE[index],):INS_Course( courses:cubit.ins_Courses_Model[index],)),
                        separatorBuilder: (context, index) => const SizedBox(
                          height: 20,
                        ),
                        itemCount:rol=='Student'? cubit.allLECFromHIVE.length:cubit.ins_Courses_Model.length,
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
