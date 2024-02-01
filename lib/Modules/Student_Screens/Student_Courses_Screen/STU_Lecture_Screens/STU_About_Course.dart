import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:university_hup/Shared/Cons_widget.dart';

import '../../../../Shared/Cubit/App_cubit.dart';
import '../../../../Shared/Cubit/App_state.dart';
import 'In_Lecture_Screen.dart';
import 'STU_Assign_Screen/STU_Assign_Screen.dart';

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
                  // Text('instructor name',
                  //   style: TextStyle(
                  //     color: Colors.grey[600],
                  //       fontWeight: FontWeight.w400,
                  //       fontSize: 15
                  //   ),
                  // ),
                ],
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image(
                  image: NetworkImage(
                      'https://s3-alpha-sig.figma.com/img/d231/da63/0330da0307bd5fd4566c82a5540e92e7?Expires=1707091200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=J63YbqUJG4~63Q6d5hwEqu3tJAI~012Z3wt3kH03TzaxbPJV4dw-ICasQIcTcQ0CtXSIODocBY7-mJoDxKOdvk~qxLK9~Ouxq5GxPxHrwv6UkMN2TaYWEsi9JCTnTbVOVHQTpzLamoqryU62-W-0H4Noh5W1DQFu1oIqmeFk7Pjldr~RsrNx4aByu~Kim87HDgzZfUVxf3n1F8ONO6iIVJ~5O8IWTJI7HEvjAs9D3hs0uC20cwBq43JH-Cv0d6HE9eHELQ5Rdu1MEWFb9-Slv5q9NKLQaZ-3WNl6gbHB4~9txFsm8fOMBa7qNkonJyUVEzxWMdAL4uRtRaKHFDIlVQ__'
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
                               IconButton(onPressed: (){
                                 navigateTo(context,STU_Matrial_Screen() );
                               }, icon: Icon(
                                 FontAwesomeIcons.arrowRight,
                                 size: 30,
                               ))
                             ],
                           ),

                        ),
                   ),
                 ),
                SizedBox(height: 30,),
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
                          IconButton(onPressed: (){
                             navigateTo(context,STU_Assign_Screen() );
                          }, icon: Icon(
                            FontAwesomeIcons.arrowRight,
                            size: 30,
                          ))
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Expanded(
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
                        IconButton(onPressed: (){
                          // navigateTo(context, )
                        }, icon: Icon(
                          FontAwesomeIcons.arrowRight,
                          size: 30,
                        ))
                      ],
                    ),

                  ),
                ),
                SizedBox(height: 30,),
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
                        IconButton(onPressed: (){
                          // navigateTo(context, )
                        }, icon: Icon(
                          FontAwesomeIcons.arrowRight,
                          size: 30,
                        ))
                      ],
                    ),

                  ),
                ),
                SizedBox(height: 300,),
              ],
            ),
          ),

        );
      },
    );
  }
}
