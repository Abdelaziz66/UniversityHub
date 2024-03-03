
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:university_hup/Models/STU_Model/CourseModel/STU_Course_Assign_Model.dart';

import 'package:university_hup/Modules/Student/Student_Assignment/STU_About_Assign_Screen.dart';

import 'package:university_hup/Shared/Component/component.dart';
import 'package:university_hup/Shared/Cons_widget.dart';
import 'package:university_hup/Shared/Cubit/App_cubit.dart';
import 'package:university_hup/Shared/Cubit/App_state.dart';
import 'package:university_hup/Shared/constant.dart';





class STU_Assign_Screen extends StatelessWidget {
  const STU_Assign_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit, App_state>(
      listener: (context, state) {},
      builder: (context, state) {
        App_cubit cubit=App_cubit.get(context);
        List<STU_Course_Assign_Model>assign=cubit.stuCoursesAssignModel;
        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 30,),
                  defaultAppbar(
                      text: cubit.currentCourseName,
                      context:context),
                  const SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      // height: 200,
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
                                      'Done 4 task today',
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
                                      'Done 10 task yesterday',
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
                                      'Done 100 task last month',
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

                  const SizedBox(height: 20,),
                  ConditionalBuilder(condition: cubit.pend,
                    builder: (context) =>Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        height: 500,
                        child: ConditionalBuilder(
                          condition: assign.isNotEmpty&&state is !Stu_Get_Course_Assign_LoadingState,
                          builder:(context)=> ListView.separated(
                            physics: const BouncingScrollPhysics(),
                            itemBuilder:(context,index)=>InkWell(
                                onTap: (){
                                  cubit.assignName=assign[index].taskName;
                                  cubit.all_assign_files_List=[];
                                  navigateTo(context,STU_About_Assign_Screen() );
                                },
                                child: Build_STU_pend_Tasks(assign:assign[index] )),
                            separatorBuilder: (context,index)=>const SizedBox(height: 10,),
                            itemCount: assign.length,
                          ),
                          fallback:(context)=> Center(child: CircularProgressIndicator(),),
                        ),
                      ),
                    ) ,
                    fallback: (context) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        height:500,
                        child: ListView.separated(
                          physics: const BouncingScrollPhysics(),
                          itemBuilder:(context,index)=>InkWell(
                              onTap: (){
                                // navigateTo(context,STU_Assign_Screen() );
                              },
                              child: Build_STU_complete_Tasks()),
                          separatorBuilder: (context,index)=>const SizedBox(height: 10,),
                          itemCount: 2,
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
