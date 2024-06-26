
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:university_hup/Models/STU_Model/CourseModel/StuQuizAdapter/Stu_Course_Quiz_Model.dart';
import 'package:university_hup/Shared/Component/component.dart';
import 'package:university_hup/Shared/Cons_widget.dart';
import 'package:university_hup/Shared/Cubit/App_cubit.dart';
import 'package:university_hup/Shared/Cubit/App_state.dart';


class STU_Quizes_Screen extends StatelessWidget {
  const STU_Quizes_Screen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit,App_state>(
      listener: (context,state){},
      builder: (context,state){
        App_cubit cubit =App_cubit.get(context);
        List<STU_Quiz_Model>quiz=cubit.stuCoursesQuizlModel;
        return  Scaffold(
          // appBar: AppBar(
          //   title: Padding(
          //     padding: const EdgeInsets.all(0.0),
          //     child: Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         SizedBox(
          //           height: 10,
          //         ),
          //         Text(
          //           'Material name',
          //           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          //         ),
          //
          //       ],
          //     ),
          //   ),
          //   actions: [
          //     Padding(
          //       padding: const EdgeInsets.all(12.0),
          //       child: Image(
          //         image: NetworkImage(
          //           'https://s3-alpha-sig.figma.com/img/07b3/a7c9/c2125e7477b092a6b41eee3cbb5627cd?Expires=1708300800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=LSFzhb5MX20bm5v9pG3n1Lqu5K91VfFaQWA08MV3tZIr-uKjGcByqUBbmljKxlpoEMBhMNd0BPeNgR4EYO~5vCLiHPHXmElMRDj6uXz86SLBMiP~g9p53YydDzfpLmcGZqaN9-ji1169FinyPbjn1Z2h3EBaLuV-Yvxw-eC9KsLuPIloT73yerWbs7kKpOrkjKlLfqZiuZVNgA~7w6QuAYyFEs6T8Ng6LkhhVNUucnBwrquNsuxqNmuQUvvk-6N~7uBKQUw-slravD9XxeGtLp0gJINLfsiC1ZCrGNhl8YZoUdwqPuSPfJdHt~kZhsZpWbdtivJRMcjyF5ZwSQKm-Q__'
          //             //'https://s3-alpha-sig.figma.com/img/d231/da63/0330da0307bd5fd4566c82a5540e92e7?Expires=1707091200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=J63YbqUJG4~63Q6d5hwEqu3tJAI~012Z3wt3kH03TzaxbPJV4dw-ICasQIcTcQ0CtXSIODocBY7-mJoDxKOdvk~qxLK9~Ouxq5GxPxHrwv6UkMN2TaYWEsi9JCTnTbVOVHQTpzLamoqryU62-W-0H4Noh5W1DQFu1oIqmeFk7Pjldr~RsrNx4aByu~Kim87HDgzZfUVxf3n1F8ONO6iIVJ~5O8IWTJI7HEvjAs9D3hs0uC20cwBq43JH-Cv0d6HE9eHELQ5Rdu1MEWFb9-Slv5q9NKLQaZ-3WNl6gbHB4~9txFsm8fOMBa7qNkonJyUVEzxWMdAL4uRtRaKHFDIlVQ__'
          //         ),
          //         fit: BoxFit.cover,
          //         height: 50,
          //         width: 50,
          //       ),
          //     ),
          //   ],
          // ),

            body: SafeArea(
              child: Column(

                children: [
                  const SizedBox(height: 30,),
                  defaultAppbar(context:context,
                      text: '${cubit.currentCourseName}'
                  ),
                  const SizedBox(height: 40,),
                  const Text('Quizzes',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                  ),
                  ),
                  const SizedBox(height: 15,),
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 7.5),
                        child: ConditionalBuilder(
                          condition: quiz.isNotEmpty && state is ! Stu_Get_Course_Quiz_LoadingState,
                          builder:(context)=> ListView.separated(
                            physics: const BouncingScrollPhysics(),
                            itemBuilder:(context,index)=> STU_Quiz_Card(
                            quiz: quiz[index],
                                quizIsComplete: cubit.stu_Quiz_IsComplete,
                                context: context,
                                index:
                                index),
                            separatorBuilder: (context,index)=>const SizedBox(height: 25,),
                            itemCount: quiz.length,
                          ),
                          fallback: (context)=>Center(child: CircularProgressIndicator()),
                        ),
                      ),
                    ),
                ],
              ),
            ),


          );

      },
    );
  }
}
