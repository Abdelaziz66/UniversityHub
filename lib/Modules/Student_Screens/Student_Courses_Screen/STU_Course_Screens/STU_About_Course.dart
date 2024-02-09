import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:university_hup/Shared/Cons_widget.dart';

import '../../../../Shared/Cubit/App_cubit.dart';
import '../../../../Shared/Cubit/App_state.dart';
import 'STU_Lecture_Screen/STU_All_Lecture_Screen.dart';
import 'STU_Assign_Screen/STU_Assign_Screen.dart';
import 'STU_Quizes_Screen/STU_Quizes_Screen.dart';

class STU_About_course extends StatelessWidget {
  const STU_About_course({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit, App_state>(
      listener: (context, state) {},
      builder: (context, state) {
        App_cubit cubit=App_cubit.get(context);
        return Scaffold(
          appBar: AppBar(
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Material name',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ],
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image(
                  image: NetworkImage(
                      'https://s3-alpha-sig.figma.com/img/07b3/a7c9/c2125e7477b092a6b41eee3cbb5627cd?Expires=1708300800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=LSFzhb5MX20bm5v9pG3n1Lqu5K91VfFaQWA08MV3tZIr-uKjGcByqUBbmljKxlpoEMBhMNd0BPeNgR4EYO~5vCLiHPHXmElMRDj6uXz86SLBMiP~g9p53YydDzfpLmcGZqaN9-ji1169FinyPbjn1Z2h3EBaLuV-Yvxw-eC9KsLuPIloT73yerWbs7kKpOrkjKlLfqZiuZVNgA~7w6QuAYyFEs6T8Ng6LkhhVNUucnBwrquNsuxqNmuQUvvk-6N~7uBKQUw-slravD9XxeGtLp0gJINLfsiC1ZCrGNhl8YZoUdwqPuSPfJdHt~kZhsZpWbdtivJRMcjyF5ZwSQKm-Q__'
                  ),
                  fit: BoxFit.cover,
                  height: 50,
                  width: 50,
                ),
              ),
            ],
          ),
          body:Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Expanded(
                   child: InkWell(
                     onTap: (){
                       navigateTo(context,STU_Matrial_Screen() );
                     },
                     child: Container(
                       padding: EdgeInsetsDirectional.all(15),
                        width:double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xFFD1FAE5),
                          border: Border(
                            left: BorderSide(width: 8, color: Color(0x9934D399)),
                            top: BorderSide(color: Color(0x9934D399)),
                            right: BorderSide(color: Color(0x9934D399)),
                            bottom: BorderSide(color: Color(0x9934D399)),
                          ),
                          ),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text('Course Material',
                                 style: TextStyle(
                                   color: Color(0xFF3D5CFF),
                                   fontSize: 30,
                                   fontWeight: FontWeight.w500,
                                 ),
                               ),
                               Spacer(),
                               Expanded(
                                 child: Container(
                                   alignment: AlignmentDirectional.centerEnd,
                                   child: FaIcon(
                                     FontAwesomeIcons.circleRight,
                                     color: Colors.teal,
                                     size: 35,
                                   ),
                                 ),
                               ),
                             ],
                           ),

                        ),
                   ),
                 ),
                SizedBox(height: 20,),
                Expanded(
                  child: InkWell(
                    onTap: (){
                      navigateTo(context, STU_Assign_Screen());
                    },
                    child: Container(
                      padding: EdgeInsetsDirectional.all(15),

                      width:double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFFFAE8FF),
                        border: Border(
                          left: BorderSide(width: 8, color: Color(0x99DB2777)),
                          top: BorderSide(color: Color(0x99DB2777)),
                          right: BorderSide(color: Color(0x99DB2777)),
                          bottom: BorderSide(color: Color(0x99DB2777)),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Assignments',
                            style: TextStyle(
                              color: Color(0xFF3D5CFF),
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Spacer(),
                          Expanded(
                            child: Container(
                              alignment: AlignmentDirectional.centerEnd,
                              child: FaIcon(
                                FontAwesomeIcons.circleRight,
                                color: Colors.teal,
                                size: 35,
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Expanded(
                  child: InkWell(
                    onTap: (){
                        navigateTo(context,STU_Quizes_Screen());
                    },
                    child: Container(
                      padding: EdgeInsetsDirectional.all(15),
                      width:double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFFD1FAE5),
                        border: Border(
                          left: BorderSide(width: 8, color: Color(0x9934D399)),
                          top: BorderSide(color: Color(0x9934D399)),
                          right: BorderSide(color: Color(0x9934D399)),
                          bottom: BorderSide(color: Color(0x9934D399)),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Quizes',
                            style: TextStyle(
                              color: Color(0xFF3D5CFF),
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Spacer(),

                          Expanded(
                            child: Container(
                              alignment: AlignmentDirectional.centerEnd,
                              child: FaIcon(
                                FontAwesomeIcons.circleRight,
                                color: Colors.teal,
                                size: 35,
                              ),
                            ),
                          ),

                        ],
                      ),

                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Expanded(
                  child: Container(
                    padding: EdgeInsetsDirectional.all(15),

                    width:double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFFFAE8FF),
                      border: Border(
                        left: BorderSide(width: 8, color: Color(0x99DB2777)),
                        top: BorderSide(color: Color(0x99DB2777)),
                        right: BorderSide(color: Color(0x99DB2777)),
                        bottom: BorderSide(color: Color(0x99DB2777)),

                      ),

                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Grades',
                          style: TextStyle(
                            color: Color(0xFF3D5CFF),
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Spacer(),
                        Expanded(
                          child: Container(
                            alignment: AlignmentDirectional.centerEnd,
                            child: FaIcon(
                              FontAwesomeIcons.circleRight,
                              color: Colors.teal,
                              size: 35,
                            ),
                          ),
                        ),


                      ],
                    ),

                  ),
                ),
                SizedBox(height: 200,),
              ],
            ),
          ),

        );
      },
    );
  }
}
