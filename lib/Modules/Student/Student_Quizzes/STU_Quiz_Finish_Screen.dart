
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:university_hup/Shared/Cons_widget.dart';

import '../../../Layout/LayoutScreen.dart';
import '../../../Shared/Cubit/App_cubit.dart';
import '../../../Shared/Cubit/App_state.dart';
import '../STU_About_Course.dart';
import 'STU_Quizes_Screen.dart';


class STU_Quiz_Finish_Screen extends StatelessWidget {
  const STU_Quiz_Finish_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit,App_state>(
      listener: (context,state){},
      builder: (context,state){
         App_cubit cubit =App_cubit.get(context);
        return Scaffold(

          // appBar: AppBar(
          //
          //   title: Padding(
          //     padding: const EdgeInsets.all(8.0),
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
          //         // Text('instructor name',
          //         //   style: TextStyle(
          //         //     color: Colors.grey[600],
          //         //       fontWeight: FontWeight.w400,
          //         //       fontSize: 15
          //         //   ),
          //         // ),
          //       ],
          //     ),
          //   ),
          //   actions: [
          //     Padding(
          //       padding: const EdgeInsets.all(12.0),
          //       child: Image(
          //         image: NetworkImage(
          //             'https://s3-alpha-sig.figma.com/img/07b3/a7c9/c2125e7477b092a6b41eee3cbb5627cd?Expires=1708300800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=LSFzhb5MX20bm5v9pG3n1Lqu5K91VfFaQWA08MV3tZIr-uKjGcByqUBbmljKxlpoEMBhMNd0BPeNgR4EYO~5vCLiHPHXmElMRDj6uXz86SLBMiP~g9p53YydDzfpLmcGZqaN9-ji1169FinyPbjn1Z2h3EBaLuV-Yvxw-eC9KsLuPIloT73yerWbs7kKpOrkjKlLfqZiuZVNgA~7w6QuAYyFEs6T8Ng6LkhhVNUucnBwrquNsuxqNmuQUvvk-6N~7uBKQUw-slravD9XxeGtLp0gJINLfsiC1ZCrGNhl8YZoUdwqPuSPfJdHt~kZhsZpWbdtivJRMcjyF5ZwSQKm-Q__'
          //         ),
          //         fit: BoxFit.cover,
          //         height: 50,
          //         width: 50,
          //       ),
          //     ),
          //   ],
          // ),

          body: SafeArea(
            child: ConditionalBuilder(
              condition: cubit.quizGrade!=null,
              builder:(context)=> Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 50,),
                  const Text('Finished!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35
                  ),),
                  const Text(' Answers have been sent successfully',
                    style: TextStyle(
                        fontSize: 15
                    ),),
                  const SizedBox(height: 100,),
                   Text('Your Points :',
                   style: Theme.of(context).textTheme.bodyText1?.copyWith(
                     fontSize: 25,
                   ),
                   ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children:[ Image.asset(
                             'assets/images/check1.png',
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 25.0,bottom: 20),
                        child: Text('${cubit.quizGrade}',style: TextStyle(
                          color: Colors.blue,
                          fontSize: 50
                        ),),
                      ),
                      ]),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(

                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child:
                        TextButton(
                          onPressed: (){
                            print('all answers :${cubit.allquizAnswers}');

                            NavigateAndFinish(context, Layout_Screen());
                            navigateTo(context,STU_About_course ());
                            navigateTo(context,STU_Quizes_Screen ());
                          },
                          child: const Text('Done',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25
                            ),

                          ),
                        ),
                      ),
                    ),
                  ) ,
                ],
              ),
              fallback:(context)=> const Center(child: CircularProgressIndicator()),
            ),
          ),


        );
      },
    );
  }
}
