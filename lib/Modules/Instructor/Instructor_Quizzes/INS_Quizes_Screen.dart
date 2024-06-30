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
                  cubit.titlecontroller.text = '';
                  cubit.noticcontroller.text = '';
                  cubit.pointcontroller.text = '';
                  cubit.Question_create_list_map = [];
                  cubit.Answer_create_list_map = [];
                  cubit.GController = [TextEditingController()];
                  cubit.QController = [TextEditingController()];
                  cubit.AController = [
                    [
                      TextEditingController(),
                      TextEditingController(),
                      TextEditingController(),
                      TextEditingController(),
                    ]
                  ];
                  cubit.Answer_create_list_map = [];
                  cubit.Question_create_list_map = [];
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => INS_Quizes_Ques_Sceen(),
                      ));
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
                  defaultAppbar(
                      text: cubit.currentCourseName,
                      context: context),
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
                          itemBuilder: (context, index) => INS_Quiz_Card(context: context,quizes:cubit.INS_get_Quizes_Pending_Model[index]),
                          separatorBuilder: (context, index) => const SizedBox(
                            height: 25,
                          ),
                          itemCount: cubit.INS_get_Quizes_Pending_Model.length,
                        ),
                      ),
                    ),
                    fallback: (context) => Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 7.5),
                        child: ListView.separated(
                          physics: const BouncingScrollPhysics(),
                          itemBuilder: (context, index) => INS_Quiz_Complete_Card(context: context,quizes: cubit.INS_get_Quizes_Completed_Model[index]),
                          separatorBuilder: (context, index) => const SizedBox(
                            height: 25,
                          ),
                          itemCount: cubit.INS_get_Quizes_Completed_Model.length,
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
