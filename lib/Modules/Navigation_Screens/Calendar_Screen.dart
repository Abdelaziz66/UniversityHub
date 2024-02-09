import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:university_hup/Shared/Component/component.dart';
import 'package:university_hup/Shared/Cubit/App_cubit.dart';
import 'package:university_hup/Shared/Cubit/App_state.dart';

class Calendar_screen extends StatelessWidget {
  const Calendar_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit, App_state>(
      listener: (context, state) => {},
      builder: (context, state) {
        App_cubit cubit = App_cubit.get(context);
        List Calender_Number = [
          1,
          2,
          3,
          4,
          5,
          6,
          7,
        ];
        List Calender_Day = [
          'Saturday',
          'Sunday',
          'Monday',
          'Tuesday',
          'Wednesday',
          'Thursday',
          'Friday'
        ];
        List Calender_Selected = [
          true,
          false,
          false,
          false,
          false,
          false,
          false,
        ];
        List Calender_Color1 = [
          Colors.greenAccent.withOpacity(.25),
          Colors.lightBlueAccent.withOpacity(.25),
          Colors.deepPurpleAccent.withOpacity(.25),
        ];
        List Calender_Color2 = [
          Colors.green,
          Colors.blue,
          Colors.deepPurple,
        ];
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 90,
                    decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Colors.blueGrey.withOpacity(.6),
                              width: 3)),
                    ),
                    child: ListView.separated(
                      physics: BouncingScrollPhysics(),
                      // shrinkWrap: true,
                      scrollDirection: Axis.horizontal,

                      // physics: ,
                      itemBuilder: (context, index) => Calender_Item(
                        Calender_Number: Calender_Number[index],
                        Calender_Day: Calender_Day[index],
                        iselected: Calender_Selected[index],
                      ),
                      separatorBuilder: (context, index) => Container(
                        height: 0,
                        color: Colors.transparent,
                      ),
                      itemCount: Calender_Number.length,
                    ),
                  ),
                ),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: ListView.separated(
                      physics: BouncingScrollPhysics(),
                      // shrinkWrap: true,
                      scrollDirection: Axis.vertical,

                      // physics: ,
                      itemBuilder: (context, index) => Calender_Event(
                          color1: Calender_Color1[(index + 1) % 3 == 0
                              ? 2
                              : (index + 1) % 3 == 1
                                  ? 0
                                  : 1],
                          color2: Calender_Color2[(index + 1) % 3 == 0
                              ? 2
                              : (index + 1) % 3 == 1
                                  ? 0
                                  : 1]),
                      separatorBuilder: (context, index) => Container(
                        height: 15,
                        color: Colors.transparent,
                      ),
                      itemCount: 10,
                    ),
                  ),
                ),
                // Container(
                //   width: double.infinity,
                //
                //   decoration: BoxDecoration(
                //     color: Colors.greenAccent.withOpacity(.5),
                //     border: Border(
                //       left: BorderSide(color: Colors.green,width: 6,style: BorderStyle.solid),
                //     ),
                //   ),
                //   child:
                //   Padding(
                //     padding: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 15),
                //     child: Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       mainAxisAlignment: MainAxisAlignment.start,
                //       children: [
                //       Row(
                //
                //         children: [
                //           FaIcon(FontAwesomeIcons.circlePlay,size: 17,),
                //           SizedBox(width: 8,),
                //           Text('Parallel Programming - Dr Amr Masoud',
                //               style: TextStyle(
                //                   color: Colors.black.withOpacity(.8),
                //                   fontWeight: FontWeight.w600,
                //                   fontSize: 12)),
                //         ],
                //       ),
                //       SizedBox(height: 5,),
                //       Row(
                //         children: [
                //           FaIcon(FontAwesomeIcons.circleQuestion,size: 17,),
                //           SizedBox(width: 8,),
                //           Text('Second Quiz',
                //               style: TextStyle(
                //                   color: Colors.black.withOpacity(.8),
                //                   fontWeight: FontWeight.w600,
                //                   fontSize: 12)),
                //         ],
                //       ),
                //       SizedBox(height: 5,),
                //       Row(
                //         children: [
                //           FaIcon(FontAwesomeIcons.clock,size: 17,),
                //           SizedBox(width: 8,),
                //           Text('9:00 AM - 10:00 AM',
                //               style: TextStyle(
                //                   color: Colors.black.withOpacity(.8),
                //                   fontWeight: FontWeight.w600,
                //                   fontSize: 12)),
                //         ],
                //       ),
                //     ],),
                //   ),),
                // Container(
                //   width: double.infinity,
                //
                //   decoration: BoxDecoration(
                //     color: Colors.lightBlueAccent.withOpacity(.5),
                //     border: Border(
                //       left: BorderSide(color: Colors.blue,width: 6,style: BorderStyle.solid),
                //     ),
                //   ),
                //   child:
                //   Padding(
                //     padding: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 15),
                //     child: Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       mainAxisAlignment: MainAxisAlignment.start,
                //       children: [
                //         Row(
                //
                //           children: [
                //             FaIcon(FontAwesomeIcons.circlePlay,size: 17,),
                //             SizedBox(width: 8,),
                //             Text('Parallel Programming - Dr Amr Masoud',
                //                 style: TextStyle(
                //                     color: Colors.black.withOpacity(.8),
                //                     fontWeight: FontWeight.w600,
                //                     fontSize: 12)),
                //           ],
                //         ),
                //         SizedBox(height: 5,),
                //         Row(
                //           children: [
                //             FaIcon(FontAwesomeIcons.circleQuestion,size: 17,),
                //             SizedBox(width: 8,),
                //             Text('Second Quiz',
                //                 style: TextStyle(
                //                     color: Colors.black.withOpacity(.8),
                //                     fontWeight: FontWeight.w600,
                //                     fontSize: 12)),
                //           ],
                //         ),
                //         SizedBox(height: 5,),
                //         Row(
                //           children: [
                //             FaIcon(FontAwesomeIcons.clock,size: 17,),
                //             SizedBox(width: 8,),
                //             Text('9:00 AM - 10:00 AM',
                //                 style: TextStyle(
                //                     color: Colors.black.withOpacity(.8),
                //                     fontWeight: FontWeight.w600,
                //                     fontSize: 12)),
                //           ],
                //         ),
                //       ],),
                //   ),),
                // Container(
                //   width: double.infinity,
                //
                //   decoration: BoxDecoration(
                //     color: Colors.deepPurpleAccent.withOpacity(.4),
                //     border: Border(
                //       left: BorderSide(color: Colors.deepPurple,width: 6,style: BorderStyle.solid),
                //     ),
                //   ),
                //   child:
                //   Padding(
                //     padding: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 15),
                //     child: Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       mainAxisAlignment: MainAxisAlignment.start,
                //       children: [
                //         Row(
                //
                //           children: [
                //             FaIcon(FontAwesomeIcons.circlePlay,size: 17,),
                //             SizedBox(width: 8,),
                //             Text('Parallel Programming - Dr Amr Masoud',
                //                 style: TextStyle(
                //                     color: Colors.black.withOpacity(.8),
                //                     fontWeight: FontWeight.w600,
                //                     fontSize: 12)),
                //           ],
                //         ),
                //         SizedBox(height: 5,),
                //         Row(
                //           children: [
                //             FaIcon(FontAwesomeIcons.circleQuestion,size: 17,),
                //             SizedBox(width: 8,),
                //             Text('Second Quiz',
                //                 style: TextStyle(
                //                     color: Colors.black.withOpacity(.8),
                //                     fontWeight: FontWeight.w600,
                //                     fontSize: 12)),
                //           ],
                //         ),
                //         SizedBox(height: 5,),
                //         Row(
                //           children: [
                //             FaIcon(FontAwesomeIcons.clock,size: 17,),
                //             SizedBox(width: 8,),
                //             Text('9:00 AM - 10:00 AM',
                //                 style: TextStyle(
                //                     color: Colors.black.withOpacity(.8),
                //                     fontWeight: FontWeight.w600,
                //                     fontSize: 12)),
                //           ],
                //         ),
                //       ],),
                //   ),),
                // Padding(
                //   padding: const EdgeInsets.all(30.0),
                //   child: Container(height: 1.5,width: double.infinity,color: Colors.black.withOpacity(.6),),
                // ),
                // Container(
                //   width: double.infinity,
                //
                //   decoration: BoxDecoration(
                //     color: Colors.lightBlueAccent.withOpacity(.5),
                //     border: Border(
                //       left: BorderSide(color: Colors.blue,width: 6,style: BorderStyle.solid),
                //     ),
                //   ),
                //   child:
                //   Padding(
                //     padding: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 15),
                //     child: Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       mainAxisAlignment: MainAxisAlignment.start,
                //       children: [
                //         Row(
                //
                //           children: [
                //             FaIcon(FontAwesomeIcons.circlePlay,size: 17,),
                //             SizedBox(width: 8,),
                //             Text('Parallel Programming - Dr Amr Masoud',
                //                 style: TextStyle(
                //                     color: Colors.black.withOpacity(.8),
                //                     fontWeight: FontWeight.w600,
                //                     fontSize: 12)),
                //           ],
                //         ),
                //         SizedBox(height: 5,),
                //         Row(
                //           children: [
                //             FaIcon(FontAwesomeIcons.circleQuestion,size: 17,),
                //             SizedBox(width: 8,),
                //             Text('Second Quiz',
                //                 style: TextStyle(
                //                     color: Colors.black.withOpacity(.8),
                //                     fontWeight: FontWeight.w600,
                //                     fontSize: 12)),
                //           ],
                //         ),
                //         SizedBox(height: 5,),
                //         Row(
                //           children: [
                //             FaIcon(FontAwesomeIcons.clock,size: 17,),
                //             SizedBox(width: 8,),
                //             Text('9:00 AM - 10:00 AM',
                //                 style: TextStyle(
                //                     color: Colors.black.withOpacity(.8),
                //                     fontWeight: FontWeight.w600,
                //                     fontSize: 12)),
                //           ],
                //         ),
                //       ],),
                //   ),),
              ],
            ),
          ),
        );
      },
    );
  }
}
