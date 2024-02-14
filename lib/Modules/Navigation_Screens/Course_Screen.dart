
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:university_hup/Modules/Student/STU_About_Course.dart';

import 'package:university_hup/Shared/Cubit/App_cubit.dart';
import 'package:university_hup/Shared/Cubit/App_state.dart';


import '../../Shared/Component/component.dart';
import '../../Shared/Cons_widget.dart';



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
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0,right: 0),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0.0,vertical: 15),
                      child: Row(
                        children: [
                          const Text(
                            'Enrolled',
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(width: 8,),
                          const Text(
                            '5',
                            style: TextStyle(
                              color: Colors.teal,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 8,),
                          const Text(
                            'Courses',
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(width: 8,),
                          // Spacer(),
                          Expanded(
                            child: Container(
                              decoration: const BoxDecoration(
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


                  // Container(
                  //   height: 1,
                  //   width: double.infinity,
                  //   decoration: BoxDecoration(
                  //     color: Colors.grey[300],
                  //   ),
                  // ),
                  const SizedBox(height: 5,),
                  Expanded(
                    child: ListView.separated(
                      itemBuilder: (context, index) => InkWell(
                          onTap: () {
                            navigateTo(context,  STU_About_course());
                          },
                          child: Build_STU_Lec()),
                      separatorBuilder: (context, index) => const SizedBox(
                        height: 20,
                      ),
                      itemCount: 5,
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
