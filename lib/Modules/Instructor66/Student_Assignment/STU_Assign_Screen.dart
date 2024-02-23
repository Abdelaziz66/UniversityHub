
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:day_night_time_picker/lib/daynight_timepicker.dart';
import 'package:day_night_time_picker/lib/state/time.dart';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:university_hup/Modules/Student/Student_Assignment/STU_About_Assign_Screen.dart';

import 'package:university_hup/Shared/Component/component.dart';
import 'package:university_hup/Shared/Cons_widget.dart';
import 'package:university_hup/Shared/Cubit/App_cubit.dart';
import 'package:university_hup/Shared/Cubit/App_state.dart';
import 'package:university_hup/Shared/constant.dart';



class INS_Assign_Screen extends StatelessWidget {
   INS_Assign_Screen({Key? key}) : super(key: key);
    var scafoldkey3 = GlobalKey<ScaffoldState>();



  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit, App_state>(
      listener: (context, state) {},
      builder: (context, state) {
        App_cubit cubit=App_cubit.get(context);
        bool isvisbile=false;
        Time _time = Time(hour: 11, minute: 30, second: 20);
        return Scaffold(
          key: scafoldkey3,
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
          //                 //'https://s3-alpha-sig.figma.com/img/d231/da63/0330da0307bd5fd4566c82a5540e92e7?Expires=1707091200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=J63YbqUJG4~63Q6d5hwEqu3tJAI~012Z3wt3kH03TzaxbPJV4dw-ICasQIcTcQ0CtXSIODocBY7-mJoDxKOdvk~qxLK9~Ouxq5GxPxHrwv6UkMN2TaYWEsi9JCTnTbVOVHQTpzLamoqryU62-W-0H4Noh5W1DQFu1oIqmeFk7Pjldr~RsrNx4aByu~Kim87HDgzZfUVxf3n1F8ONO6iIVJ~5O8IWTJI7HEvjAs9D3hs0uC20cwBq43JH-Cv0d6HE9eHELQ5Rdu1MEWFb9-Slv5q9NKLQaZ-3WNl6gbHB4~9txFsm8fOMBa7qNkonJyUVEzxWMdAL4uRtRaKHFDIlVQ__'
          //         ),
          //         fit: BoxFit.cover,
          //         height: 50,
          //         width: 50,
          //       ),
          //     ),
          //   ],
          // ),
          floatingActionButton: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 8),
            child: FloatingActionButton(
              onPressed: (){
                if(!isvisbile)
                {
                  isvisbile=!isvisbile;

                  scafoldkey3.currentState?.showBottomSheet(
                        (context) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GlassBoxWithBorder(
                        widget: Container(
                          height: 250,
                          child: Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: Column(
                              children: [
                                const Spacer(),
                                Container(
                                  alignment: Alignment.center,
                                  height: 70,

                                  decoration: BoxDecoration(
                                    // border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(18),
                                    color: Colors.white.withOpacity(.8),
                                  ),
                                  child: Padding(
                                    padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: TextFormField(
                                      // controller: emailcontroller,
                                      keyboardType: TextInputType.text,
                                      onFieldSubmitted: (value) {
                                        print(value);
                                      },
                                      onChanged: (value) {
                                        print(value);
                                      },
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Folder name can\'t be empty';
                                        }
                                        return null;
                                      },
                                      // toolbarOptions:
                                      //     ToolbarOptions(paste: true, copy: true),
                                      cursorColor: c1,
                                      style: const TextStyle(
                                        fontSize: 25,
                                      ),
                                      decoration: InputDecoration(
                                        prefixIcon: Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 6),
                                          child: FaIcon(
                                            FontAwesomeIcons.solidFolder,
                                            color: c1,
                                            size: 30,
                                          ),
                                        ),
                                        hintText: 'Folder task name',
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 15,),
                                Container(
                                  height: 60,
                                  child: Row(
                                    children: [
                                      Expanded(
                                          child: Default_Button(textFontSize: 20,onPressed: (){
                                            Navigator.of(context).push(
                                        showPicker(
                                          context: context,
                                          value: _time,
                                          sunrise: TimeOfDay(hour: 6, minute: 0), // optional
                                          sunset: TimeOfDay(hour: 18, minute: 0), // optional
                                          duskSpanInMinutes: 120, // optional
                                          onChange: (value){},

                                        ),
                                      );},
                                            text: 'Deadline',)),
                                      SizedBox(width: 15,),
                                      // GestureDetector(onTap:(){
                                      //
                                      //
                                      // } ,
                                      //     child: FaIcon(FontAwesomeIcons.clock)),
                                      Expanded(child: Default_Button(onPressed: (){},text: 'Upload task',textFontSize: 20)),
                                    ],
                                  ),
                                ),

                                SizedBox(height: 15,),

                                const Spacer(),
                              ],
                            ),
                          ),
                        ),
                        color:
                        Colors.blueGrey.withOpacity(.2),
                        borderRadius: 30,
                        x: 15,
                        y: 15,
                        BorderWidth: 3,
                        BorderColor: Colors.blueGrey,),
                    ),
                  );

                }
                else
                {

                  Navigator.pop(context);
                  isvisbile=!isvisbile;
                }

              },
              child:!isvisbile? FaIcon(FontAwesomeIcons.plus): FaIcon(FontAwesomeIcons.angleDown),

            ),
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 30,),
                  defaultAppbar(context:context),
                  const SizedBox(height: 30,),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  //   child: GlassBox(
                  //       widget: Padding(
                  //         padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 15),
                  //         child: Row(
                  //           mainAxisAlignment: MainAxisAlignment.center,
                  //           children: [
                  //
                  //
                  //             FaIcon(
                  //               FontAwesomeIcons.featherPointed,
                  //               color: c1.withOpacity(.9),
                  //             ),
                  //             const SizedBox(
                  //               width: 10,
                  //             ),
                  //             Text(
                  //               'Assignments',
                  //               style: TextStyle(
                  //                 fontSize: 17,
                  //                 fontWeight: FontWeight.w700,
                  //                 color: c1,
                  //               ),
                  //             ),
                  //             Spacer(),
                  //             FaIcon(
                  //               FontAwesomeIcons.angleRight,
                  //               color: c1.withOpacity(.9),
                  //             ),
                  //             Spacer(),
                  //             FaIcon(
                  //               Icons.add_task,
                  //               color: c1.withOpacity(.9),
                  //             ),
                  //             const SizedBox(
                  //               width: 10,
                  //             ),
                  //             Text(
                  //               'State',
                  //               style: TextStyle(
                  //                 fontSize: 17,
                  //                 fontWeight: FontWeight.w700,
                  //                 color: c1,
                  //               ),
                  //             ),
                  //           ],
                  //         ),
                  //       ),
                  //       color: Colors.blueGrey.withOpacity(.15),
                  //       borderRadius: 15,
                  //       x: 0,
                  //       y: 0
                  //   ),
                  // ),
                  // SizedBox(height: 15,),
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
                                      '4 task Running',
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
                                      '7 task completed',
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
                                      '6 task received to day',
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
                        child: ListView.separated(
                          physics: const BouncingScrollPhysics(),
                          itemBuilder:(context,index)=>InkWell(
                              onTap: (){
                                cubit.all_assign_files_List=[];

                                navigateTo(context,STU_About_Assign_Screen() );
                              },
                              child: Build_STU_pend_Tasks()),
                          separatorBuilder: (context,index)=>const SizedBox(height: 10,),
                          itemCount: 3,
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
