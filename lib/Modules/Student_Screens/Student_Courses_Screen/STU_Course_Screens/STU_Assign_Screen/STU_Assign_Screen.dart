import 'dart:ui';

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:university_hup/Shared/Cubit/App_cubit.dart';
import 'package:university_hup/Shared/Cubit/App_state.dart';

import '../../../../../Shared/Component/component.dart';
import '../../../../../Shared/Cons_widget.dart';
import '../../../../../Shared/constant.dart';
import 'STU_About_Assign_Screen.dart';

class STU_Assign_Screen extends StatelessWidget {
  const STU_Assign_Screen({Key? key}) : super(key: key);

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
                      'https://s3-alpha-sig.figma.com/img/07b3/a7c9/c2125e7477b092a6b41eee3cbb5627cd?Expires=1708300800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=LSFzhb5MX20bm5v9pG3n1Lqu5K91VfFaQWA08MV3tZIr-uKjGcByqUBbmljKxlpoEMBhMNd0BPeNgR4EYO~5vCLiHPHXmElMRDj6uXz86SLBMiP~g9p53YydDzfpLmcGZqaN9-ji1169FinyPbjn1Z2h3EBaLuV-Yvxw-eC9KsLuPIloT73yerWbs7kKpOrkjKlLfqZiuZVNgA~7w6QuAYyFEs6T8Ng6LkhhVNUucnBwrquNsuxqNmuQUvvk-6N~7uBKQUw-slravD9XxeGtLp0gJINLfsiC1ZCrGNhl8YZoUdwqPuSPfJdHt~kZhsZpWbdtivJRMcjyF5ZwSQKm-Q__'

