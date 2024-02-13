import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:university_hup/Shared/Cubit/App_cubit.dart';
import 'package:university_hup/Shared/Cubit/App_state.dart';
import 'package:university_hup/Shared/constant.dart';

import '../../../../../Shared/Component/component.dart';
import '../../../../../Shared/Cons_widget.dart';
import 'STU_Quiz_Finish_Screen.dart';



class STU_Quizes_Ques_Screen extends StatefulWidget {


  @override
  State<STU_Quizes_Ques_Screen> createState() => _STU_Quizes_Ques_ScreenState();
}

class _STU_Quizes_Ques_ScreenState extends State<STU_Quizes_Ques_Screen> {
  bool islast = false;
  bool ismiddle =false;

  var boardcontroller = PageController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit,App_state>(
      listener: (context,state){},
      builder: (context,state){
        App_cubit cubit =App_cubit.get(context);
        return Scaffold(
          // appBar: AppBar(
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
          //
          //              //   'https://s3-alpha-sig.figma.com/img/d231/da63/0330da0307bd5fd4566c82a5540e92e7?Expires=1707091200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=J63YbqUJG4~63Q6d5hwEqu3tJAI~012Z3wt3kH03TzaxbPJV4dw-ICasQIcTcQ0CtXSIODocBY7-mJoDxKOdvk~qxLK9~Ouxq5GxPxHrwv6UkMN2TaYWEsi9JCTnTbVOVHQTpzLamoqryU62-W-0H4Noh5W1DQFu1oIqmeFk7Pjldr~RsrNx4aByu~Kim87HDgzZfUVxf3n1F8ONO6iIVJ~5O8IWTJI7HEvjAs9D3hs0uC20cwBq43JH-Cv0d6HE9eHELQ5Rdu1MEWFb9-Slv5q9NKLQaZ-3WNl6gbHB4~9txFsm8fOMBa7qNkonJyUVEzxWMdAL4uRtRaKHFDIlVQ__'
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
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30,),
                defaultAppbar(context),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    children: [
                      Text('Quiz ',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('1',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue
                        ),
                      ),
                      Spacer(),


                      Text('1:25 ',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue
                        ),
                      ),
                      SizedBox(width: 5,),
                      Icon(FontAwesomeIcons.clock,size: 20,),
                    ],
                  ),
                ),
                SizedBox(height: 25,),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: PageView.builder(
                      physics: BouncingScrollPhysics(),
                      onPageChanged: (index) {
                        if (index == cubit.stu_Quiz_Ques_lis.length - 1) {
                          setState(() {
                            islast = true;
                          });
                        } else if(index == cubit.stu_Quiz_Ques_lis.length - 2)
                        {
                          setState(() {
                            ismiddle = true;
                          });
                        }
                        else{
                          setState(() {
                            islast = false;
                            ismiddle = false;
                          });
                        }
                      },
                      controller: boardcontroller,
                      itemBuilder: (context, index) =>
                          Build_STU_Quiz_Ques(context,cubit.stu_Quiz_Ques_lis,cubit.stu_Quiz_Ques_options,index),
                      itemCount: cubit.stu_Quiz_Ques_lis.length,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child:



                  Default_Button(
                    containerWidth:  double.infinity,
                      containerHeight: 50,
                    onPressed: () {
        if (islast) {
        navigateTo(context,STU_Quiz_Finish_Screen());
        // submit;
        } else {
        boardcontroller.nextPage(
        duration: Duration(
        milliseconds: 750,
        ),
        curve: Curves.fastLinearToSlowEaseIn,
        );
        }
                    },
                    text: islast?'Submit':'Next',
                  ),
                  // TextButton(onPressed: (){
                  //   if (islast) {
                  //     navigateTo(context,STU_Quiz_Finish_Screen());
                  //     // submit;
                  //   } else {
                  //     boardcontroller.nextPage(
                  //       duration: Duration(
                  //         milliseconds: 750,
                  //       ),
                  //       curve: Curves.fastLinearToSlowEaseIn,
                  //     );
                  //   }
                  // },
                  //   child:
                  //
                  // Container(
                  //   width: double.infinity,
                  //   height: 50,
                  //   decoration: BoxDecoration(
                  //     color: Colors.blue,
                  //     borderRadius: BorderRadius.circular(20),
                  //   ),
                  //   child: Center(
                  //     child:
                  //     Text(islast?'Submit':'Next',
                  //       style: TextStyle(
                  //           color: Colors.white,
                  //           fontWeight: FontWeight.bold,
                  //           fontSize: 25
                  //       ),
                  //
                  //     ),
                  //   ),
                  // ) ,                    ),
                )
              ],
            ),
          ),


        );
      },
    );
  }
}


