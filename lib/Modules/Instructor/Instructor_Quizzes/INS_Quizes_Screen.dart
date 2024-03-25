import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
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
  // TabController?  TabbarController;
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
        bool isvisbile = false;
        Time _time = Time(hour: 11, minute: 30, second: 20);
        return DefaultTabController(
          length: 2, // Number of tabs
          initialIndex: cubit.Tab_Bar_index,

          child: Scaffold(
            key: scafoldkey4,
            floatingActionButton: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 30.0, horizontal: 8),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => INS_Quizes_Ques_Sceen(),
                      ));
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
                child: !isvisbile
                    ? FaIcon(FontAwesomeIcons.plus)
                    : FaIcon(FontAwesomeIcons.angleDown),
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
                  TabBar(
                    onTap: (index) {
                      cubit.Tab_Bar_Function(index: index);
                    },
                    indicatorColor:
                        cubit.Tab_Bar_index == 0 ? Colors.red : Colors.teal,
                    indicatorWeight: 5,
                    splashBorderRadius: BorderRadius.circular(25),
                    indicatorSize: TabBarIndicatorSize.label,
                    splashFactory: NoSplash.splashFactory,
                    tabs: [
                      Tab(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.clock,
                              color: cubit.Tab_Bar_index == 0
                                  ? Colors.red
                                  : Colors.black.withOpacity(.6),
                              size: cubit.Tab_Bar_index == 0 ? 25 : 22,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Pending',
                              style: TextStyle(
                                fontSize: cubit.Tab_Bar_index == 0 ? 20 : 18,
                                color: cubit.Tab_Bar_index == 0
                                    ? Colors.red
                                    : Colors.black.withOpacity(.6),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Tab(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.circleCheck,
                              color: cubit.Tab_Bar_index == 1
                                  ? Colors.teal
                                  : Colors.black.withOpacity(.6),
                              size: cubit.Tab_Bar_index == 1 ? 25 : 22,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Complete',
                              style: TextStyle(
                                fontSize: cubit.Tab_Bar_index == 1 ? 20 : 18,
                                color: cubit.Tab_Bar_index == 1
                                    ? Colors.teal
                                    : Colors.black.withOpacity(.6),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ConditionalBuilder(
                    condition: cubit.Tab_Bar_index == 0,
                    builder: (context) => Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 7.5),
                        child: ListView.separated(
                          physics: const BouncingScrollPhysics(),
                          itemBuilder: (context, index) => INS_Quiz_Card(),
                          separatorBuilder: (context, index) => const SizedBox(
                            height: 25,
                          ),
                          itemCount: 2,
                        ),
                      ),
                    ),
                    fallback: (context) => Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 7.5),
                        child: ListView.separated(
                          physics: const BouncingScrollPhysics(),
                          itemBuilder: (context, index) => INS_Quiz_Complete_Card(),
                          separatorBuilder: (context, index) => const SizedBox(
                            height: 25,
                          ),
                          itemCount: 1,
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
