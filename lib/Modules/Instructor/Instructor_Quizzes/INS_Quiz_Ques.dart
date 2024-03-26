import 'package:day_night_time_picker/lib/daynight_timepicker.dart';
import 'package:day_night_time_picker/lib/state/time.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:university_hup/Modules/Instructor/Instructor_Quizzes/INS_Quiz_Finish_Screen.dart';

import 'package:university_hup/Shared/Component/component.dart';
import 'package:university_hup/Shared/Cons_widget.dart';
import 'package:university_hup/Shared/Cubit/App_cubit.dart';
import 'package:university_hup/Shared/Cubit/App_state.dart';
import 'package:university_hup/Shared/constant.dart';

class INS_Quizes_Ques_Screen extends StatefulWidget {
  INS_Quizes_Ques_Screen({super.key});

  @override
  State<INS_Quizes_Ques_Screen> createState() => _STU_Quizes_Ques_ScreenState();
}

class _STU_Quizes_Ques_ScreenState extends State<INS_Quizes_Ques_Screen> {
  bool islast = false;
  bool ismiddle = false;
  String? quiz_ask = '';

  var boardcontroller = PageController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit, App_state>(
      listener: (context, state) {},
      builder: (context, state) {
        App_cubit cubit = App_cubit.get(context);
        Time _time = Time(hour: 11, minute: 30, second: 20);
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

                const SizedBox(
                  height: 30,
                ),
                defaultAppbar(context: context),
                const SizedBox(
                  height: 10,
                ),


                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0,right: 15,top: 15),
                    child: PageView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      onPageChanged: (index) {
                        if (index == cubit.stu_Quiz_Ques_lis.length - 1) {
                          setState(() {
                            islast = true;
                          });
                        } else if (index ==
                            cubit.stu_Quiz_Ques_lis.length - 2) {
                          setState(() {
                            ismiddle = true;
                          });
                        } else {
                          setState(() {
                            islast = false;
                            ismiddle = false;
                          });
                        }
                      },
                      controller: boardcontroller,
                      itemBuilder: (context, index) => SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Build_INS_Quiz_Ques(
                              context,
                              cubit.stu_Quiz_Ques_lis,
                              cubit.stu_Quiz_Ques_options,
                              index),
                        ),
                      ),
                      itemCount: cubit.stu_Quiz_Ques_lis.length,
                    ),
                  ),
                ),
                // Padding(
                //   padding:
                //       const EdgeInsets.only(left: 10.0, right: 10, bottom: 15),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                //     children: [
                //       Default_Button(
                //           text: 'Add more',
                //           containerHeight: 50,
                //           containerWidth: 150,
                //           onPressed: () {
                //             boardcontroller.nextPage(
                //               duration: Duration(
                //                 milliseconds: 1500,
                //               ),
                //               curve: Curves.fastLinearToSlowEaseIn,
                //             );
                //           }),
                //       Default_Button(
                //           text: 'Finished',
                //           containerHeight: 50,
                //           containerWidth: 150,
                //           onPressed: () {
                //             Navigator.push(
                //                 context,
                //                 MaterialPageRoute(
                //                   builder: (context) =>
                //                       INS_Quiz_Finish_Screen(),
                //                 ));
                //           }),
                //     ],
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0,right: 10,bottom: 10),
                  child: GlassBox(
                      widget:BottomNavigationBar(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          // currentIndex: 2,
                          type:BottomNavigationBarType.fixed ,
                          selectedLabelStyle: TextStyle(color: Colors.black.withOpacity(.6)),
                          unselectedLabelStyle: TextStyle(color: Colors.black.withOpacity(.6)),
                          mouseCursor: MouseCursor.defer,
                         showSelectedLabels: true,
                          useLegacyColorScheme: false,
                          showUnselectedLabels: true,


                          onTap: (index){
                            print('------------------------------------');
                            print(index);
                            switch(index){
                              case 0:
                                boardcontroller.previousPage(
                                  duration: Duration(
                                    milliseconds: 1500,
                                  ),
                                  curve: Curves.fastLinearToSlowEaseIn,
                                );
                                break;

                              case 1:
                                boardcontroller.nextPage(
                                  duration: Duration(
                                    milliseconds: 1500,
                                  ),
                                  curve: Curves.fastLinearToSlowEaseIn,
                                );
                                break;
                              case 2:
                                Alrat(
                                    context: context,
                                    no: () {
                                      Navigator.pop(context);
                                    },
                                    text: 'Do you want to save quiz ?',
                                    yes: () {});
                                break;
                              case 3:
                                Alrat(
                                    context: context,
                                    no: () {
                                      Navigator.pop(context);
                                    },
                                    text: 'Do you want to Publish quiz ?',
                                    yes: () {  Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              INS_Quiz_Finish_Screen(),
                                        ));});

                                break;
                            }

                          },
                          // selectedIndex: 3,


                          // destinations: [
                          //
                          //   Column(
                          //     crossAxisAlignment: CrossAxisAlignment.center,
                          //     mainAxisAlignment: MainAxisAlignment.center,
                          //     children: [
                          //       FaIcon(
                          //         FontAwesomeIcons.minus,
                          //         size: 20,
                          //         color: Colors.red,
                          //       ),
                          //       SizedBox(
                          //         height: 7,
                          //       ),
                          //       Text(
                          //         'remove Q',
                          //         textAlign: TextAlign.start,
                          //         style: TextStyle(
                          //             fontWeight: FontWeight.w700, fontSize: 12),
                          //       ),
                          //     ],
                          //   ),
                          //   Column(
                          //     crossAxisAlignment: CrossAxisAlignment.center,
                          //     mainAxisAlignment: MainAxisAlignment.center,
                          //     children: [
                          //       FaIcon(
                          //         FontAwesomeIcons.plus,
                          //         size: 20,
                          //         color: Colors.teal,
                          //       ),
                          //       SizedBox(
                          //         height: 7,
                          //       ),
                          //       Text(
                          //         'Add Q',
                          //         textAlign: TextAlign.start,
                          //         style: TextStyle(
                          //             fontWeight: FontWeight.w700, fontSize: 12),
                          //       ),
                          //     ],
                          //   ),
                          //   Column(
                          //     crossAxisAlignment: CrossAxisAlignment.center,
                          //     mainAxisAlignment: MainAxisAlignment.center,
                          //     children: [
                          //       FaIcon(
                          //         FontAwesomeIcons.save,
                          //         size: 20,
                          //         color: Colors.indigoAccent,
                          //       ),
                          //       SizedBox(
                          //         height: 7,
                          //       ),
                          //       Text(
                          //         'Save',
                          //         textAlign: TextAlign.start,
                          //         style: TextStyle(
                          //             fontWeight: FontWeight.w700, fontSize: 12),
                          //       ),
                          //     ],
                          //   ),
                          //   Column(
                          //     crossAxisAlignment: CrossAxisAlignment.center,
                          //     mainAxisAlignment: MainAxisAlignment.center,
                          //     children: [
                          //       FaIcon(
                          //         FontAwesomeIcons.check,
                          //         size: 20,
                          //         color: Colors.blue,
                          //       ),
                          //       SizedBox(
                          //         height: 7,
                          //       ),
                          //       Text(
                          //         'Publish',
                          //         textAlign: TextAlign.start,
                          //         style: TextStyle(
                          //             fontWeight: FontWeight.w700, fontSize: 12),
                          //       ),
                          //     ],
                          //   ),
                          // ],
                        items: [
                            BottomNavigationBarItem(
                              icon: FaIcon(
                                FontAwesomeIcons.minus,
                                size: 20,
                                color: Colors.red,
                              ),
                              label: 'remove Q',


                            ),
                        BottomNavigationBarItem(
                          icon: FaIcon(
                            FontAwesomeIcons.plus,
                            size: 20,
                            color: Colors.teal,
                          ),
                          label: 'Add Q',


                        ),
                        BottomNavigationBarItem(
                          icon: FaIcon(
                            FontAwesomeIcons.save,
                            size: 20,
                            color: Colors.indigoAccent,
                          ),
                          label: 'Save',


                        ),
                        BottomNavigationBarItem(
                          icon: FaIcon(
                            FontAwesomeIcons.check,
                            size: 20,
                            color: Colors.blue,
                          ),
                          label: 'Publish',


                        ),
                      ],
                      ),
                      color: Colors.blueGrey.withOpacity(.15),
                      borderRadius: 20,
                      x: 0,
                      y: 0),
                ),

              ],
            ),
          ),
        );
      },
    );
  }
}
