import 'package:day_night_time_picker/lib/daynight_timepicker.dart';
import 'package:day_night_time_picker/lib/state/time.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:universityhup/Modules/Instructor/Instructor_Quizzes/INS_Quiz_Ques.dart';

import 'package:universityhup/Shared/Component/component.dart';
import 'package:universityhup/Shared/Cons_widget.dart';
import 'package:universityhup/Shared/Cubit/App_cubit.dart';
import 'package:universityhup/Shared/Cubit/App_state.dart';
import 'package:universityhup/Shared/constant.dart';







class INS_Quizes_Ques_Sceen extends StatefulWidget {
  const INS_Quizes_Ques_Sceen({super.key});



  @override
  State<INS_Quizes_Ques_Sceen> createState() => _STU_Quizes_Ques_ScreenState();
}

class _STU_Quizes_Ques_ScreenState extends State<INS_Quizes_Ques_Sceen> {
  bool islast = false;
  bool ismiddle =false;
  int _index = 0;
  String? quiz_ask= '';
  var boardcontroller = PageController();
  var stepcontroller=ScrollController();
  var formkey= GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit,App_state>(
      listener: (context,state){},
      builder: (context,state){
        App_cubit cubit =App_cubit.get(context);
        return Scaffold(
          body: SafeArea(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30,),
                defaultAppbar(context:context),
                const SizedBox(height: 30,),
                Expanded(
                  child: Form(
                    key: formkey,
                    child: Stepper(
                      currentStep: _index,
                      type: StepperType.vertical,
                      connectorColor: MaterialStateProperty.all(Colors.blue),
                      physics: BouncingScrollPhysics(),

                      elevation: 0,
                      connectorThickness: 3,
                      // stepIconBuilder: (stepIndex, stepState) => Container(
                      //   color: Colors.green,
                      //   height: 40,
                      //   width: 40,
                      // ),
                      controller:stepcontroller ,
                      controlsBuilder: (context, details) =>  Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: (){
                                details.onStepContinue!();



                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:BorderRadius.circular(12),
                                  color: Colors.blue,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 15),
                                  child: Text('Next',style: TextStyle(fontSize: 20,color: Colors.white),),
                                ),
                              ),
                            ),
                            SizedBox(width: 15,),
                            GestureDetector(
                              onTap: (){
                                details.onStepCancel!();
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:BorderRadius.circular(12),
                                  color: Colors.blueGrey.withOpacity(.2),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 15),
                                  child: Text('Back',style: TextStyle(fontSize: 20,color: Colors.black),),
                                ),
                              ),
                            ),


                          ],
                        ),
                      ),




                      onStepCancel: () {
                        if (_index > 0) {
                          setState(() {
                            _index -= 1;
                          });
                        }
                      },
                      onStepContinue: () {
                        switch(_index){
                          case 0:

                            setState(() {
                              _index += 1;
                            });
                            break;
                          case 1:
                            if(formkey.currentState!.validate()){
                              setState(() {
                                _index += 1;
                              });
                            }

                            break;
                          case 2:

                            Navigator.push(context, MaterialPageRoute(builder: (context) => INS_Quizes_Ques_Screen(),));
                            break;

                        }


                      },
                      onStepTapped: (int index) {
                        setState(() {
                          _index = index;
                        });
                      },


                      steps: [
                        Step(
                          isActive: _index >=0,
                          state:_index>=0?StepState.complete: StepState.disabled,
                          title:  Text('Title and Discription',style: TextStyle(fontSize: 23,fontWeight: FontWeight.w800),) ,
                          content: Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Column(
                              children: [
                                GlassBoxWithBorder_Gradiant2(
                                    widget:Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(vertical: 3.0,horizontal: 8),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [


                                                Expanded(
                                                  child: Text('name of quize which students can see it.',maxLines: 2,style: TextStyle(
                                                    fontSize: 17,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w500,
                                                  ),),
                                                ),
                                                // SizedBox(width: 60,),
                                                // Icon(Icons.add_chart,size: 30,),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            height: 70,
                                            decoration: BoxDecoration(
                                              // border: Border.all(color: Colors.white),
                                              borderRadius: BorderRadius.circular(18),
                                              color: Colors.blueGrey.withOpacity(.1),
                                            ),
                                            child: Padding(
                                              padding:
                                              const EdgeInsets.symmetric(horizontal: 8.0),
                                              child: TextFormField(
                                                controller: cubit.titlecontroller,



                                                keyboardType: TextInputType.text,
                                                onFieldSubmitted: (value) {
                                                  print(value);
                                                },
                                                onChanged: (value) {
                                                  print(value);
                                                },
                                                validator: (value) {
                                                  if (value!.isEmpty) {
                                                    return 'Title can\'t be empty';
                                                  }
                                                  return null;
                                                },
                                                // toolbarOptions:
                                                //     ToolbarOptions(paste: true, copy: true),
                                                cursorColor: c1,
                                                style: const TextStyle(
                                                  fontSize: 20,
                                                ),
                                                decoration: InputDecoration(
                                                  prefixIcon: Icon(
                                                    Icons.drive_file_rename_outline,
                                                    color: c1,
                                                    size: 30,
                                                  ),
                                                  hintText: 'Quiz Title',
                                                  border: InputBorder.none,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    BorderWidth: 0,
                                    BorderColor: Colors.black,

                                    color: Colors.white.withOpacity(.2),
                                    borderRadius: 20,
                                    x: 0,
                                    y: 0),
                                SizedBox(height: 15,),
                                // GlassBoxWithBorder_Gradiant2(
                                //     widget:Padding(
                                //       padding: const EdgeInsets.all(10.0),
                                //       child: Column(
                                //         crossAxisAlignment: CrossAxisAlignment.center,
                                //         mainAxisAlignment: MainAxisAlignment.center,
                                //         children: [
                                //           Padding(
                                //             padding: const EdgeInsets.symmetric(vertical: 3.0,horizontal: 8),
                                //             child: Row(
                                //               crossAxisAlignment: CrossAxisAlignment.center,
                                //               mainAxisAlignment: MainAxisAlignment.center,
                                //               children: [
                                //
                                //
                                //                 Expanded(
                                //                   child: Text('Folder contain quize result for all student, only you can see that.',maxLines: 2,style: TextStyle(
                                //                     fontSize: 17,
                                //                     color: Colors.black,
                                //                     fontWeight: FontWeight.w500,
                                //                   ),),
                                //                 ),
                                //                 // SizedBox(width: 60,),
                                //                 // Icon(Icons.add_chart,size: 30,),
                                //               ],
                                //             ),
                                //           ),
                                //           Container(
                                //             alignment: Alignment.center,
                                //             height: 70,
                                //             decoration: BoxDecoration(
                                //               // border: Border.all(color: Colors.white),
                                //               borderRadius: BorderRadius.circular(18),
                                //               color: Colors.blueGrey.withOpacity(.1),
                                //             ),
                                //             child: Padding(
                                //               padding:
                                //               const EdgeInsets.symmetric(horizontal: 8.0),
                                //               child: TextFormField(
                                //
                                //                 keyboardType: TextInputType.text,
                                //                 onFieldSubmitted: (value) {
                                //                   print(value);
                                //                 },
                                //                 onChanged: (value) {
                                //                   print(value);
                                //                 },
                                //                 validator: (value) {
                                //                   if (value!.isEmpty) {
                                //                     return 'Folder name can\'t be empty';
                                //                   }
                                //                   return null;
                                //                 },
                                //                 // toolbarOptions:
                                //                 //     ToolbarOptions(paste: true, copy: true),
                                //                 cursorColor: c1,
                                //                 style: const TextStyle(
                                //                   fontSize: 20,
                                //                 ),
                                //                 decoration: InputDecoration(
                                //                   prefixIcon: Icon(
                                //                     Icons.folder_open,
                                //                     color: c1,
                                //                     size: 30,
                                //                   ),
                                //                   hintText: 'Folder name',
                                //                   border: InputBorder.none,
                                //                 ),
                                //               ),
                                //             ),
                                //           ),
                                //         ],
                                //       ),
                                //     ),
                                //     BorderWidth: 0,
                                //     BorderColor: Colors.black,
                                //
                                //     color: Colors.white.withOpacity(.2),
                                //     borderRadius: 20,
                                //     x: 0,
                                //     y: 0),
                                // SizedBox(height: 15,),
                                GlassBoxWithBorder_Gradiant2(
                                    widget: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Container(
                                        height: 150,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 3),
                                              child: Text('You can add notice ?',maxLines: 2,style: TextStyle(
                                                fontSize: 17,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                              ),),
                                            ),

                                            Expanded(
                                              child: GestureDetector(
                                                onTap: (){

                                                },
                                                child: Container(
                                                  alignment: Alignment.center,

                                                  decoration: BoxDecoration(
                                                    // border: Border.all(color: Colors.white),
                                                    borderRadius: BorderRadius.circular(18),
                                                    color: Colors.blueGrey.withOpacity(.1),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                                    child: TextFormField(
                                                      controller: cubit.noticcontroller,
                                                      keyboardType: TextInputType.text,
                                                      onFieldSubmitted: (value) {
                                                        print(value);
                                                      },
                                                      onChanged: (value) {
                                                        print(value);
                                                      },
                                                      validator: (value) {
                                                        if (value!.isEmpty) {
                                                          return 'notice  can\'t be empty';
                                                        }
                                                        return null;
                                                      },
                                                      // toolbarOptions:
                                                      //     ToolbarOptions(paste: true, copy: true),
                                                      cursorColor: c1,
                                                      style: const TextStyle(
                                                        fontSize: 20,
                                                      ),
                                                      decoration: InputDecoration(
                                                        prefixIcon: Column(
                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                          children: [
                                                            SizedBox(height: 15,),
                                                            FaIcon(
                                                              FontAwesomeIcons.circleExclamation,
                                                              color: c1,
                                                              size: 25,
                                                            ),
                                                          ],
                                                        ),
                                                        hintText: 'Description',
                                                        border: InputBorder.none,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),




                                          ],

                                        ),
                                      ),
                                    ),
                                    BorderWidth: 0,
                                    BorderColor: Colors.black,

                                    color: Colors.white.withOpacity(.2),
                                    borderRadius: 20,
                                    x: 0,
                                    y: 0),


                              ],
                            ),
                          ),

                        ),

                        Step(
                            isActive: _index >=1,
                            state:_index>=1?StepState.complete: StepState.disabled,
                          title:  Text('Timing and points',style: TextStyle(fontSize: 23,fontWeight: FontWeight.w800),) ,

                          content: Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Column(
                              children: [
                                Container(
                                  height: 190,
                                  child: Column(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: GlassBoxWithBorder_Gradiant2(
                                            widget: Padding(
                                              padding: const EdgeInsets.all(10.0),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Expanded(
                                                    child: Padding(
                                                      padding: const EdgeInsets.only(left: 8.0),
                                                      child: Text('What about points ?',maxLines: 2,style: TextStyle(
                                                        fontSize: 17,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.w500,
                                                      ),),
                                                    ),
                                                  ),
                                                  SizedBox(width: 15,),
                                                  Expanded(
                                                    child: GestureDetector(
                                                      onTap: (){

                                                      },
                                                      child: Container(


                                                        decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(20),
                                                          color: Colors.blueGrey.withOpacity(.1),
                                                        ),
                                                        child:Container(
                                                          alignment: Alignment.center,

                                                          decoration: BoxDecoration(
                                                            // border: Border.all(color: Colors.white),
                                                            borderRadius: BorderRadius.circular(18),
                                                            color: Colors.blueGrey.withOpacity(.1),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                            const EdgeInsets.symmetric(horizontal: 8.0),
                                                            child: TextFormField(
                                                              controller: cubit.pointcontroller,
                                                              keyboardType: TextInputType.number,
                                                              onFieldSubmitted: (value) {
                                                                print(value);
                                                              },
                                                              onChanged: (value) {
                                                                print(value);
                                                              },
                                                              validator: (value) {
                                                                if (value!.isEmpty) {
                                                                  return 'points can\'t be empty';
                                                                }
                                                                return null;
                                                              },
                                                              // toolbarOptions:
                                                              //     ToolbarOptions(paste: true, copy: true),
                                                              cursorColor: c1,
                                                              style: const TextStyle(
                                                                fontSize: 20,
                                                              ),
                                                              decoration: InputDecoration(
                                                                prefixIcon: Icon(
                                                                  Icons. add_chart,
                                                                  color: c1,
                                                                  size: 30,
                                                                ),
                                                                hintText: 'Points',
                                                                border: InputBorder.none,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),




                                                ],

                                              ),
                                            ),
                                            BorderWidth: 0,
                                            BorderColor: Colors.black,

                                            color: Colors.white.withOpacity(.2),
                                            borderRadius: 20,
                                            x: 0,
                                            y: 0),
                                      ),
                                      SizedBox(height: 15,),
                                      Expanded(
                                        flex: 1,
                                        child: GlassBoxWithBorder_Gradiant2(
                                            widget: Padding(
                                              padding: const EdgeInsets.all(10.0),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [

                                                  Expanded(
                                                    child: Padding(
                                                      padding: const EdgeInsets.only(left: 8.0),
                                                      child: Text('Quize Time',maxLines: 2,style: TextStyle(
                                                        fontSize: 17,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.w500,
                                                      ),),
                                                    ),
                                                  ),
                                                  SizedBox(width: 15,),
                                                  Expanded(
                                                    flex: 1,
                                                    child: GestureDetector(
                                                      onTap: (){
                                                        // Navigator.of(context).push(
                                                        //   showPicker(
                                                        //     context: context,
                                                        //     value: _time,
                                                        //     sunrise: TimeOfDay(hour: 6, minute: 0), // optional
                                                        //     sunset: TimeOfDay(hour: 18, minute: 0), // optional
                                                        //     duskSpanInMinutes: 120, // optional
                                                        //     onChange: (value){},
                                                        //
                                                        //   ),
                                                        // );
                                                      },
                                                      child: Container(


                                                        decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(20),
                                                          color: Colors.blueGrey.withOpacity(.1),
                                                        ),
                                                        child:Container(
                                                          alignment: Alignment.center,

                                                          decoration: BoxDecoration(
                                                            // border: Border.all(color: Colors.white),
                                                            borderRadius: BorderRadius.circular(18),
                                                            color: Colors.blueGrey.withOpacity(.1),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                            const EdgeInsets.symmetric(horizontal: 8.0),
                                                            child: TextFormField(

                                                              keyboardType: TextInputType.number,
                                                              onFieldSubmitted: (value) {
                                                                print(value);
                                                              },
                                                              onChanged: (value) {
                                                                print(value);
                                                              },
                                                              validator: (value) {
                                                                if (value!.isEmpty) {
                                                                  return 'time can\'t be empty';
                                                                }
                                                                return null;
                                                              },
                                                              // toolbarOptions:
                                                              //     ToolbarOptions(paste: true, copy: true),
                                                              cursorColor: c1,
                                                              style: const TextStyle(
                                                                fontSize: 20,
                                                              ),
                                                              decoration: InputDecoration(
                                                                prefixIcon: Padding(
                                                                  padding: const EdgeInsets.only(top: 12.0,left: 8),
                                                                  child: FaIcon(
                                                                    FontAwesomeIcons.clock,
                                                                    color: c1,
                                                                    size: 25,
                                                                  ),
                                                                ),
                                                                hintText: 'Time',
                                                                border: InputBorder.none,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),




                                                ],

                                              ),
                                            ),
                                            BorderWidth: 0,
                                            BorderColor: Colors.black,

                                            color: Colors.white.withOpacity(.2),
                                            borderRadius: 20,
                                            x: 0,
                                            y: 0),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 15,),
                                Container(
                                  height: 200,
                                  child: GlassBoxWithBorder_Gradiant2(
                                      widget: Container(
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: [
                                              Row(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Determine Time',
                                                    maxLines: 2,
                                                    style: TextStyle(
                                                      fontSize: 17,
                                                      color: Colors.black,
                                                      fontWeight:
                                                      FontWeight.w500,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Expanded(
                                                child: GestureDetector(
                                                  onTap: () {
                                                    showDatePicker(
                                                      context: context,
                                                      initialDate:
                                                      DateTime.now(),
                                                      firstDate:
                                                      DateTime(2022),
                                                      lastDate:
                                                      DateTime(2025),
                                                      builder: (BuildContext
                                                      context,
                                                          Widget? child) {
                                                        return Theme(
                                                          data: ThemeData
                                                              .dark()
                                                              .copyWith(
                                                            colorScheme:
                                                            ColorScheme
                                                                .dark()
                                                                .copyWith(
                                                              primary: Colors
                                                                  .blue, // Change the primary color as needed
                                                            ),
                                                          ),
                                                          child: child!,
                                                        );
                                                      },
                                                    ).then((selectedDate) {
                                                      Navigator.of(context)
                                                          .push(
                                                        showPicker(
                                                          context: context,
                                                          value: time,
                                                          sunrise: TimeOfDay(
                                                              hour: 6,
                                                              minute:
                                                              0), // optional
                                                          sunset: TimeOfDay(
                                                              hour: 18,
                                                              minute:
                                                              0), // optional
                                                          duskSpanInMinutes:
                                                          120, // optional

                                                          borderRadius: 25,
                                                          accentColor:
                                                          Colors.blue,
                                                          blurredBackground:
                                                          true,
                                                          elevation: 0,

                                                          is24HrFormat:
                                                          false,
                                                          onCancel: () {
                                                            Navigator.pop(
                                                                context);
                                                          },
                                                          onChange:
                                                              (value) {
                                                            startminutes =
                                                                value
                                                                    .minute;
                                                            starthours =
                                                                value.hour;

                                                          },
                                                          // onChangeDateTime: (){},
                                                        ),
                                                      )
                                                          .then((value) {
                                                        if (selectedDate !=
                                                            null) {
                                                          DateTime
                                                          selectedDateTime =
                                                          DateTime(
                                                            selectedDate
                                                                .year,
                                                            selectedDate
                                                                .month,
                                                            selectedDate
                                                                .day,
                                                            starthours!,
                                                            startminutes!,
                                                          );
                                                          print(
                                                              'Selected date and time: $selectedDateTime');
                                                          cubit.StartDate_Function(time:DateFormat(
                                                              "yyyy-MM-ddTHH:mm:ss.SSS")
                                                              .format(
                                                              selectedDateTime) );
                                                          print(
                                                              '2024-03-23T22:31:30.911Z');
                                                          // Handle the selected date and time as needed
                                                        }
                                                      });
                                                    });

                                                  },
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                      BorderRadius
                                                          .circular(20),
                                                      color: Colors.teal
                                                          .withOpacity(.5),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                      const EdgeInsets
                                                          .symmetric(
                                                          horizontal:
                                                          15.0),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .start,
                                                        children: [
                                                          FaIcon(
                                                              FontAwesomeIcons
                                                                  .clock),
                                                          SizedBox(
                                                            width: 12,
                                                          ),
                                                          Text(
                                                            'Start',
                                                            style: TextStyle(
                                                              fontSize: 22,
                                                              color: Colors
                                                                  .black
                                                                  .withOpacity(
                                                                  .7),
                                                              fontWeight:
                                                              FontWeight
                                                                  .w700,
                                                            ),
                                                          ),
                                                          SizedBox(width: 8,),
                                                          Container(
                                                            decoration:
                                                            BoxDecoration(
                                                              borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                  15),
                                                              color: Colors
                                                                  .white
                                                                  .withOpacity(
                                                                  .3),
                                                            ),
                                                            child: Padding(
                                                              padding: const EdgeInsets
                                                                  .symmetric(
                                                                  vertical:
                                                                  8.0,
                                                                  horizontal:
                                                                  12),
                                                              child: Row(
                                                                children: [
                                                                  Text(        cubit.StartDate==null?'-- : --':
                                                                  '${DateTime.parse(cubit.StartDate!).hour} : ${DateTime.parse(cubit.StartDate!).minute}',
                                                                    maxLines: 1,
                                                                    overflow: TextOverflow.ellipsis,
                                                                    style:
                                                                    TextStyle(
                                                                      fontSize:
                                                                      15,
                                                                      color: Colors
                                                                          .black,
                                                                      fontWeight:
                                                                      FontWeight.w600,
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    '${''}',
                                                                    style:
                                                                    TextStyle(
                                                                      fontSize:
                                                                      13,
                                                                      color: Colors
                                                                          .black,
                                                                      fontWeight:
                                                                      FontWeight.w800,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 5,
                                                          ),
                                                          Expanded(
                                                            child: Container(
                                                              decoration:
                                                              BoxDecoration(
                                                                borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                    15),
                                                                color: Colors
                                                                    .white
                                                                    .withOpacity(
                                                                    .3),
                                                              ),
                                                              child: Padding(
                                                                padding: const EdgeInsets
                                                                    .symmetric(
                                                                    vertical:
                                                                    8.0,
                                                                    horizontal:
                                                                    12),
                                                                child: Row(
                                                                  children: [
                                                                    Expanded(
                                                                      child: Text(        cubit.StartDate==null?'-- / --':
                                                                      '${DateTime.parse(cubit.StartDate!).day} / ${DateTime.parse(cubit.StartDate!).month}',
                                                                        overflow: TextOverflow.ellipsis,
                                                                        maxLines: 1,
                                                                        style:
                                                                        TextStyle(
                                                                          fontSize:
                                                                          15,
                                                                          color: Colors
                                                                              .black,
                                                                          fontWeight:
                                                                          FontWeight.w600,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Expanded(
                                                child: GestureDetector(
                                                  onTap: () {
                                                    showDatePicker(
                                                      context: context,
                                                      initialDate:
                                                      DateTime.now(),
                                                      firstDate:
                                                      DateTime(2022),
                                                      lastDate:
                                                      DateTime(2025),
                                                      builder: (BuildContext
                                                      context,
                                                          Widget? child) {
                                                        return Theme(
                                                          data: ThemeData
                                                              .dark()
                                                              .copyWith(
                                                            colorScheme:
                                                            ColorScheme
                                                                .dark()
                                                                .copyWith(
                                                              primary: Colors
                                                                  .blue,

                                                              // Change the primary color as needed
                                                            ),
                                                          ),
                                                          child: child!,
                                                        );
                                                      },
                                                    ).then((selectedDate) {
                                                      Navigator.of(context)
                                                          .push(
                                                        showPicker(
                                                          context: context,
                                                          value: time,
                                                          sunrise: TimeOfDay(
                                                              hour: 6,
                                                              minute:
                                                              0), // optional
                                                          sunset: TimeOfDay(
                                                              hour: 18,
                                                              minute:
                                                              0), // optional
                                                          duskSpanInMinutes:
                                                          120, // optional

                                                          borderRadius: 25,
                                                          accentColor:
                                                          Colors.blue,
                                                          blurredBackground:
                                                          true,
                                                          elevation: 0,

                                                          is24HrFormat:
                                                          false,
                                                          onCancel: () {
                                                            Navigator.pop(
                                                                context);
                                                          },
                                                          onChange:
                                                              (value) {
                                                            endminutes =
                                                                value
                                                                    .minute;
                                                            endhours =
                                                                value.hour;
                                                          },
                                                          // onChangeDateTime: (){},
                                                        ),
                                                      )
                                                          .then((value) {
                                                        if (selectedDate !=
                                                            null) {

                                                          DateTime
                                                          selectedDateTime =
                                                          DateTime(
                                                            selectedDate
                                                                .year,
                                                            selectedDate
                                                                .month,
                                                            selectedDate
                                                                .day,
                                                            endhours!,
                                                            endminutes!,
                                                          );
                                                          print(
                                                              'Selected date and time: $selectedDateTime');
                                                          cubit.EndDate_Function(time: DateFormat(
                                                              "yyyy-MM-ddTHH:mm:ss.SSS")
                                                              .format(
                                                              selectedDateTime) );
                                                          print(
                                                              '2024-03-23T22:31:30.911Z');
                                                          // Handle the selected date and time as needed
                                                        }
                                                      });
                                                    });

                                                  },
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                      BorderRadius
                                                          .circular(20),
                                                      color: Colors.red
                                                          .withOpacity(.5),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                      const EdgeInsets
                                                          .symmetric(
                                                          horizontal:
                                                          15.0),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .start,
                                                        children: [
                                                          FaIcon(
                                                              FontAwesomeIcons
                                                                  .clock),
                                                          SizedBox(
                                                            width: 12,
                                                          ),
                                                          Text(
                                                            'End',
                                                            style: TextStyle(
                                                              fontSize: 22,
                                                              color: Colors
                                                                  .black
                                                                  .withOpacity(
                                                                  .7),
                                                              fontWeight:
                                                              FontWeight
                                                                  .w700,
                                                            ),
                                                          ),
                                                          SizedBox(width: 8,),
                                                          Container(
                                                            decoration:
                                                            BoxDecoration(
                                                              borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                  15),
                                                              color: Colors
                                                                  .white
                                                                  .withOpacity(
                                                                  .3),
                                                            ),
                                                            child: Padding(
                                                              padding: const EdgeInsets
                                                                  .symmetric(
                                                                  vertical:
                                                                  8.0,
                                                                  horizontal:
                                                                  12),
                                                              child: Row(
                                                                children: [
                                                                  Text(
                                                                    cubit.EndDate==null?'-- : --':
                                                                    '${DateTime.parse(cubit.EndDate!).hour } : ${DateTime.parse(cubit.EndDate!).minute}',
                                                                    overflow: TextOverflow.ellipsis,
                                                                    maxLines: 1,
                                                                    style:
                                                                    TextStyle(
                                                                      fontSize:
                                                                      15,
                                                                      color: Colors
                                                                          .black,
                                                                      fontWeight:
                                                                      FontWeight.w600,
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    '${''}',
                                                                    style:
                                                                    TextStyle(
                                                                      fontSize:
                                                                      13,
                                                                      color: Colors
                                                                          .black,
                                                                      fontWeight:
                                                                      FontWeight.w800,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 8,
                                                          ),
                                                          Expanded(
                                                            child: Container(
                                                              decoration:
                                                              BoxDecoration(
                                                                borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                    15),
                                                                color: Colors
                                                                    .white
                                                                    .withOpacity(
                                                                    .3),
                                                              ),
                                                              child: Padding(
                                                                padding: const EdgeInsets
                                                                    .symmetric(
                                                                    vertical:
                                                                    8.0,
                                                                    horizontal:
                                                                    12),
                                                                child: Row(
                                                                  children: [
                                                            
                                                                    Expanded(
                                                                      child: Text( cubit.EndDate==null?'-- / --':
                                                                      '${DateTime.parse(cubit.EndDate!).day} / ${DateTime.parse(cubit.EndDate!).month}',
                                                                        overflow: TextOverflow.ellipsis,
                                                                        maxLines: 1,
                                                                        style:
                                                                        TextStyle(
                                                                          fontSize:
                                                                          15,
                                                                          color: Colors
                                                                              .black,
                                                                          fontWeight:
                                                                          FontWeight.w600,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      BorderWidth: 0,
                                      BorderColor: Colors.black,
                                      color: Colors.white.withOpacity(.2),
                                      borderRadius: 20,
                                      x: 0,
                                      y: 0),
                                ),


                              ],
                            ),
                          )

                        ),

                        Step(
                          isActive: _index ==2,
                          state:_index==2?StepState.complete: StepState.disabled,
                          title:  Text('Questions',style: TextStyle(fontSize: 23,fontWeight: FontWeight.w800),) ,


                          content:
                          Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: GlassBoxWithBorder_Gradiant2(
                                widget:Container(
                                  height: 160,
                                  decoration: BoxDecoration(
                                    // color: Colors.blueGrey.withOpacity(.05),
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(width: .5),
                                  ),
                                  child: Padding(
                                    padding:
                                    const EdgeInsets.only(top: 10.0, right: 15, bottom: 10, left: 15),
                                    child: Column(
                                      children: [
                                        Row(
                                          // mainAxisAlignment: MainAxisAlignment.start,
                                          // crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(cubit.titlecontroller.text),
                                            Spacer(),
                                            Container(
                                              height: 30,
                                              width: 30,
                                              decoration: BoxDecoration(
                                                // color: Colors.yellow.withOpacity(.9),
                                                border: Border.all(
                                                  width: .8,
                                                  color: Colors.grey.withOpacity(1),
                                                ),
                                                shape: BoxShape.circle,
                                              ),
                                              child: Center(
                                                child: FaIcon(
                                                  FontAwesomeIcons.pen,
                                                  size: 15,
                                                  color: Colors.grey.withOpacity(1),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 7,
                                            ),
                                            Container(
                                              height: 30,
                                              width: 30,
                                              decoration: BoxDecoration(
                                                // color: Colors.red.withOpacity(.6),
                                                border: Border.all(
                                                  width: .8,
                                                  color: Colors.grey.withOpacity(1),
                                                ),
                                                shape: BoxShape.circle,
                                              ),
                                              child: Center(
                                                child: FaIcon(
                                                  FontAwesomeIcons.trashCan,
                                                  size: 15,
                                                  color: Colors.grey.withOpacity(1),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 7,
                                            ),
                                            Container(
                                              height: 30,
                                              width: 30,
                                              decoration: BoxDecoration(
                                                // color: Colors.teal.withOpacity(.6),
                                                border: Border.all(
                                                  width: .8,
                                                  color: Colors.grey.withOpacity(1),
                                                ),
                                                shape: BoxShape.circle,
                                              ),
                                              child: Center(
                                                child: FaIcon(
                                                  FontAwesomeIcons.eye,
                                                  size: 15,
                                                  color: Colors.grey.withOpacity(1),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),

                                        SizedBox(
                                          height: 7,
                                        ),
                                        Container(
                                          color: Colors.black.withOpacity(.3),
                                          height: .5,
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Expanded(
                                          child: Row(
                                            children: [
                                              Expanded(
                                                flex: 2,
                                                child: Padding(
                                                  padding: const EdgeInsets.only(left: 5.0),
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [

                                                      Row(
                                                        children: [
                                                          FaIcon(
                                                            FontAwesomeIcons.bookmark,
                                                            size: 12,
                                                          ),
                                                          SizedBox(
                                                            width: 7,
                                                          ),
                                                          Expanded(
                                                            child: Container(
                                                              child: Text(
                                                                '${cubit.currentCourseName}',
                                                                textAlign: TextAlign.start,
                                                                overflow: TextOverflow.ellipsis,
                                                                maxLines: 1,
                                                                style: TextStyle(
                                                                    fontWeight: FontWeight.w700, fontSize: 13),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 2,
                                                      ),

                                                      Row(
                                                        children: [
                                                          FaIcon(
                                                            FontAwesomeIcons.chartLine,
                                                            size: 12,
                                                          ),
                                                          SizedBox(
                                                            width: 7,
                                                          ),
                                                          Text(
                                                            cubit.pointcontroller.text,
                                                            textAlign: TextAlign.start,
                                                            style: TextStyle(
                                                                fontWeight: FontWeight.w700, fontSize: 13),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 2,
                                                      ),
                                                      Row(
                                                        children: [
                                                          FaIcon(
                                                            FontAwesomeIcons
                                                                .clock,
                                                            size: 12,
                                                          ),
                                                          SizedBox(
                                                            width: 7,
                                                          ),
                                                          Text(cubit.StartDate==null?'':
                                                          'Start   ${DateTime.parse(cubit.StartDate!).day}/${DateTime.parse(cubit.StartDate!).month}'
                                                              '   ${DateTime.parse(cubit.StartDate!).hour }:${DateTime.parse(cubit.StartDate!).minute}',
                                                            textAlign:
                                                            TextAlign
                                                                .start,
                                                            style: TextStyle(
                                                                fontWeight:
                                                                FontWeight
                                                                    .w700,
                                                                fontSize:
                                                                13),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 2,
                                                      ),
                                                      Row(
                                                        children: [
                                                          FaIcon(
                                                            FontAwesomeIcons
                                                                .clock,
                                                            size: 12,
                                                          ),
                                                          SizedBox(
                                                            width: 7,
                                                          ),
                                                          Text( cubit.EndDate==null?'':
                                                          'End   ${DateTime.parse(cubit.EndDate!).day}/${DateTime.parse(cubit.EndDate!).month}'
                                                              '   ${DateTime.parse(cubit.EndDate!).hour }:${DateTime.parse(cubit.EndDate!).minute}',
                                                            textAlign:
                                                            TextAlign
                                                                .start,
                                                            style: TextStyle(
                                                                fontWeight:
                                                                FontWeight
                                                                    .w700,
                                                                fontSize:
                                                                13),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [



                                                    Container(
                                                      height: 45,
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color: Colors.teal.withOpacity(.6),
                                                        borderRadius: BorderRadius.circular(12),
                                                        // border: Border.all(width: .5),
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          'Edit',
                                                          style: TextStyle(
                                                              fontWeight: FontWeight.w700,fontSize: 20,
                                                              color: Colors.white),
                                                        ),
                                                      ),
                                                    ),


                                                  ],
                                                ),
                                              ),

                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                BorderWidth: 0,
                                BorderColor: Colors.black,

                                color: Colors.white.withOpacity(.2),
                                borderRadius: 20,
                                x: 0,
                                y: 0),
                          ),

                        ),


                      ],
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


