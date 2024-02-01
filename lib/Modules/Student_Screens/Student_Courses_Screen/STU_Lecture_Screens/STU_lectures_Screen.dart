import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:university_hup/Shared/Cubit/App_cubit.dart';
import 'package:university_hup/Shared/Cubit/App_state.dart';

import '../../../../Shared/Component/component.dart';
import '../../../../Shared/Cons_widget.dart';
import 'STU_About_Course.dart';
import 'STU_Assign_Screen/STU_Assign_Screen.dart';

class STU_Lecture_Screen extends StatelessWidget {
  const STU_Lecture_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit,App_state>(
        listener: (context,state){},
        builder: (context,state){
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         Padding(
                           padding: const EdgeInsets.all(15.0),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text('Hello !',
                               style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 fontSize: 25
                               ),),
                               SizedBox(height: 10,),
                               Text('Wishing you',
                                 style: TextStyle(
                                     fontWeight: FontWeight.w400,
                                   color: Colors.grey[700],
                                     fontSize: 15
                                 ),
                               ),
                               Text('continued success',
                                 style: TextStyle(
                                     fontWeight: FontWeight.w400,
                                     color: Colors.grey[700],
                                     fontSize: 15
                                 ),
                               ),
                               SizedBox(height:20,),
                               Row(
                                 children: [
                                   Text('Enrolled',
                                   style: TextStyle(
                                     fontSize: 30,
                                     fontWeight: FontWeight.bold
                                   ),
                                   ),
                                   Text(' 5 ',
                                     style: TextStyle(
                                         color: Colors.blue,
                  
                                         fontSize: 30,
                                         fontWeight: FontWeight.bold
                                     ),
                                   ),
                                   Text('Courses',
                                     style: TextStyle(
                                         fontSize: 30,
                                         fontWeight: FontWeight.bold
                                     ),),
                                 ],
                               )
                             ],
                           ),
                         ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Image.network('https://pluspng.com/img-png/png-student-studying-desk-student-study-studying-icon-512.png',
                              height: 80,
                              width: 80,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 1,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                        ),
                      ),
                      SizedBox(height: 15,),
                  
                      Container(
                        height: 700,
                        child: ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder:(context,index)=>InkWell(
                              onTap: (){
                                 navigateTo(context,STU_About_course() );
                              },
                              child: Build_STU_Lec()),
                          separatorBuilder: (context,index)=>SizedBox(height: 25,),
                          itemCount: 5,
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
