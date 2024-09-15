import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:universityhup/core/functions/app_bar.dart';
import 'package:universityhup/core/utils/app_router.dart';
import 'package:universityhup/core/utils/assets.dart';
import 'package:universityhup/features/courses/presentation/widgets/about%20course/about_button_custom_widget.dart';

class AboutCourseScreen extends StatelessWidget {
  const AboutCourseScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    // return
    // BlocConsumer<CoursesCubit, CoursesState>(
    //   listener: (context, state) {},
    //   builder: (context, state) {
    // App_cubit cubit=App_cubit.get(context);
    // cubit.INS_GetAllCourses_Function( token: token,);
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          DefaultAppBar(
            context: context,text: 'Title',
            // onTap:(){
            //   cubit.INS_GetAllCourses_Function( token: token,);
            //   Navigator.pop(context);
            // }
          ),
          SizedBox(
            height: screenSize.height / 30,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: SizedBox(
              height: screenSize.height * .65,
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        AboutButton(
                          text: 'Material',
                          color: Colors.greenAccent.withOpacity(.25),
                          image: AssetsData.courseMaterialImage, onTap: () {  },
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        AboutButton(
                          text: 'Assignment',
                          color: Colors.deepPurpleAccent.withOpacity(.25),
                          image: AssetsData.courseAssignImage, onTap: () {
                            GoRouter.of(context).push(AppRouter.kAssignmentScreen);
                        },

                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        AboutButton(
                          text: 'Quizzes',
                          color: Colors.pinkAccent.withOpacity(.18),
                          image: AssetsData.courseQuizImage, onTap: () {

                        },
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        AboutButton(
                          text: 'Grades',
                          color: Colors.lightBlueAccent.withOpacity(.25),
                          image: AssetsData.courseGradesImage, onTap: () {
                          GoRouter.of(context).push(AppRouter.kGrade);

                        },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    )));
  }
}
