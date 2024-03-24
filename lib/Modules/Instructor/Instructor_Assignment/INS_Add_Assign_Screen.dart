
import 'dart:io';

import 'package:day_night_time_picker/lib/daynight_timepicker.dart';
import 'package:day_night_time_picker/lib/state/time.dart';
import 'package:file_picker/file_picker.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';


import '../../../Shared/Component/component.dart';
import '../../../Shared/Cons_widget.dart';
import '../../../Shared/Cubit/App_cubit.dart';
import '../../../Shared/Cubit/App_state.dart';
import '../../../Shared/constant.dart';

class INS_Add_Assign_Screen extends StatelessWidget {
   INS_Add_Assign_Screen({super.key});
  var taskNamecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit,App_state>(
      listener:(context,stata){},
      builder: (context,state){
        App_cubit cubit=App_cubit.get(context);
        List<File> all_files=cubit.all_assign_files_List;
        Time _time = Time(hour: 11, minute: 30, second: 00000,);

        return Scaffold(
          body: SafeArea(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30,),
                defaultAppbar(
                    text: cubit.currentCourseName,
                    context: context),
                const SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        height: 40,
                        width: double.infinity,
                        child: const Text(
                          'Create New Task here',
                          style: TextStyle(
                              fontSize:20,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      const SizedBox(height: 30,),

                      Container(
                        alignment: Alignment.center,
                        height: 60,
                        decoration: BoxDecoration(
                          // border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.blueGrey.withOpacity(.1),
                        ),
                        child: Padding(
                          padding:
                          const EdgeInsets.symmetric(horizontal: 8.0),
                          child: TextFormField(
                            controller: taskNamecontroller,
                            keyboardType: TextInputType.emailAddress,
                            onFieldSubmitted: (value) {
                              print(value);
                            },
                            onChanged: (value) {
                              print(value);
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Task name can\'t be empty';
                              }
                              return null;
                            },
                            // toolbarOptions:
                            //     ToolbarOptions(paste: true, copy: true),
                            cursorColor: c1,
                            style: const TextStyle(
                              fontSize: 20,     fontWeight: FontWeight.w500,
                            ),
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.email,
                                color: c1,
                                size: 30,
                              ),
                              hintText: ' Task name',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30,),

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
                                          '${DateFormat("yyyy-MM-ddT${value.hour}:${value.minute}:${value.second}0.000").format(cubit.selctedDay)}';
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
                                  'Start date',
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
                                          context: context,
                                          value:_time,
                                          sunrise: TimeOfDay(hour: 6, minute: 0), // optional
                                          sunset: TimeOfDay(hour: 18, minute: 0), // optional
                                          duskSpanInMinutes: 120, // optional
                                          onChange:(value) {
                                            cubit.endTime = '${DateFormat("yyyy-MM-ddT${value.hour}:${value.minute}:${value.second}0.000").format(cubit.selctedDay)}';
                                            print(cubit.endTime);
                                          },
                                        ),
                                      );
                                    },
                                    text: 'End date',
                                    textFontSize: 20)),
                          ],
                        ),
                      ),
                      //
                      // Text('${ cubit.stuAssignDataModel?.taskName}',
                      //   style: const TextStyle(
                      //     fontSize: 30,
                      //     fontWeight: FontWeight.bold,
                      //   ),
                      // ),
                      // const SizedBox(height: 20,),
                      // Container(
                      //   height: 40,
                      //   width: double.infinity,
                      //   child: const Text(
                      //     'Assignment info',
                      //     style: TextStyle(
                      //         fontSize:20,
                      //         fontWeight: FontWeight.bold
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
                const Spacer(),
                all_files.isNotEmpty?
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: GridView.builder(
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 6,
                          crossAxisSpacing: 6,
                        ),
                        itemCount: all_files.length,
                        itemBuilder: (context, index)
                        {
                          return BuildAssignFileViewWidget(index,context,all_files[index]);
                        }
                    ),
                  ),
                )
                    :const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [

                      Expanded(
                        child: Container(
                            height: 55,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(22),
                            ),
                            child:
                            TextButton(
                              onPressed: (){
                                if(all_files.isEmpty) {
                                  cubit.pick_assign_File();
                                }
                                else {
                                  cubit.SumitTask();
                                  Navigator.pop(context);
                                }

                              },
                              child:all_files.isEmpty?
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.file_present_rounded,color: Colors.white,),
                                  SizedBox(
                                    width: 5,),
                                  Text(
                                    'Attach File' ,//: 'Done',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  )
                                ],
                              ): const Text(
                                'Done' ,//: 'Done',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),

                            )
                        ),
                      ),
                      SizedBox(width:5 ,),
                      all_files.isNotEmpty? Container(
                          height: 55,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(.9),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child:
                          TextButton(
                              onPressed: (){
                                print('ass new file ');
                                cubit.pick_assign_File();
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.add,color: Colors.white,),
                                ],
                              )

                          )
                      ):SizedBox(),

                    ],
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
