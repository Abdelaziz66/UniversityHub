import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:university_hup/Models/STU_Model/CourseModel/Stu_Course_Quiz_Model.dart';

import 'package:university_hup/Modules/Student/Student_Quizzes/STU_Quiz_Finish_Screen.dart';
import 'package:university_hup/Shared/Component/component.dart';
import 'package:university_hup/Shared/Cons_widget.dart';
import 'package:university_hup/Shared/Cubit/App_cubit.dart';
import 'package:university_hup/Shared/Cubit/App_state.dart';



class STU_Quizes_Ques_Screen extends StatefulWidget {
  const STU_Quizes_Ques_Screen({super.key});

  @override
  State<STU_Quizes_Ques_Screen> createState() => _STU_Quizes_Ques_ScreenState();
}

class _STU_Quizes_Ques_ScreenState extends State<STU_Quizes_Ques_Screen> {
  bool islast = false;
  bool isStart = false;
  bool isBack=false;
  var boardcontroller = PageController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit, App_state>(
      listener: (context, state) {},
      builder: (context, state) {
        App_cubit cubit = App_cubit.get(context);
        List<Questions>ques=cubit.questionModel;
        return Scaffold(

          body: SafeArea(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                defaultAppbar(context: context),
                const SizedBox(
                  height: 30,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    children: [
                      Text(
                        'Quiz ',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '1',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                      Spacer(),
                      Text(
                        '1:25 ',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        FontAwesomeIcons.clock,
                        size: 20,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: ConditionalBuilder(
                      condition: cubit.questionModel.isNotEmpty,
                      builder:(context)=> PageView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        onPageChanged: (index) {
                          print(isBack);
                          print('page index ${index}');
                          if (index == ques.length - 1) {
                            setState(() {
                              islast = true;
                            });
                          }
                          else if (index >=1) {
                            setState(() {
                              isStart = true;
                            });
                          } else {
                            setState(() {
                              islast = false;
                              isStart = false;
                            });
                          }
                        },
                        controller: boardcontroller,
                        itemBuilder: (context, index) => Build_STU_Quiz_Ques(
                           context:  context,
                           // ques: cubit.stu_Quiz_Ques_lis,
                          //  answers: cubit.stu_Quiz_Ques_options,
                          qIndex: index,
                          questions: ques[index]
                        ),
                        itemCount:ques.length
                      ),
                      fallback: (context)=>Center(child: CircularProgressIndicator(),),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0,right: 8),
                  child: Row(
                    children: [
                     isStart? Container(
                        height: 50,
                        width: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(25),
                      ),
                        child: IconButton(
                          onPressed: (){
                            setState(() {
                              islast = false;
                            });
                            boardcontroller.previousPage (
                              duration: const Duration(
                              milliseconds: 750,
                            ),
                            curve: Curves.fastLinearToSlowEaseIn,
                            );
                            setState(() {
                              isBack=true;
                            });
                          },
                          icon:const Icon(FontAwesomeIcons.backward,
                            color: Colors.blue,
                          )
                        ),
                      ):const SizedBox(),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                            child: Default_Button(
                              containerWidth: double.infinity,
                              containerHeight: 50,
                              onPressed: () {
                                // if(isBack==false){
                                //
                                //   cubit.submitQuizAnswers.add({
                                //     'questionId':ques[boardcontroller.page!.toInt()].id,
                                //     'answerId':cubit.quizAnswerSelected
                                //   }
                                //   );}
                                // else if(isBack==true){
                                //   // cubit.submitQuizAnswers[index]={
                                //   //   'questionId':ques[index].id,
                                //   //   'answerId':cubit.quizAnswerSelected
                                //   // };
                                //   //  cubit.submitQuizAnswers[index]['questionId']=ques[index].id;
                                //
                                //   cubit.submitQuizAnswers[boardcontroller.page!.toInt()]['answerId']=cubit.quizAnswerSelected;
                                // }
                                if (islast) {
                                  //cubit.allquizAnswers.add(cubit.quizAnswerSelected);
                                  //print('ddddd${boardcontroller.page?.toInt()}');

                                  // cubit.submitQuizAnswers.add({
                                  //   'questionId':ques[ques.length-1].id,
                                  //   'answerId':cubit.quizAnswerSelected
                                  // });
                                  cubit.SumitQuiz();
                                    NavigateAndFinish(context,
                                        const STU_Quiz_Finish_Screen());
                                } else {
                                  boardcontroller.nextPage(
                                    duration: const Duration(
                                      milliseconds: 750,
                                    ),
                                    curve: Curves.fastLinearToSlowEaseIn,
                                  );

                                }
                                setState(() {
                                  isBack=false;
                                });
                              },
                              text: islast ? 'Submit' : 'Next',
                            ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
