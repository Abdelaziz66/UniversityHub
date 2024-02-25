import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:university_hup/Modules/Student/Student_Quizzes/STU_Quiz_Finish_Screen.dart';
import 'package:university_hup/Shared/Component/component.dart';
import 'package:university_hup/Shared/Cons_widget.dart';
import 'package:university_hup/Shared/Cubit/App_cubit.dart';
import 'package:university_hup/Shared/Cubit/App_state.dart';






class INS_Quizes_Ques_Sceen extends StatefulWidget {
  const INS_Quizes_Ques_Sceen({super.key});



  @override
  State<INS_Quizes_Ques_Sceen> createState() => _STU_Quizes_Ques_ScreenState();
}

class _STU_Quizes_Ques_ScreenState extends State<INS_Quizes_Ques_Sceen> {
  bool islast = false;
  bool ismiddle =false;

  var boardcontroller = PageController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit,App_state>(
      listener: (context,state){},
      builder: (context,state){
        App_cubit cubit =App_cubit.get(context);
        return Scaffold(
          body: SafeArea(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30,),
                defaultAppbar(context:context),
                const SizedBox(height: 30,),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: PageView.builder(
                      physics: const BouncingScrollPhysics(),
                      onPageChanged: (index) {
                        if (index == cubit.stu_Quiz_Ques_lis.length - 1) {
                          setState(() {
                            islast = true;
                          });
                        } else if(index == cubit.stu_Quiz_Ques_lis.length - 2)
                        {
                          setState(() {
                            ismiddle = true;
                          });
                        }
                        else{
                          setState(() {
                            islast = false;
                            ismiddle = false;
                          });
                        }
                      },
                      controller: boardcontroller,
                      itemBuilder: (context, index) =>
                          Build_INS_Quiz_Ques(context,cubit.stu_Quiz_Ques_lis,cubit.stu_Quiz_Ques_options,index),
                      itemCount: cubit.stu_Quiz_Ques_lis.length,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child:



                  Default_Button(
                    containerWidth:  double.infinity,
                    containerHeight: 50,
                    onPressed: () {
                      if (islast) {
                        navigateTo(context,const STU_Quiz_Finish_Screen());
                        // submit;
                      } else {
                        boardcontroller.nextPage(
                          duration: const Duration(
                            milliseconds: 750,
                          ),
                          curve: Curves.fastLinearToSlowEaseIn,
                        );
                      }
                    },
                    text: islast?'Submit':'Next',
                  ),
                  // TextButton(onPressed: (){
                  //   if (islast) {
                  //     navigateTo(context,STU_Quiz_Finish_Screen());
                  //     // submit;
                  //   } else {
                  //     boardcontroller.nextPage(
                  //       duration: Duration(
                  //         milliseconds: 750,
                  //       ),
                  //       curve: Curves.fastLinearToSlowEaseIn,
                  //     );
                  //   }
                  // },
                  //   child:
                  //
                  // Container(
                  //   width: double.infinity,
                  //   height: 50,
                  //   decoration: BoxDecoration(
                  //     color: Colors.blue,
                  //     borderRadius: BorderRadius.circular(20),
                  //   ),
                  //   child: Center(
                  //     child:
                  //     Text(islast?'Submit':'Next',
                  //       style: TextStyle(
                  //           color: Colors.white,
                  //           fontWeight: FontWeight.bold,
                  //           fontSize: 25
                  //       ),
                  //
                  //     ),
                  //   ),
                  // ) ,                    ),
                )
              ],
            ),
          ),


        );
      },
    );
  }
}


