import 'package:day_night_time_picker/lib/daynight_timepicker.dart';
import 'package:day_night_time_picker/lib/state/time.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:university_hup/Modules/Instructor/Instructor_Quizzes/INS_Quizes_Ques.dart';

import 'package:university_hup/Shared/Component/component.dart';
import 'package:university_hup/Shared/Cons_widget.dart';
import 'package:university_hup/Shared/Cubit/App_cubit.dart';
import 'package:university_hup/Shared/Cubit/App_state.dart';
import 'package:university_hup/Shared/constant.dart';

class INS_Quizes_Screen extends StatelessWidget {
  INS_Quizes_Screen({Key? key}) : super(key: key);

  var scafoldkey4 = GlobalKey<ScaffoldState>();
  // var controller1 = PageController();
  // int index1 = 0;
  // List<Widget>quizlist=[
  //
  //
  // ];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit, App_state>(
      listener: (context, state) {},
      builder: (context, state) {
        App_cubit cubit = App_cubit.get(context);
        bool isvisbile=false;
        Time _time = Time(hour: 11, minute: 30, second: 20);
        return Scaffold(
          key: scafoldkey4,
          floatingActionButton: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 8),
            child: FloatingActionButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => INS_Quizes_Ques_Sceen(),));
                // if(!isvisbile)
                // {
                //   isvisbile=!isvisbile;
                //
                //   scafoldkey4.currentState?.showBottomSheet(
                //         (context) => Padding(
                //       padding: const EdgeInsets.all(8.0),
                //       child: GlassBoxWithBorder(
                //         widget: Container(
                //           height: 250,
                //           child: Padding(
                //             padding: const EdgeInsets.all(25.0),
                //             child: Column(
                //               children: [
                //                 const Spacer(),
                //                 Container(
                //                   alignment: Alignment.center,
                //                   height: 70,
                //
                //                   decoration: BoxDecoration(
                //                     // border: Border.all(color: Colors.white),
                //                     borderRadius: BorderRadius.circular(18),
                //                     color: Colors.white.withOpacity(.8),
                //                   ),
                //                   child: Padding(
                //                     padding:
                //                     const EdgeInsets.symmetric(horizontal: 8.0),
                //                     child: TextFormField(
                //                       // controller: emailcontroller,
                //                       keyboardType: TextInputType.text,
                //                       onFieldSubmitted: (value) {
                //                         print(value);
                //                       },
                //                       onChanged: (value) {
                //                         print(value);
                //                       },
                //                       validator: (value) {
                //                         if (value!.isEmpty) {
                //                           return 'Folder name can\'t be empty';
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
                //                           padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 6),
                //                           child: FaIcon(
                //                             FontAwesomeIcons.solidFolder,
                //                             color: c1,
                //                             size: 30,
                //                           ),
                //                         ),
                //                         hintText: 'Folder task name',
                //                         border: InputBorder.none,
                //                       ),
                //                     ),
                //                   ),
                //                 ),
                //                 SizedBox(height: 15,),
                //                 Container(
                //                   height: 60,
                //                   child: Row(
                //                     children: [
                //                       Expanded(child: Default_Button(textFontSize: 20,onPressed: (){ Navigator.of(context).push(
                //                         showPicker(
                //                           context: context,
                //                           value: _time,
                //                           sunrise: TimeOfDay(hour: 6, minute: 0), // optional
                //                           sunset: TimeOfDay(hour: 18, minute: 0), // optional
                //                           duskSpanInMinutes: 120, // optional
                //                           onChange: (value){},
                //
                //                         ),
                //                       );},text: 'Deadline',)),
                //                       SizedBox(width: 15,),
                //                       // GestureDetector(onTap:(){
                //                       //
                //                       //
                //                       // } ,
                //                       //     child: FaIcon(FontAwesomeIcons.clock)),
                //                       Expanded(child: Default_Button(onPressed: (){},text: 'Upload task',textFontSize: 20)),
                //                     ],
                //                   ),
                //                 ),
                //
                //                 SizedBox(height: 15,),
                //
                //                 const Spacer(),
                //               ],
                //             ),
                //           ),
                //         ),
                //         color:
                //         Colors.blueGrey.withOpacity(.2),
                //         borderRadius: 30,
                //         x: 15,
                //         y: 15,
                //         BorderWidth: 3,
                //         BorderColor: Colors.blueGrey,),
                //     ),
                //   );
                //
                // }
                // else
                // {
                //
                //   Navigator.pop(context);
                //   isvisbile=!isvisbile;
                // }

              },
              child:!isvisbile? FaIcon(FontAwesomeIcons.plus): FaIcon(FontAwesomeIcons.angleDown),

            ),
          ),
          body: SafeArea(
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                defaultAppbar(context: context),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Quizzes',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
                const SizedBox(
                  height: 15,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 7.5),
                    child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) =>
                          Build_Quiz_Data_Widget(
                              quizIsComplete:
                              cubit.stu_Quiz_IsComplete,
                              isQuizStart:
                              cubit.stu_Quiz_isStart,
                              index:
                              index

                          ),
                      separatorBuilder: (context, index) =>
                      const SizedBox(
                        height: 25,
                      ),
                      itemCount: 3,
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
