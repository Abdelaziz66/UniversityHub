
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:university_hup/Modules/Student/Student_Assignment/STU_Assign_Screen.dart';
import 'package:university_hup/Modules/Student/Student_Quizzes/STU_Quizes_Screen.dart';


import 'package:university_hup/Shared/Cons_widget.dart';
import 'package:university_hup/Shared/Cubit/App_cubit.dart';
import 'package:university_hup/Shared/Cubit/App_state.dart';

import 'package:university_hup/Shared/constant.dart';


import 'Student_Material/STU_All_Lecture_Screen.dart';


class STU_About_course extends StatelessWidget {
   STU_About_course({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit, App_state>(
      listener: (context, state) {},
      builder: (context, state) {

        return Scaffold(
          body:SafeArea(
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                    children: [
                      const SizedBox(height: 30,),
                      defaultAppbar(context),
                      const SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: SizedBox(
                          height:550,
                          child: Column(children: [
                             Expanded(
                               child: Row(
                                  children: [
                                    Expanded(
                                      child: InkWell(
                                        onTap: (){
                                          navigateTo(context,const STU_Matrial_Screen() );
                                        },
                                        child: Container(
                                          //height: 240,
                                          decoration: BoxDecoration(
                                            // color: Colors.lightBlueAccent.withOpacity(.25),
                                           color:  Colors.greenAccent.withOpacity(.25),
                                            borderRadius: BorderRadius.circular(20),
                                            // border: Border(
                                            //   left: BorderSide(width: 8, color: Color(0x9934D399)),
                                            //   top: BorderSide(color: Color(0x9934D399)),
                                            //   right: BorderSide(color: Color(0x9934D399)),
                                            //   bottom: BorderSide(color: Color(0x9934D399)),
                                            // ),
                                          ),
                                          child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
              
                                                     Container(
                                                      alignment: AlignmentDirectional.center,
                                                      child: Image.asset('assets/images/a11.png'),
                                                    ),
              
              
                                                const Spacer(),
                                                Padding(
                                                  padding: const EdgeInsets.only(bottom: 25.0),
                                                    child: Container(
                                                  //   height: 50,
                                                      child: Text('Material',textAlign: TextAlign.center,
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
                                    const SizedBox(width: 15,),
                                    Expanded(
                                      child: InkWell(
                                        onTap: (){
                                          navigateTo(context,const STU_Assign_Screen() );
                                        },
                                        child: Container(
              
                                          decoration: BoxDecoration(
                                            color: Colors.deepPurpleAccent.withOpacity(.25),
                                            // color: Colors.lightBlueAccent.withOpacity(.25),
                                            borderRadius: BorderRadius.circular(20),
                                            // border: Border(
                                            //   left: BorderSide(width: 8, color: Color(0x9934D399)),
                                            //   top: BorderSide(color: Color(0x9934D399)),
                                            //   right: BorderSide(color: Color(0x9934D399)),
                                            //   bottom: BorderSide(color: Color(0x9934D399)),
                                            // ),
                                          ),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                             Container(
                                                  alignment: AlignmentDirectional.center,
                                                  child:Image.asset('assets/images/a2.png'),
                                                ),
              
                                              const Spacer(),
                                              Padding(
                                                padding: const EdgeInsets.only(bottom: 25.0),
                                                child: Text('Assignment',textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: c1.withOpacity(.8),
                                                    fontSize: 23,
                                                    fontWeight: FontWeight.w900,
                                                  ),
                                                ),
                                              ),
              
                                              // Padding(
                                              //   padding: const EdgeInsets.only(right: 10.0),
                                              //   child: Container(
                                              //     alignment: AlignmentDirectional.centerEnd,
                                              //     child: FaIcon(
                                              //       FontAwesomeIcons.angleRight,
                                              //       color: c1.withOpacity(.8),
                                              //       size: 35,
                                              //     ),
                                              //   ),
                                              // ),
                                            ],
                                          ),
              
                                        ),
                                      ),
                                    ),
              
                                  ],
                                ),
                             ),
                            const SizedBox(height: 15,),
                            Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: InkWell(
                                      onTap: (){
                                        navigateTo(context,const STU_Quizes_Screen() );
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color:Colors.pinkAccent.withOpacity(.18),
                                          // color: Colors.lightBlueAccent.withOpacity(.25),
                                          borderRadius: BorderRadius.circular(20),
                                          // border: Border(
                                          //   left: BorderSide(width: 8, color: Color(0x9934D399)),
                                          //   top: BorderSide(color: Color(0x9934D399)),
                                          //   right: BorderSide(color: Color(0x9934D399)),
                                          //   bottom: BorderSide(color: Color(0x9934D399)),
                                          // ),
                                        ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                                alignment: AlignmentDirectional.center,
                                                child:Image.asset('assets/images/a3.png'),
                                              ),
              
                                            const Spacer(),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 25.0),
                                              child: Text('Quizzes',textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: c1.withOpacity(.8),
                                                  fontSize: 23,
                                                  fontWeight: FontWeight.w900,
                                                ),
                                              ),
                                            ),
              
                                            // Padding(
                                            //   padding: const EdgeInsets.only(right: 10.0),
                                            //   child: Container(
                                            //     alignment: AlignmentDirectional.centerEnd,
                                            //     child: FaIcon(
                                            //       FontAwesomeIcons.angleRight,
                                            //       color: c1.withOpacity(.8),
                                            //       size: 35,
                                            //     ),
                                            //   ),
                                            // ),
                                          ],
                                        ),
              
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 15,),
                                  Expanded(
                                    child: InkWell(
                                      onTap: (){
              
                                      },
                                      child: Container(
              
                                        decoration: BoxDecoration(
                                          color: Colors.lightBlueAccent.withOpacity(.25),
                                          borderRadius: BorderRadius.circular(20),
                                          // border: Border(
                                          //   left: BorderSide(width: 8, color: Color(0x9934D399)),
                                          //   top: BorderSide(color: Color(0x9934D399)),
                                          //   right: BorderSide(color: Color(0x9934D399)),
                                          //   bottom: BorderSide(color: Color(0x9934D399)),
                                          // ),
                                        ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                          Container(
                                                alignment: AlignmentDirectional.center,
                                                child: Image.asset('assets/images/a44.png'),
              
                                            ),
                                            const Spacer(),
                                            Padding(
                                              padding: const EdgeInsets.only(bottom: 25.0),
                                              child: Text('Grades',textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: c1.withOpacity(.8),
                                                  fontSize: 23,
                                                  fontWeight: FontWeight.w900,
                                                ),
                                              ),
                                            ),
              
                                            // Padding(
                                            //   padding: const EdgeInsets.only(right: 10.0),
                                            //   child: Container(
                                            //     alignment: AlignmentDirectional.centerEnd,
                                            //     child: FaIcon(
                                            //       FontAwesomeIcons.angleRight,
                                            //       color: c1.withOpacity(.8),
                                            //       size: 35,
                                            //     ),
                                            //   ),
                                            // ),
                                          ],
                                        ),
              
                                      ),
                                    ),
                                  ),
              
                                ],
                              ),
                            ),
                            // Row(
                            //   children: [
                            //     InkWell(
                            //       onTap: (){
                            //         navigateTo(context,STU_Quizes_Screen());
                            //       },
                            //       child: Container(
                            //         height: 100,
                            //         padding: EdgeInsetsDirectional.all(15),
                            //         width:double.infinity,
                            //         decoration: BoxDecoration(
                            //           color: Color(0xFFD1FAE5),
                            //           border: Border(
                            //             left: BorderSide(width: 8, color: Color(0x9934D399)),
                            //             top: BorderSide(color: Color(0x9934D399)),
                            //             right: BorderSide(color: Color(0x9934D399)),
                            //             bottom: BorderSide(color: Color(0x9934D399)),
                            //           ),
                            //         ),
                            //         child: Row(
                            //           mainAxisAlignment: MainAxisAlignment.center,
                            //           children: [
                            //             Container(
                            //               alignment: AlignmentDirectional.centerEnd,
                            //               child: FaIcon(
                            //                 FontAwesomeIcons.featherPointed,
                            //                 color: c1.withOpacity(.8),
                            //                 size: 30,
                            //               ),
                            //             ),
                            //             SizedBox(width: 15,),
                            //             Text('Quizzes',
                            //               style: TextStyle(
                            //                 color: c1.withOpacity(.8),
                            //                 fontSize: 25,
                            //                 fontWeight: FontWeight.w900,
                            //               ),
                            //             ),
                            //             Spacer(),
                            //             Padding(
                            //               padding: const EdgeInsets.only(right: 10.0),
                            //               child: Container(
                            //                 alignment: AlignmentDirectional.centerEnd,
                            //                 child: FaIcon(
                            //                   FontAwesomeIcons.angleRight,
                            //                   color: c1.withOpacity(.8),
                            //                   size: 35,
                            //                 ),
                            //               ),
                            //             ),
                            //
                            //           ],
                            //         ),
                            //
                            //       ),
                            //     ),
                            //     SizedBox(height: 20,),
                            //     Container(
                            //       height: 100,
                            //       padding: EdgeInsetsDirectional.all(15),
                            //
                            //       width:double.infinity,
                            //       decoration: BoxDecoration(
                            //         color: Color(0xFFFAE8FF),
                            //         border: Border(
                            //           left: BorderSide(width: 8, color: Color(0x99DB2777)),
                            //           top: BorderSide(color: Color(0x99DB2777)),
                            //           right: BorderSide(color: Color(0x99DB2777)),
                            //           bottom: BorderSide(color: Color(0x99DB2777)),
                            //
                            //         ),
                            //
                            //       ),
                            //       child: Row(
                            //         mainAxisAlignment: MainAxisAlignment.center,
                            //         children: [
                            //           Container(
                            //             alignment: AlignmentDirectional.centerEnd,
                            //             child: FaIcon(
                            //               FontAwesomeIcons.squarePollVertical,
                            //               color: c1.withOpacity(.8),
                            //               size: 30,
                            //             ),
                            //           ),
                            //           SizedBox(width: 15,),
                            //           Text('Grades',
                            //             style: TextStyle(
                            //               color: c1.withOpacity(.8),
                            //               fontSize: 25,
                            //               fontWeight: FontWeight.w900,
                            //             ),
                            //           ),
                            //           Spacer(),
                            //           Padding(
                            //             padding: const EdgeInsets.only(right: 10.0),
                            //             child: Container(
                            //               alignment: AlignmentDirectional.centerEnd,
                            //               child: FaIcon(
                            //                 FontAwesomeIcons.angleRight,
                            //                 color: c1.withOpacity(.8),
                            //                 size: 35,
                            //               ),
                            //             ),
                            //           ),
                            //
                            //
                            //         ],
                            //       ),
                            //
                            //     ),
                            //   ],
                            // ),
              
              
              
                          ],),
                        ),
                      ),
              
              
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