                          //'https://s3-alpha-sig.figma.com/img/d231/da63/0330da0307bd5fd4566c82a5540e92e7?Expires=1707091200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=J63YbqUJG4~63Q6d5hwEqu3tJAI~012Z3wt3kH03TzaxbPJV4dw-ICasQIcTcQ0CtXSIODocBY7-mJoDxKOdvk~qxLK9~Ouxq5GxPxHrwv6UkMN2TaYWEsi9JCTnTbVOVHQTpzLamoqryU62-W-0H4Noh5W1DQFu1oIqmeFk7Pjldr~RsrNx4aByu~Kim87HDgzZfUVxf3n1F8ONO6iIVJ~5O8IWTJI7HEvjAs9D3hs0uC20cwBq43JH-Cv0d6HE9eHELQ5Rdu1MEWFb9-Slv5q9NKLQaZ-3WNl6gbHB4~9txFsm8fOMBa7qNkonJyUVEzxWMdAL4uRtRaKHFDIlVQ__'
                  ),
                  fit: BoxFit.cover,
                  height: 50,
                  width: 50,
                ),
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    // Stack(
                    //  alignment: Alignment.topRight,
                    //   children:[
                    //     Container(
                    //       height: 250,
                    //       width: double.infinity,
                    //       decoration: BoxDecoration(
                    //         color: Colors.blue,
                    //         borderRadius: BorderRadius.circular(15),
                    //       ),
                    //     ),
                    //     CircleAvatar(
                    //        radius:50,
                    //         backgroundColor:Colors.white,
                    //     ),
                    //     Positioned(
                    //         child: BackdropFilter(
                    //           blendMode: BlendMode.hardLight,
                    //           filter: ImageFilter.blur(sigmaX: 120, sigmaY: 120),
                    //           child:
                    //             Container(
                    //             height: 250,
                    //             width: double.infinity,
                    //             decoration: BoxDecoration(
                    //                 // gradient:RadialGradient(
                    //                 //   radius:.7,
                    //                 //   center:Alignment.topRight ,
                    //                 //  colors: [
                    //                 //       Colors.white,
                    //                 //       Colors.blue,
                    //                 //     ],
                    //                 // ),
                    //
                    //             color: Colors.blue,
                    //               borderRadius: BorderRadius.circular(15),
                    //             ),
                    //           ),
                    //         )),
                    //
                    //
                    //   ]
                    // )
                    Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: RadialGradient(
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
                                Text(
                                  'You are aa superb warrior!',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22),
                                ),
                                SizedBox(height: 20),
                                Row(
                                  children: [
                                    Container(
                                      height: 26,
                                      width: 26,
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Icon(
                                        FontAwesomeIcons.check,
                                        size: 16,
                                        color: Colors.indigo,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      'Done 4 task today',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 26,
                                      width: 26,
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Icon(
                                        FontAwesomeIcons.check,
                                        size: 16,
                                        color: Colors.indigo,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      'Done 10 task yesterday',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 26,
                                      width: 26,
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Icon(
                                        FontAwesomeIcons.check,
                                        size: 16,
                                        color: Colors.indigo,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      'Done 100 task last month',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                            Image(
                              image: NetworkImage(
                                  'https://th.bing.com/th/id/R.7257f2e854761a78bcaf430e867f766b?rik=kz0lcmm7sQ1Yaw&riu=http%3a%2f%2fwww.digital360shop.com%2fimages%2fdigital-rocket.png&ehk=HaygRr9RNO0ld%2bt4w%2fWc%2bJ31TDqfAw%2f0z1WeKKaqZTs%3d&risl=&pid=ImgRaw&r=0'),
                              height: 140,
                              width: 140,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 20,right: 10),
                      child: Row(
                        children: [
                          Expanded(
                              child:    GestureDetector(
                                onTap: () {
                                  cubit.pend_Complete_Function(pe: true);                                },
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: cubit.pend
                                        ? Colors.indigo
                                        : Colors.grey.withOpacity(.2),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 30,
                                      width: 30,

                                      alignment: Alignment.center,
                                      child: Text('Pending',
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: cubit.pend
                                            ? c5
                                            : c1,
                                      ),
                                      )
                                    ),
                                  ),
                                ),
                              ),
                              // GestureDetector(
                              //   onTap: () {
                              //     cubit.pend_Complete_Function(pe: true);
                              //   },
                              //   child: Center(
                              //     child: Column(
                              //       children: [
                              //         Text(
                              //           'Pending',
                              //           style: TextStyle(
                              //             fontSize: 23,
                              //             fontWeight: FontWeight.bold,
                              //             color:Colors.red
                              //             // cubit.pend? c5:c1,
                              //           ),
                              //         ),
                              //          cubit.pend? Container(
                              //           color: Colors.red,
                              //            height: 3,
                              //            width: 120,
                              //          ):
                              //              SizedBox(),
                              //
                              //       ],
                              //     ),
                              //   ),
                              //   // Container(
                              //   //   decoration: BoxDecoration(
                              //   //     borderRadius: BorderRadius.circular(20),
                              //   //     color: cubit.pend? c2:c4,
                              //   //   ),
                              //   //   child: Padding(
                              //   //     padding: const EdgeInsets.all(8.0),
                              //   //     child: Center(
                              //   //       child:
                              //   //     ),
                              //   //   ),
                              //   // ),
                              // )
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Expanded(
                              child:  GestureDetector(
                                onTap: () {
                                  cubit.pend_Complete_Function(pe: false);                                },
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: cubit.pend
                                        ? Colors.grey.withOpacity(.2)
                                        : Colors.indigo
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child:Container(
                                      height: 30,
                                      width: 30,

                                      alignment: Alignment.center,
                                      child: Text('Completed',
                                        style: TextStyle(
                                          fontSize: 25,
                                          color: cubit.pend
                                              ? c1
                                              : c5,
                                        ),
                                      )
                                    ),
                                  ),
                                ),
                              ),

                            // GestureDetector(
                              //   onTap: () {
                              //     cubit.pend_Complete_Function(pe: false);
                              //   },
                              //   child:  Center(
                              //     child: Column(
                              //       children: [
                              //         Text(
                              //           'Completed',
                              //           style: TextStyle(
                              //             fontSize: 23,
                              //             fontWeight: FontWeight.bold,
                              //             color: Colors.green
                              //             //cubit.pend? c1:c5,
                              //           ),
                              //         ),
                              //         !cubit.pend? Container(
                              //           color: Colors.grey,
                              //           height: 3,
                              //           width: 120,
                              //         ):
                              //         SizedBox(),
                              //       ],
                              //     ),
                              //   ),
                              //   // Container(
                              //   //   decoration: BoxDecoration(
                              //   //     borderRadius: BorderRadius.circular(20),
                              //   //     color:  cubit.pend? c4:c2,
                              //   //   ),
                              //   //   child: Padding(
                              //   //     padding: const EdgeInsets.all(8.0),
                              //   //     child: Center(
                              //   //       child:
                              //   //     ),
                              //   //   ),
                              //   // ),
                              // )
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30,),
                    ConditionalBuilder(condition: cubit.pend,
                      builder: (context) =>Container(
                        height: 500,
                        child: ListView.separated(
                          physics: BouncingScrollPhysics(),
                          itemBuilder:(context,index)=>InkWell(
                              onTap: (){
                                cubit.all_assign_files_List=[];

                                navigateTo(context,STU_About_Assign_Screen() );
                              },
                              child: Build_STU_pend_Tasks()),
                          separatorBuilder: (context,index)=>SizedBox(height: 15,),
                          itemCount: 5,
                        ),
                      ) ,
                      fallback: (context) => Container(
                        height:500,
                        child: ListView.separated(
                          physics: BouncingScrollPhysics(),
                          itemBuilder:(context,index)=>InkWell(
                              onTap: (){
                                // navigateTo(context,STU_Assign_Screen() );
                              },
                              child: Build_STU_complete_Tasks()),
                          separatorBuilder: (context,index)=>SizedBox(height: 15,),
                          itemCount: 8,
                        ),
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
