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
          return SafeArea(
            child:  Scaffold(
              backgroundColor: Colors.transparent,
              body: Padding(
                  padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        children: [
                          SizedBox(height: 60,),
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
                                child: Image.network('https://s3-alpha-sig.figma.com/img/d231/da63/0330da0307bd5fd4566c82a5540e92e7?Expires=1707696000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=X6HPHRLXnifODHEi9RGB9NohQhg2XSnIkJrCFFEZSyEoRXgyuNUf~-LIskTRWri4YwYHjpg5gVs88gFNXUTdesEZuX5vFCMXTLTwiVcbFI22doKTeeh1eHoZ3RqJeEy20bu5S8xyczELUEPXX-I5a2LfyoP3RC4pQSUACJjOXQEMUwJ0Ez8EaJJaic2ngEHskqiPR-MLdfJ9UPUnl1P94u2mw6wYr1NrcYTU-tByKYktPJIfdAOexL3s14MRQ71V4M6t7CdsMDc2MULvkNAGBxS~uFvDBqRhNoh0T5rsiNS4~t1CxYOVO5~x~A0YY4v-fzrpzCqGtXmSvX5DraKMcw__',
                                  height: 90,
                                  width: 90,
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
                          Expanded(
                            child: ListView.separated(
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
