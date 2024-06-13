
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:university_hup/Models/INS_Model/CourseModel.dart';

import 'package:university_hup/Modules/Instructor/Instructor_Material/INS_Show_Lecs_or_Lab_screen.dart';

import 'package:university_hup/Modules/Student/Student_Material/STU_Show_Lecs_or_Lab_screen.dart';
import 'package:university_hup/Shared/Component/component.dart';
import 'package:university_hup/Shared/Cons_widget.dart';
import 'package:university_hup/Shared/Cubit/App_cubit.dart';
import 'package:university_hup/Shared/Cubit/App_state.dart';
import 'package:university_hup/Shared/constant.dart';









class INS_Matrial_Screen extends StatelessWidget {
   INS_Matrial_Screen({super.key});
  var scafoldkey1 = GlobalKey<ScaffoldState>();
  var formKey=GlobalKey<FormState>();
  var folderFormKey=GlobalKey<FormState>();
  var folderController =TextEditingController();

   @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit, App_state>(
      listener: (context, state) => {},
      builder: (context, state) {
        App_cubit cubit = App_cubit.get(context);
        List<InsAllLecFoldersModel>courseMaterial=cubit.insAllLecFoldersModel;
        List<InsAllLecFoldersModel>lectures=cubit.insLECTUREModel;
        return Scaffold(
          key: scafoldkey1,
          // floatingActionButton: Padding(
          //   padding: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 8),
          //   child: FloatingActionButton(
          //     onPressed: (){
          //       if(cubit.visiblity==false)
          //         {
          //           folderController.text='';
          //           scafoldkey1.currentState?.showBottomSheet(
          //                 (context) => Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: GlassBoxWithBorder(
          //                   widget: Container(
          //                     height: 250,
          //                     child: Padding(
          //                       padding: const EdgeInsets.all(25.0),
          //                       child: Form(
          //                         key: formKey,
          //                         child: Column(
          //                           children: [
          //                             const Spacer(),
          //                             Container(
          //                               alignment: Alignment.center,
          //                               height: 70,
          //                               decoration: BoxDecoration(
          //                                 // border: Border.all(color: Colors.white),
          //                                 borderRadius: BorderRadius.circular(18),
          //                                 color: Colors.white.withOpacity(.8),
          //                               ),
          //                               child: Padding(
          //                                 padding:
          //                                 const EdgeInsets.symmetric(horizontal: 8.0),
          //                                 child: TextFormField(
          //                                   controller: folderController,
          //                                   keyboardType: TextInputType.text,
          //                                   onFieldSubmitted: (value) {
          //                                     print(value);
          //                                   },
          //                                   validator: (value) {
          //                                     if (value!.isEmpty) {
          //                                       return 'Folder name can\'t be empty';
          //                                     }
          //                                     return null;
          //                                   },
          //                                   cursorColor: c1,
          //                                   style: const TextStyle(
          //                                     fontSize: 25,
          //                                   ),
          //                                   decoration: InputDecoration(
          //                                     prefixIcon: Padding(
          //                                       padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 6),
          //                                       child: FaIcon(
          //                                         FontAwesomeIcons.solidFolder,
          //                                         color: c1,
          //                                         size: 30,
          //                                       ),
          //                                     ),
          //                                     hintText: 'Folder name',
          //                                     border: InputBorder.none,
          //                                   ),
          //                                 ),
          //                               ),
          //                             ),
          //                             SizedBox(height: 15,),
          //                             Default_Button(onPressed: (){
          //                                if(formKey.currentState!.validate()){
          //                                  cubit.INS_AddNewMaterialFolder(folderName: folderController.text);
          //                                  Navigator.pop(context);
          //                                }
          //                                else{
          //                                  flutterToast(msg: 'please enter Folder name', backColor:Colors.red);
          //                                }
          //                             },text: 'Add Folder',),
          //                             const Spacer(),
          //                           ],
          //                         ),
          //                       ),
          //                     ),
          //                   ),
          //                   color:
          //                   Colors.blueGrey.withOpacity(.2),
          //                   borderRadius: 30,
          //                   x: 15,
          //                   y: 15,
          //                 BorderWidth: 3,
          //                 BorderColor: Colors.blueGrey,),
          //             ),
          //           ).closed.then((value) {
          //             cubit.ChangeVisibility(isShow: false, icon: FaIcon(FontAwesomeIcons.plus),);
          //           });
          //           cubit.ChangeVisibility(isShow:true,icon:  FaIcon(FontAwesomeIcons.angleDown));
          //
          //         }
          //       else
          //         {
          //           Navigator.pop(context);
          //           cubit.ChangeVisibility(isShow: false,icon: FaIcon(FontAwesomeIcons.plus));
          //         }
          //
          //     },
          //     child:cubit.visiblity==false? FaIcon(FontAwesomeIcons.plus): FaIcon(FontAwesomeIcons.angleDown),
          //
          //   ),
          // ),
            floatingActionButton: Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 20.0, horizontal: 8),
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
                                                height: 250,
                                                child: Padding(
                                                  padding: const EdgeInsets
                                                      .only(
                                                      bottom: 25.0,
                                                      left: 25,
                                                      right: 25,
                                                      top: 20
                                                  ),
                                                  child:  Form(
                                                    key: formKey,
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
                                                              controller: folderController,
                                                              keyboardType: TextInputType.text,
                                                              onFieldSubmitted: (value) {
                                                                print(value);
                                                              },
                                                              validator: (value) {
                                                                if (value!.isEmpty) {
                                                                  return 'Folder name can\'t be empty';
                                                                }
                                                                return null;
                                                              },
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
                                                                hintText: 'Folder name',
                                                                border: InputBorder.none,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(height: 15,),
                                                        Default_Button(onPressed: (){
                                                          if(formKey.currentState!.validate()){
                                                            cubit.INS_AddNewMaterialFolder(folderName: folderController.text);
                                                            Navigator.pop(context);
                                                          }
                                                          else{
                                                            flutterToast(msg: 'please enter Folder name', backColor:Colors.red);
                                                          }
                                                        },text: 'Add Folder',),
                                                        const Spacer(),
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
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              defaultAppbar(context: context,
                text: cubit.currentCourseName
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: GlassBox(
                    widget: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.folderOpen,
                            color: c1.withOpacity(.9),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Material',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              color: c1,
                            ),
                          ),
                          const Spacer(),
                          FaIcon(
                            FontAwesomeIcons.angleRight,
                            color: c1.withOpacity(.9),
                          ),
                          const Spacer(),
                          FaIcon(
                            FontAwesomeIcons.solidFolder,
                            color: c1.withOpacity(.9),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Lecture',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              color: c1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    color: Colors.blueGrey.withOpacity(.15),
                    borderRadius: 15,
                    x: 0,
                    y: 0),
              ),

              // Padding(
              //   padding: const EdgeInsets.all(15.0),
              //   child: Container(
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(15),
              //       color: Colors.blue,
              //       boxShadow: [BoxShadow(color: Colors.grey,
              //         spreadRadius: 2,
              //         blurRadius: 10,
              //
              //       )],),
              //     child: Padding(
              //       padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 15),
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //
              //
              //           FaIcon(
              //             FontAwesomeIcons.folderOpen,
              //             color: Colors.white,
              //           ),
              //           const SizedBox(
              //             width: 10,
              //           ),
              //           Text(
              //             'Material',
              //             style: TextStyle(
              //               fontSize: 17,
              //               fontWeight: FontWeight.w700,
              //               color: Colors.white,
              //             ),
              //           ),
              //           Spacer(),
              //           FaIcon(
              //             FontAwesomeIcons.angleRight,
              //             color: Colors.white,
              //           ),
              //           Spacer(),
              //           FaIcon(
              //             FontAwesomeIcons.solidUser,
              //             color: Colors.white,
              //           ),
              //           const SizedBox(
              //             width: 10,
              //           ),
              //           Text(
              //             'Instructor',
              //             style: TextStyle(
              //               fontSize: 17,
              //               fontWeight: FontWeight.w700,
              //               color: Colors.white,
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),


              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GridView.builder(
                    gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1, childAspectRatio:4,),
                    itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          cubit.StuGetCourseMaterialFiles(lecId: lectures[index].lectureId);
                          cubit.folderId=lectures[index].lectureId;
                          navigateTo(context,rol=='Student'? STU_Show_Material_Lec_Or_Sec():INS_Show_Material_Lec_Or_Sec(
                            foldeName: lectures[index].lectureName,
                          ));
                        },
                        child: Matrial_INS_C(
                          folderFormKey: folderFormKey,
                          folderController: folderController,
                          context: context,
                          insFolder:lectures[index] ,
                        //  index: index,
                        )),
                    scrollDirection: Axis.vertical,
                    itemCount: lectures.length,
                  ),
                ),
              ),

              // ConditionalBuilder(
              //   condition: cubit.DE,
              //   builder: (context) =>
              //   fallback: (context) => Expanded(
              //     child: Padding(
              //       padding: const EdgeInsets.all(15.0),
              //       child: GridView.builder(
              //         gridDelegate:
              //             const SliverGridDelegateWithFixedCrossAxisCount(
              //                 crossAxisCount: 2, childAspectRatio: 2.5),
              //         itemBuilder: (context, index) => InkWell(
              //             onTap: () {
              //               navigateTo(context, STU_Show_Material_Lec_Or_Sec());
              //             },
              //             child: Matrial_C(
              //                 context: context,
              //
              //                 insFolder:lectures[index] ,
              //                 index: index
              //             )),
              //         scrollDirection: Axis.vertical,
              //         itemCount: lectures.length,
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ));
      },
    );
  }
}
