import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:university_hup/Shared/Cubit/App_cubit.dart';
import 'package:university_hup/Shared/Cubit/App_state.dart';
import 'package:university_hup/Shared/constant.dart';

import '../../Shared/Component/component.dart';
import '../../Shared/Cons_widget.dart';
import '../Student_Screens/Student_Courses_Screen/STU_Course_Screens/STU_About_Course.dart';
import '../Student_Screens/Student_Courses_Screen/STU_Course_Screens/STU_Assign_Screen/STU_Assign_Screen.dart';

class STU_Lecture_Screen extends StatelessWidget {
  const STU_Lecture_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit, App_state>(
      listener: (context, state) {},
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0,right: 0),
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 0.0,vertical: 15),
                          child: Row(
                            children: [
                              Text(
                                'Enrolled',
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(width: 8,),
                              Text(
                                '5',
                                style: TextStyle(
                                  color: Colors.teal,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 8,),
                              Text(
                                'Courses',
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(width: 8,),
                              // Spacer(),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child:
                                    Image.asset(
                                        'assets/images/bluebook.png'),

                                ),
                              ),


                            ],
                          ),
                        ),
                      ),
                    ),


                    // Container(
                    //   height: 1,
                    //   width: double.infinity,
                    //   decoration: BoxDecoration(
                    //     color: Colors.grey[300],
                    //   ),
                    // ),
                    SizedBox(height: 5,),
                    Expanded(
                      child: ListView.separated(
                        itemBuilder: (context, index) => InkWell(
                            onTap: () {
                              navigateTo(context, STU_About_course());
                            },
                            child: Build_STU_Lec()),
                        separatorBuilder: (context, index) => SizedBox(
                          height: 20,
                        ),
                        itemCount: 5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
