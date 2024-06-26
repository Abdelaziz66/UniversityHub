import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:university_hup/Models/STU_Model/CourseModel/materialAdabter/Stu_Course_MaterialModel.dart';
import 'package:university_hup/Modules/Student/Student_Material/STU_Show_Lecs_or_Lab_screen.dart';

import 'package:university_hup/Shared/Cons_widget.dart';
import 'package:university_hup/Shared/constant.dart';


import '../../../Shared/Component/component.dart';
import '../../../Shared/Cubit/App_cubit.dart';
import '../../../Shared/Cubit/App_state.dart';



class STU_Matrial_Screen extends StatelessWidget {
  const STU_Matrial_Screen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit, App_state>(
      listener: (context, state) => {},
      builder: (context, state) {
        App_cubit cubit = App_cubit.get(context);

        List<GetCourseMaterialsModel>courseMaterial=cubit.stuCoursesMatrialModel;
        List<GetCourseMaterialsModel>lectures=cubit.stuLECTUREModel;
        List<GetCourseMaterialsModel>labs=cubit.stuLABModel;
        return DefaultTabController(
          length: 2, // Number of tabs
          initialIndex: cubit.Tab_Bar_2_index,
          child: Scaffold(
              body: SafeArea(
                child: Column(
                  children: [
                    const SizedBox(height: 30,),
                    defaultAppbar(
                        text: cubit.currentCourseName,
                        context:context),
                    const SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: GlassBox(
                          widget: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 15),
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
                                  FontAwesomeIcons.solidUser,
                                  color: c1.withOpacity(.9),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Instructor',
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
                          y: 0
                      ),
                    ),
                    const SizedBox(height: 15,),
                    TabBar(
                      onTap: (index) {
                        cubit.Tab_Bar_2_Function(index: index);
                      },
                      indicatorColor:
                      cubit.Tab_Bar_2_index == 0 ? Colors.red : Colors.teal,
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
                                FontAwesomeIcons.book,
                                color: cubit.Tab_Bar_2_index == 0
                                    ? Colors.red
                                    : Colors.black.withOpacity(.6),
                                size: cubit.Tab_Bar_2_index == 0 ? 25 : 22,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                'Lecture',
                                style: TextStyle(
                                  fontSize: cubit.Tab_Bar_2_index == 0 ? 20 : 18,
                                  color: cubit.Tab_Bar_2_index == 0
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
                                FontAwesomeIcons.laptopCode,
                                color: cubit.Tab_Bar_2_index == 1
                                    ? Colors.teal
                                    : Colors.black.withOpacity(.6),
                                size: cubit.Tab_Bar_2_index == 1 ? 25 : 22,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                'Lab',
                                style: TextStyle(
                                  fontSize: cubit.Tab_Bar_2_index == 1 ? 20 : 18,
                                  color: cubit.Tab_Bar_2_index == 1
                                      ? Colors.teal
                                      : Colors.black.withOpacity(.6),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    ConditionalBuilder(
                      condition: cubit.Tab_Bar_2_index == 0,
                      builder: (context) => Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: ConditionalBuilder(
                            condition: lectures.isNotEmpty&&cubit.connnection ,
                            builder:(context)=>GridView.builder(
                              gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2, childAspectRatio: 2.5),
                              itemBuilder: (context, index) => InkWell(
                                  onTap: () {
                                    cubit.StuGetCourseMaterialFiles(lecId: lectures[index].lectureId);
                                    cubit.isLec=true;
                                    navigateTo(context, STU_Show_Material_Lec_Or_Sec());
                                  },
                                  child: Matrial_STU_C(
                                    courseMaterial: lectures[index],
                                    index: index,
                                    context: context
                                  )),
                              scrollDirection: Axis.vertical,
                              itemCount: lectures.length,
                            ),

                            fallback:(context)=>ConditionalBuilder(
                              condition: cubit.stuHIVElecModel.isNotEmpty ,
                              builder:(context)=>  GridView.builder(
                                gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2, childAspectRatio: 2.5),
                                itemBuilder: (context, index) => InkWell(
                                    onTap: () {
                                      cubit.getCourseFilesFromHIVE(lecId: cubit.stuHIVElecModel[index].lectureId!);
                                      cubit.isLec=true;
                                      navigateTo(context, STU_Show_Material_Lec_Or_Sec());
                                    },
                                    child: Matrial_STU_C(
                                        courseMaterial: cubit.stuHIVElecModel[index],
                                        index: index,
                                        context: context
                                    )),
                                scrollDirection: Axis.vertical,
                                itemCount: cubit.stuHIVElecModel.length,
                              ),

                              fallback:(context)=>Center(child: CircularProgressIndicator())
                            ),
                          ),

                        ),
                      ),
                      fallback: (context) => ConditionalBuilder(
                          condition: labs.isNotEmpty&&state is !Stu_Get_Course_Material_LoadingState ,
                          builder:(context)=> Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: GridView.builder(
                                gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2, childAspectRatio: 2.5),
                                itemBuilder: (context, index) => InkWell(
                                    onTap: () {
                                      print('dddddd');
                                      cubit.StuGetCourseMaterialFiles(lecId: labs[index].lectureId);

                                      cubit.isLec=false;
                                      navigateTo(context, STU_Show_Material_Lec_Or_Sec());
                                    },
                                    child: Matrial_STU_C(
                                        courseMaterial: labs[index],
                                        index: index,
                                        context: context
                                    )),
                                scrollDirection: Axis.vertical,
                                itemCount: labs.length,
                              ),
                            ),
                          ),
                          fallback:(context)=>ConditionalBuilder(
                              condition: cubit.stuHIVElabModel.isNotEmpty&&state is !Stu_Get_lec_Folders_From_Hive_LoadingState ,
                              builder:(context)=>  Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: GridView.builder(
                                    gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2, childAspectRatio: 2.5),
                                    itemBuilder: (context, index) => InkWell(
                                        onTap: () {
                                          cubit.getCourseFilesFromHIVE(lecId: cubit.stuHIVElabModel[index].lectureId!);
                                          cubit.isLec=true;
                                          navigateTo(context, STU_Show_Material_Lec_Or_Sec());
                                        },
                                        child: Matrial_STU_C(
                                            courseMaterial: cubit.stuHIVElabModel[index],
                                            index: index,
                                            context: context
                                        )),
                                    scrollDirection: Axis.vertical,
                                    itemCount: cubit.stuHIVElabModel.length,
                                  ),
                                ),
                              ),

                              fallback:(context)=>Center(child: CircularProgressIndicator())
                          ),


                    ),
                    )
                  ],
                ),
              )),
        );
      },
    );
  }
}
