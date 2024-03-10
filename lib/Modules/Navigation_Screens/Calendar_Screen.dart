import 'package:day_night_time_picker/lib/state/time.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
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
  var startDateControler=TextEditingController();
  var endDateControler=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit, App_state>(
      listener: (context, state) => {},
      builder: (context, state) {
       bool isvisbile=false;
       var startDate;
       var endDate;
        Time _time = Time(hour: 11, minute: 30, second: 20);
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
                  const EdgeInsets.symmetric(vertical:60.0, horizontal: 8),
              child: FloatingActionButton(
                onPressed: () {
                  print('fffff');
                  print(isvisbile);
                  if (isvisbile==false) {
                    isvisbile = !isvisbile;

                    scafoldkey4.currentState?.showBottomSheet(
                      (context) => Form(
                        key: formkey,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GlassBoxWithBorder(
                            widget: Container(
                              height: 280,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical:50.0, horizontal: 25),
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
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: TextFormField(
                                          controller: eventBodycontroller,
                                          keyboardType: TextInputType.text,
                                          onFieldSubmitted: (value) {
                                            print(value);
                                          },

                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return 'Event bodey can\'t be empty';
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
                                              padding: const EdgeInsets.symmetric(
                                                  horizontal: 20.0, vertical: 6),
                                              child: FaIcon(
                                                FontAwesomeIcons.solidFolder,
                                                color: c1,
                                                size: 30,
                                              ),
                                            ),
                                            hintText: 'Enter your event',
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      height: 60,
                                      child: Row(
                                        children: [
                                          Expanded(
                                              child: Default_Button(
                                            textFontSize: 20,
                                            onPressed: () {
                                              // Navigator.of(context).push(
                                              //   showPicker(
                                              //    // key: formkey,
                                              //     context: context,
                                              //     value: _time,
                                              //     sunrise: TimeOfDay(
                                              //         hour: 6,
                                              //         minute: 0,
                                              //
                                              //     ), // optional
                                              //     sunset: TimeOfDay(
                                              //         hour: 18,
                                              //         minute: 0), // optional
                                              //     duskSpanInMinutes:
                                              //         120, // optional
                                              //     onChange: (value) {
                                              //       startDate=value.toString();
                                              //     },
                                              //   ),
                                              // );
                                              showDatePicker(
                                                context: context,
                                                initialDate: DateTime.now(),
                                                firstDate: DateTime(2022),
                                                lastDate: DateTime(2025),
                                                builder: (BuildContext context, Widget? child) {
                                                  return Theme(
                                                    data: ThemeData.light().copyWith(
                                                      colorScheme: ColorScheme.light().copyWith(
                                                        primary: Colors.blue, // Change the primary color as needed
                                                      ),
                                                    ),
                                                    child: child!,
                                                  );
                                                },
                                              ).then((selectedDate) {
                                                if (selectedDate != null) {
                                                  showTimePicker(
                                                    context: context,
                                                    initialTime: TimeOfDay.now(),
                                                  ).then((selectedTime) {
                                                    if (selectedTime != null) {
                                                      DateTime selectedDateTime = DateTime(
                                                        selectedDate.year,
                                                        selectedDate.month,
                                                        selectedDate.day,
                                                        selectedTime.hour,
                                                        selectedTime.minute,
                                                      );
                                                      print('Selected date and time: $selectedDateTime');
                                                      startDate= DateFormat("yyyy-MM-ddTHH:mm:ss.SSS").format(selectedDateTime);
                                                      // Handle the selected date and time as needed
                                                    }
                                                  });
                                                }
                                              });

                                            },
                                            text: 'Start date',
                                          )),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          // GestureDetector(onTap:(){
                                          //
                                          //
                                          // } ,
                                          //     child: FaIcon(FontAwesomeIcons.clock)),
                                          Expanded(
                                              child: Default_Button(
                                                  onPressed: () {
                                                    showDatePicker(
                                                      context: context,
                                                      initialDate: DateTime.now(),
                                                      firstDate: DateTime(2022),
                                                      lastDate: DateTime(2025),
                                                      builder: (BuildContext context, Widget? child) {
                                                        return Theme(
                                                          data: ThemeData.light().copyWith(
                                                            colorScheme: ColorScheme.light().copyWith(
                                                              primary: Colors.blue, // Change the primary color as needed
                                                            ),
                                                          ),
                                                          child: child!,
                                                        );
                                                      },
                                                    ).then((selectedDate) {
                                                      if (selectedDate != null) {
                                                        showTimePicker(
                                                          context: context,
                                                          initialTime: TimeOfDay.now(),
                                                        ).then((selectedTime) {
                                                          if (selectedTime != null) {
                                                            DateTime selectedDateTime = DateTime(
                                                              selectedDate.year,
                                                              selectedDate.month,
                                                              selectedDate.day,
                                                              selectedTime.hour,
                                                              selectedTime.minute,
                                                            );
                                                            print('Selected date and time: $selectedDateTime');
                                                            endDate= DateFormat("yyyy-MM-ddTHH:mm:ss.SSS").format(selectedDateTime);
                                                            // Handle the selected date and time as needed
                                                          }
                                                        });
                                                      }
                                                    });

                                                    //
                                                    // DatePicker.showDatePicker(
                                                    //   context,
                                                    //   showTitleActions: true,
                                                    //   minTime: DateTime(2000),
                                                    //   maxTime: DateTime(2100),
                                                    //   onConfirm: (date) {
                                                    //     print(date);
                                                    //     endDate = date;
                                                    //   },
                                                    //   currentTime: endDate,
                                                    //   locale: LocaleType.en,
                                                    // );
                                                    // Navigator.of(context).push(
                                                    //   showPicker(
                                                    //     context: context,
                                                    //     value: _time,
                                                    //     sunrise: TimeOfDay(
                                                    //         hour: 6,
                                                    //         minute: 0), // optional
                                                    //     sunset: TimeOfDay(
                                                    //         hour: 18,
                                                    //         minute: 0), // optional
                                                    //     duskSpanInMinutes:
                                                    //     120, // optional
                                                    //     onChange: (value) {
                                                    //       endDate=value.toString();
                                                    //     },
                                                    //
                                                    //   ),
                                                    // );
                                                  },
                                                  text: 'End date',
                                                  textFontSize: 20)),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                              ),
                            ),
                            color: Colors.blueGrey.withOpacity(.2),
                            borderRadius: 30,
                            x: 15,
                            y: 15,
                            BorderWidth: 3,
                            BorderColor: Colors.blueGrey,
                          ),
                        ),
                      ),
                    );
                  //  cubit.ChangeVisibility();

                  } else {

              if (formkey.currentState!.validate()) {
                print(startDateControler);
                print(endDate);
                Navigator.pop(context);
                isvisbile = !isvisbile;
                cubit.AddEventToCalender(
                  startDate: startDate,
                  endDate: endDate,
                  eventBody: eventBodycontroller.text
                );

              }else{
                flutterToast(msg: 'please enter the event body', backColor: Colors.red);
              }

                    //cubit.ChangeVisibility();
                  }
                },
                child:// !cubit.visiblity
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
                        height: 90,
                        decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Colors.blueGrey.withOpacity(.6),
                                  width: 3)),
                        ),
                        child: ListView.separated(
                          physics: const BouncingScrollPhysics(),
                          // shrinkWrap: true,
                          scrollDirection: Axis.horizontal,

                          // physics: ,
                          itemBuilder: (context, index) => InkWell(
                            onTap: (){
                              cubit.GetStuCalenderDayEvent(
                                start: '2024-03-07',
                                end: '2024-03-08'
                              );
                            },
                            child: Calender_Item(
                              Calender_Number: Calender_Number[index],
                              Calender_Day: Calender_Day[index],
                              iselected: Calender_Selected[index],
                            ),
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
                          physics: const BouncingScrollPhysics(),
                          // shrinkWrap: true,
                          scrollDirection: Axis.vertical,

                          // physics: ,
                          itemBuilder: (context, index) => Calender_Event(
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
                          itemCount: 10,
                        ),
                      ),
                    ),
                    SizedBox(height: 50,),
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
