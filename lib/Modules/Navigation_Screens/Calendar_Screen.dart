import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:day_night_time_picker/lib/daynight_timepicker.dart';
import 'package:day_night_time_picker/lib/state/time.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:university_hup/Shared/Component/component.dart';
import 'package:university_hup/Shared/Cubit/App_cubit.dart';
import 'package:university_hup/Shared/Cubit/App_state.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';

import '../../Shared/Cons_widget.dart';
import '../../Shared/constant.dart';

class Calendar_screen extends StatelessWidget {
  Calendar_screen({super.key});
  var scafoldkey4 = GlobalKey<ScaffoldState>();
  var eventBodycontroller = TextEditingController();
  var formkey = GlobalKey<FormState>();
  var startDateControler = TextEditingController();
  var endDateControler = TextEditingController();

  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit, App_state>(
      listener: (context, state) => {},
      builder: (context, state) {
        int selectedIndex = 0;
        bool isvisbile = false;
        var startDate;
        var endDate;
        Time _time = Time(hour: 11, minute: 30, second: 00);
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
          Colors.lightBlueAccent.withOpacity(.18),
          Colors.pinkAccent.withOpacity(.12),
          Colors.greenAccent.withOpacity(.18),
          Colors.deepPurpleAccent.withOpacity(.18),
        ];
        List Calender_Color2 = [
          Colors.blue,
          Colors.pinkAccent,
          Colors.green,
          Colors.deepPurple,
        ];
        return Scaffold(
            key: scafoldkey4,
            backgroundColor: Colors.transparent,
            floatingActionButton: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 60.0, horizontal: 8),
              child: FloatingActionButton(
                  onPressed: () {
                    print('fffff');
                    showDialog<String>(
                      context: context,
                      barrierColor: Colors.black.withOpacity(.3),
                      useSafeArea: true,
                      builder: (BuildContext context) => AlertDialog(
                        insetPadding: const EdgeInsets.all(0.0),
                        scrollable: false,
                        shadowColor: Colors.transparent,
                        content: Center(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: GlassBox(
                                  widget: Stack(
                                    children: [
                                      Column(
                                        children: [
                                          const Spacer(),
                                          Padding(
                                            padding: const EdgeInsets.all(15.0),
                                            child: GlassBoxWithBorder(
                                              widget: Container(
                                                height: 350,
                                                child: Padding(
                                                  padding: const EdgeInsets
                                                      .only(
                                                      bottom: 25.0,
                                                      left: 25,
                                                    right: 25,
                                                    top: 20
                                                  ),
                                                  child: Form(
                                                    key: formkey,
                                                    child: Column(
                                                      children: [
                                                        const Spacer(),
                                                        Row(
                                                          children: [
                                                            FaIcon(FontAwesomeIcons.calendar,size: 30,),
                                                            SizedBox(width: 15,),
                                                            Text(
                                                              'Add event for this date\n${DateFormat("yyyy-MM-dd").format(cubit.selctedDay)}',
                                                              maxLines: 2,
                                                              overflow: TextOverflow.ellipsis,
                                                              style:
                                                                  Theme.of(context)
                                                                      .textTheme
                                                                      .subtitle2?.copyWith(fontSize: 18,color: Colors.black),

                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 15,
                                                        ),
                                                        Container(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  vertical: 5,
                                                                  horizontal:
                                                                      10),
                                                          alignment:
                                                              Alignment.center,
                                                          height: 60,
                                                          decoration:
                                                              BoxDecoration(
                                                            // border: Border.all(color: Colors.white),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        18),
                                                            color: Colors.white
                                                                .withOpacity(
                                                                    .8),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                        0.0),
                                                            child:
                                                                TextFormField(
                                                              controller:
                                                                  eventBodycontroller,
                                                              keyboardType:
                                                                  TextInputType
                                                                      .text,
                                                              onFieldSubmitted:
                                                                  (value) {
                                                                print(value);
                                                              },
                                                              validator:
                                                                  (value) {
                                                                if (value!
                                                                    .isEmpty) {
                                                                  return 'Event title can\'t be empty';
                                                                }
                                                                return null;
                                                              },
                                                              // toolbarOptions:
                                                              //     ToolbarOptions(paste: true, copy: true),
                                                              cursorColor: c1,
                                                              style:
                                                                  const TextStyle(
                                                                fontSize: 18,
                                                              ),
                                                              decoration:
                                                                  InputDecoration(
                                                                prefixIcon:
                                                                    Padding(
                                                                  padding: const EdgeInsets
                                                                      .symmetric(
                                                                      horizontal:
                                                                          10.0,
                                                                      vertical:
                                                                          10),
                                                                  child: FaIcon(
                                                                    FontAwesomeIcons
                                                                        .calendar,
                                                                    color: c1,
                                                                    size: 25,
                                                                  ),
                                                                ),
                                                                hintText:
                                                                    'Enter event title',
                                                                border:
                                                                    InputBorder
                                                                        .none,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 15,
                                                        ),
                                                        Container(
                                                          height: 50,
                                                          child: Row(
                                                            children: [
                                                              Expanded(
                                                                  child:
                                                                      Default_Button(
                                                                color:  Colors.teal.withOpacity(.7),
                                                                textFontSize:
                                                                    20,
                                                                onPressed: () {
                                                                  Navigator.of(
                                                                          context)
                                                                      .push(
                                                                    showPicker(
                                                                      key:
                                                                          formkey,
                                                                      context:
                                                                          context,
                                                                      value:
                                                                          _time,
                                                                      sunrise: TimeOfDay(
                                                                          hour:
                                                                              6,
                                                                          minute:
                                                                              0), // optional
                                                                      sunset: TimeOfDay(
                                                                          hour:
                                                                              18,
                                                                          minute:
                                                                              0), // optional
                                                                      duskSpanInMinutes:
                                                                          120, // optional
                                                                      onChange:
                                                                          (value) {
                                                                        cubit.startTime =
                                                                            '${DateFormat("yyyy-MM-ddT${value.hour}:${value.minute}:${value.second}").format(cubit.selctedDay)}';
                                                                        print(cubit
                                                                            .startTime);
                                                                      },
                                                                    ),
                                                                  );
                                                                  // showDatePicker(
                                                                  //   context: context,
                                                                  //   initialDate: DateTime.now(),
                                                                  //   firstDate: DateTime(2022),
                                                                  //   lastDate: DateTime(2025),
                                                                  //   builder: (BuildContext context, Widget? child) {
                                                                  //     return Theme(
                                                                  //       data: ThemeData.light().copyWith(
                                                                  //         colorScheme: ColorScheme.light().copyWith(
                                                                  //           primary: Colors.blue, // Change the primary color as needed
                                                                  //         ),
                                                                  //       ),
                                                                  //       child: child!,
                                                                  //     );
                                                                  //   },
                                                                  // ).then((selectedDate) {
                                                                  //   if (selectedDate != null) {
                                                                  //     showTimePicker(
                                                                  //       context: context,
                                                                  //       initialTime: TimeOfDay.now(),
                                                                  //     ).then((selectedTime) {
                                                                  //       if (selectedTime != null) {
                                                                  //         DateTime selectedDateTime = DateTime(
                                                                  //           selectedDate.year,
                                                                  //           selectedDate.month,
                                                                  //           selectedDate.day,
                                                                  //           selectedTime.hour,
                                                                  //           selectedTime.minute,
                                                                  //         );
                                                                  //         print('Selected date and time: $selectedDateTime');
                                                                  //         startDate= DateFormat("yyyy-MM-ddTHH:mm:ss.SSS").format(selectedDateTime);
                                                                  //         // Handle the selected date and time as needed
                                                                  //       }
                                                                  //     });
                                                                  //   }
                                                                  // });
                                                                },
                                                                text:
                                                                    'Start',
                                                              )),
                                                              SizedBox(
                                                                width: 15,
                                                              ),
                                                              Expanded(
                                                                  child: Default_Button(

                                                                      color: Colors.red.withOpacity(.7),
                                                                      onPressed: () {
                                                                        Navigator.of(context)
                                                                            .push(
                                                                          showPicker(
                                                                            key:
                                                                                formkey,
                                                                            context:
                                                                                context,
                                                                            value:
                                                                                _time,
                                                                            sunrise:
                                                                                TimeOfDay(hour: 6, minute: 0), // optional
                                                                            sunset:
                                                                                TimeOfDay(hour: 18, minute: 0), // optional
                                                                            duskSpanInMinutes:
                                                                                120, // optional
                                                                            onChange:
                                                                                (value) {
                                                                              cubit.endTime = '${DateFormat("yyyy-MM-ddT${value.hour}:${value.minute}:${value.second}").format(cubit.selctedDay)}';
                                                                              print(cubit.endTime);
                                                                            },
                                                                          ),
                                                                        );
                                                                      },
                                                                      text: 'End',
                                                                      textFontSize: 20)),
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 15,
                                                        ),
                                                        Default_Button(
                                                            onPressed: () {
                                                              if (formkey
                                                                  .currentState!
                                                                  .validate()) {
                                                                cubit.AddEventToCalender(
                                                                    startDate: cubit
                                                                        .startTime,
                                                                    endDate: cubit
                                                                        .endTime,
                                                                    eventBody:
                                                                        eventBodycontroller
                                                                            .text);
                                                                Navigator.pop(
                                                                    context);
                                                              } else {
                                                                flutterToast(
                                                                    msg:
                                                                        'please enter the event title',
                                                                    backColor:
                                                                        Colors
                                                                            .red);
                                                              }
                                                            },
                                                            containerHeight: 50,
                                                            textFontSize: 20,
                                                            text: 'Add'),
                                                        // SizedBox(
                                                        //   height: 15,
                                                        // ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              color: Colors.white
                                                  .withOpacity(.5),
                                              borderRadius: 30,
                                              x: 15,
                                              y: 15,
                                              BorderWidth: 1,
                                              BorderColor: Colors.white,
                                            ),
                                            // GlassBoxWithBorder_Gradiant(
                                            //   widget: Padding(
                                            //     padding:
                                            //     const EdgeInsets
                                            //         .all(15.0),
                                            //     child:  Form(
                                            //       key: formkey,
                                            //       child: Padding(
                                            //         padding: const EdgeInsets.all(8.0),
                                            //       ),
                                            //     ),
                                            //   ),
                                            //   color: Colors.white
                                            //       .withOpacity(.5),
                                            //   borderRadius: 20,
                                            //   x: 18,
                                            //   y: 18,
                                            //   BorderWidth: 3,
                                            //   BorderColor:
                                            //   Colors.white,
                                            // ),
                                          ),
                                          const Spacer(
                                            flex: 1,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  color: Colors.transparent,
                                  borderRadius: 0,
                                  x: 3,
                                  y: 3),
                            ),
                          ),
                        ),
                        elevation: 0,
                        clipBehavior: Clip.none,
                        surfaceTintColor: Colors.transparent,
                        backgroundColor: Colors.transparent,
                        contentPadding: EdgeInsets.zero,
                      ),
                    );
                    // scafoldkey4.currentState?.showBottomSheet(
                    //   (context) => Form(
                    //     key: formkey,
                    //     child: Padding(
                    //       padding: const EdgeInsets.all(8.0),
                    //       child: GlassBoxWithBorder(
                    //         widget: Container(
                    //           height: 280,
                    //           child: Padding(
                    //             padding: const EdgeInsets.symmetric(vertical:50.0, horizontal: 25),
                    //             child: Column(
                    //               children: [
                    //                 const Spacer(),
                    //                 Container(
                    //                   alignment: Alignment.center,
                    //                   height: 70,
                    //                   decoration: BoxDecoration(
                    //                     // border: Border.all(color: Colors.white),
                    //                     borderRadius: BorderRadius.circular(18),
                    //                     color: Colors.white.withOpacity(.8),
                    //                   ),
                    //                   child: Padding(
                    //                     padding: const EdgeInsets.symmetric(
                    //                         horizontal: 8.0),
                    //                     child: TextFormField(
                    //                       controller: eventBodycontroller,
                    //                       keyboardType: TextInputType.text,
                    //                       onFieldSubmitted: (value) {
                    //                         print(value);
                    //                       },
                    //
                    //                       validator: (value) {
                    //                         if (value!.isEmpty) {
                    //                           return 'Event bodey can\'t be empty';
                    //                         }
                    //                         return null;
                    //                       },
                    //                       // toolbarOptions:
                    //                       //     ToolbarOptions(paste: true, copy: true),
                    //                       cursorColor: c1,
                    //                       style: const TextStyle(
                    //                         fontSize: 25,
                    //                       ),
                    //                       decoration: InputDecoration(
                    //                         prefixIcon: Padding(
                    //                           padding: const EdgeInsets.symmetric(
                    //                               horizontal: 20.0, vertical: 6),
                    //                           child: FaIcon(
                    //                             FontAwesomeIcons.solidFolder,
                    //                             color: c1,
                    //                             size: 30,
                    //                           ),
                    //                         ),
                    //                         hintText: 'Enter your event',
                    //                         border: InputBorder.none,
                    //                       ),
                    //                     ),
                    //                   ),
                    //                 ),
                    //                 SizedBox(
                    //                   height: 15,
                    //                 ),
                    //                 Container(
                    //                   height: 60,
                    //                   child: Row(
                    //                     children: [
                    //                       Expanded(
                    //                           child: Default_Button(
                    //                         textFontSize: 20,
                    //                         onPressed: () {
                    //                           // Navigator.of(context).push(
                    //                           //   showPicker(
                    //                           //    // key: formkey,
                    //                           //     context: context,
                    //                           //     value: _time,
                    //                           //     sunrise: TimeOfDay(
                    //                           //         hour: 6,
                    //                           //         minute: 0,
                    //                           //
                    //                           //     ), // optional
                    //                           //     sunset: TimeOfDay(
                    //                           //         hour: 18,
                    //                           //         minute: 0), // optional
                    //                           //     duskSpanInMinutes:
                    //                           //         120, // optional
                    //                           //     onChange: (value) {
                    //                           //       startDate=value.toString();
                    //                           //     },
                    //                           //   ),
                    //                           // );
                    //                           showDatePicker(
                    //                             context: context,
                    //                             initialDate: DateTime.now(),
                    //                             firstDate: DateTime(2022),
                    //                             lastDate: DateTime(2025),
                    //                             builder: (BuildContext context, Widget? child) {
                    //                               return Theme(
                    //                                 data: ThemeData.light().copyWith(
                    //                                   colorScheme: ColorScheme.light().copyWith(
                    //                                     primary: Colors.blue, // Change the primary color as needed
                    //                                   ),
                    //                                 ),
                    //                                 child: child!,
                    //                               );
                    //                             },
                    //                           ).then((selectedDate) {
                    //                             if (selectedDate != null) {
                    //                               showTimePicker(
                    //                                 context: context,
                    //                                 initialTime: TimeOfDay.now(),
                    //                               ).then((selectedTime) {
                    //                                 if (selectedTime != null) {
                    //                                   DateTime selectedDateTime = DateTime(
                    //                                     selectedDate.year,
                    //                                     selectedDate.month,
                    //                                     selectedDate.day,
                    //                                     selectedTime.hour,
                    //                                     selectedTime.minute,
                    //                                   );
                    //                                   print('Selected date and time: $selectedDateTime');
                    //                                   startDate= DateFormat("yyyy-MM-ddTHH:mm:ss.SSS").format(selectedDateTime);
                    //                                   // Handle the selected date and time as needed
                    //                                 }
                    //                               });
                    //                             }
                    //                           });
                    //
                    //                         },
                    //                         text: 'Start date',
                    //                       )),
                    //                       SizedBox(
                    //                         width: 15,
                    //                       ),
                    //                       // GestureDetector(onTap:(){
                    //                       //
                    //                       //
                    //                       // } ,
                    //                       //     child: FaIcon(FontAwesomeIcons.clock)),
                    //                       Expanded(
                    //                           child: Default_Button(
                    //                               onPressed: () {
                    //                                 showDatePicker(
                    //                                   context: context,
                    //                                   initialDate: DateTime.now(),
                    //                                   firstDate: DateTime(2022),
                    //                                   lastDate: DateTime(2025),
                    //                                   builder: (BuildContext context, Widget? child) {
                    //                                     return Theme(
                    //                                       data: ThemeData.light().copyWith(
                    //                                         colorScheme: ColorScheme.light().copyWith(
                    //                                           primary: Colors.blue, // Change the primary color as needed
                    //                                         ),
                    //                                       ),
                    //                                       child: child!,
                    //                                     );
                    //                                   },
                    //                                 ).then((selectedDate) {
                    //                                   if (selectedDate != null) {
                    //                                     showTimePicker(
                    //                                       context: context,
                    //                                       initialTime: TimeOfDay.now(),
                    //                                     ).then((selectedTime) {
                    //                                       if (selectedTime != null) {
                    //                                         DateTime selectedDateTime = DateTime(
                    //                                           selectedDate.year,
                    //                                           selectedDate.month,
                    //                                           selectedDate.day,
                    //                                           selectedTime.hour,
                    //                                           selectedTime.minute,
                    //                                         );
                    //                                         print('Selected date and time: $selectedDateTime');
                    //                                         endDate= DateFormat("yyyy-MM-ddTHH:mm:ss.SSS").format(selectedDateTime);
                    //                                         // Handle the selected date and time as needed
                    //                                       }
                    //                                     });
                    //                                   }
                    //                                 });
                    //
                    //                                 //
                    //                                 // DatePicker.showDatePicker(
                    //                                 //   context,
                    //                                 //   showTitleActions: true,
                    //                                 //   minTime: DateTime(2000),
                    //                                 //   maxTime: DateTime(2100),
                    //                                 //   onConfirm: (date) {
                    //                                 //     print(date);
                    //                                 //     endDate = date;
                    //                                 //   },
                    //                                 //   currentTime: endDate,
                    //                                 //   locale: LocaleType.en,
                    //                                 // );
                    //                                 // Navigator.of(context).push(
                    //                                 //   showPicker(
                    //                                 //     context: context,
                    //                                 //     value: _time,
                    //                                 //     sunrise: TimeOfDay(
                    //                                 //         hour: 6,
                    //                                 //         minute: 0), // optional
                    //                                 //     sunset: TimeOfDay(
                    //                                 //         hour: 18,
                    //                                 //         minute: 0), // optional
                    //                                 //     duskSpanInMinutes:
                    //                                 //     120, // optional
                    //                                 //     onChange: (value) {
                    //                                 //       endDate=value.toString();
                    //                                 //     },
                    //                                 //
                    //                                 //   ),
                    //                                 // );
                    //                               },
                    //                               text: 'End date',
                    //                               textFontSize: 20)),
                    //                     ],
                    //                   ),
                    //                 ),
                    //                 SizedBox(
                    //                   height: 15,
                    //                 ),
                    //                 const Spacer(),
                    //               ],
                    //             ),
                    //           ),
                    //         ),
                    //         color: Colors.blueGrey.withOpacity(.2),
                    //         borderRadius: 30,
                    //         x: 15,
                    //         y: 15,
                    //         BorderWidth: 3,
                    //         BorderColor: Colors.blueGrey,
                    //       ),
                    //     ),
                    //   ),
                    // );
                    //  cubit.ChangeVisibility();

                    //     else {
                    //
                    // if (formkey.currentState!.validate()) {
                    //   print(startDateControler);
                    //   print(endDate);
                    //   Navigator.pop(context);
                    //   isvisbile = !isvisbile;
                    //   cubit.AddEventToCalender(
                    //     startDate: startDate,
                    //     endDate: endDate,
                    //     eventBody: eventBodycontroller.text
                    //   );
                    //
                    // }else{
                    //   flutterToast(msg: 'please enter the event body', backColor: Colors.red);
                    // }
                    //
                    //       //cubit.ChangeVisibility();
                    //     }
                  },
                  child: // !cubit.visiblity
                      FaIcon(FontAwesomeIcons.plus)
                  // : FaIcon(FontAwesomeIcons.check),
                  ),
            ),
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Colors.blueGrey.withOpacity(.6),
                                  width: 3)),
                        ),
                        child:
                            // Row(
                            // children: [
                            TableCalendar(
                          availableCalendarFormats: {
                            CalendarFormat.week: 'less',
                            CalendarFormat.month: 'more'
                          },
                          formatAnimationCurve: Curves.easeIn,
                          pageJumpingEnabled: true,
                          headerStyle: HeaderStyle(
                              decoration: BoxDecoration(),
                              formatButtonVisible: true,
                              titleCentered: true),
                          calendarStyle: CalendarStyle(
                              defaultTextStyle: TextStyle(
                                color: Colors.black,
                              ),
                              todayDecoration: BoxDecoration(
                                
                                
                                  color: Colors.blueGrey.withOpacity(.4),
                                  border:
                                      Border.all(color: Colors.blueGrey, width: 1),
                                  // borderRadius: BorderRadius.circular(30),
                                  shape: BoxShape.circle), ),

                          focusedDay: cubit.focusDay,
                          currentDay: cubit.selctedDay,
                          firstDay: DateTime.utc(2020, 1, 1),
                          lastDay: DateTime.utc(2030, 1, 1),
                              rowHeight: 50,
                              daysOfWeekHeight: 40,
                              pageAnimationEnabled: true,
                              pageAnimationCurve: Curves.easeIn,


                          onDaySelected: (selectedDay, focusedDay) {
                            cubit.SelectCalnderDay(
                                selectedday: selectedDay, focusday: focusedDay);
                            cubit.GetStuCalenderDayEvent();
                            print(cubit.focusDay);
                            //  print(object)
                          },
                          onFormatChanged: (format) {
                            print('format');
                            print(format);
                            cubit.changeCalenderFormat();
                          },

                          calendarFormat: cubit.isMonthFormat
                              ? CalendarFormat.month
                              : CalendarFormat.week,
                          // onFormatChanged: (format) {
                          //     _calendarFormat = format;
                          // }

                          // onDisabledDayTapped: (day) {
                          //   print('disable day');
                          // },
                          //   onHeaderTapped: (day) {
                          //
                          //   print(day);
                          // },
                        ),
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.all(15.0),
                    //   child: Container(
                    //     height: 90,
                    //     decoration: BoxDecoration(
                    //       border: Border(
                    //           bottom: BorderSide(
                    //               color: Colors.blueGrey.withOpacity(.6),
                    //               width: 3)),
                    //     ),
                    //     child: ListView.separated(
                    //       physics: const BouncingScrollPhysics(),
                    //       // shrinkWrap: true,
                    //       scrollDirection: Axis.horizontal,
                    //
                    //       // physics: ,
                    //       itemBuilder: (context, index) => InkWell(
                    //         onTap: (){
                    //           cubit.changeSelectedIndex_Calender(index);
                    //           //cubit.GetStuCalenderDayEvent(
                    //           //   start: '2024-03-07',
                    //           //   end: '2024-03-08'
                    //           // );
                    //           print(cubit.selectedIndex);
                    //         },
                    //         child: Calender_Item(
                    //           index: index,
                    //           Calender_Number: Calender_Number[index],
                    //           Calender_Day: Calender_Day[index],
                    //           selectedIndex: cubit.selectedIndex,
                    //          // iselected: Calender_Selected[index],
                    //         ),
                    //       ),
                    //       separatorBuilder: (context, index) => Container(
                    //         height: 0,
                    //         color: Colors.transparent,
                    //       ),
                    //       itemCount: Calender_Number.length,
                    //     ),
                    //   ),
                    // ),

                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child:
                            //ConditionalBuilder(
                            //  condition:cubit.getAllCalenderDayEvent.isNotEmpty ,
                            //builder:(context)=>
                            ListView.separated(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) => Calender_Event(
                              event: cubit.getAllCalenderDayEvent[index],
                              color1: Calender_Color1[(index + 1) % 4 == 0
                                  ? 3
                                  : (index + 1) % 4 == 1
                                      ? 2
                                      : (index + 1) % 4 == 2
                                          ? 1
                                          : 0],
                              color2: Calender_Color2[(index + 1) % 4 == 0
                                  ? 3
                                  : (index + 1) % 4 == 1
                                      ? 2
                                      : (index + 1) % 4 == 2
                                          ? 1
                                          : 0]),
                          separatorBuilder: (context, index) => Container(
                            height: 15,
                            color: Colors.transparent,
                          ),
                          itemCount: cubit.getAllCalenderDayEvent.length,
                        ),
                        //  fallback:(context)=>Center(child: Text('No event in this date'),),
                        //),
                      ),
                    ),
                    SizedBox(
                      height: 50,
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
            ));
      },
    );
  }
}
