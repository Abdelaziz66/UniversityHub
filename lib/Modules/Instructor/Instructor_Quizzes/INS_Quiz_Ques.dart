import 'package:day_night_time_picker/lib/daynight_timepicker.dart';
import 'package:day_night_time_picker/lib/state/time.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:university_hup/Models/INS_Model/INS_create_quiz_Model.dart';
import 'package:university_hup/Modules/Instructor/Instructor_Quizzes/INS_Quiz_Finish_Screen.dart';

import 'package:university_hup/Shared/Component/component.dart';
import 'package:university_hup/Shared/Cons_widget.dart';
import 'package:university_hup/Shared/Cubit/App_cubit.dart';
import 'package:university_hup/Shared/Cubit/App_state.dart';
import 'package:university_hup/Shared/constant.dart';

class INS_Quizes_Ques_Screen extends StatefulWidget {
  INS_Quizes_Ques_Screen({super.key});

  @override
  State<INS_Quizes_Ques_Screen> createState() => _STU_Quizes_Ques_ScreenState();
}

class _STU_Quizes_Ques_ScreenState extends State<INS_Quizes_Ques_Screen> {
  bool islast = false;
  bool ismiddle = false;
  String? quiz_ask = '';
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();

  var boardcontroller = PageController();
  var controllerforlist = ScrollController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit, App_state>(
      listener: (context, state) {},
      builder: (context, state) {
        App_cubit cubit = App_cubit.get(context);
        Time _time = Time(hour: 11, minute: 30, second: 20);
        return Scaffold(
          body: SafeArea(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Expanded(
                  child: AnimatedList(
                    physics: BouncingScrollPhysics(),
                    key: _listKey,
                    // controller: controllerforlist,
                    initialItemCount:  cubit.QController.length,
                    itemBuilder: (BuildContext context, int index,
                            Animation<double> animation) =>
                        Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Build_INS_Quiz_Ques(
                          context,
                          index,
                          animation),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10.0, right: 10, bottom: 10),
                  child: GlassBox(
                      widget: BottomNavigationBar(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        // currentIndex: 2,
                        type: BottomNavigationBarType.fixed,
                        selectedLabelStyle:
                            TextStyle(color: Colors.black.withOpacity(.6)),
                        unselectedLabelStyle:
                            TextStyle(color: Colors.black.withOpacity(.6)),
                        mouseCursor: MouseCursor.defer,
                        showSelectedLabels: true,
                        useLegacyColorScheme: false,
                        showUnselectedLabels: true,

                        onTap: (index) {
                          print('------------------------------------');
                          print(index);
                          switch (index) {
                            case 0:
                              _removeLastItem();
                              // boardcontroller.previousPage(
                              //   duration: Duration(
                              //     milliseconds: 1500,
                              //   ),
                              //   curve: Curves.fastLinearToSlowEaseIn,
                              // );
                              break;

                            case 1:
                              _addAnItem();

                              // boardcontroller.nextPage(
                              //   duration: Duration(
                              //     milliseconds: 1500,
                              //   ),
                              //   curve: Curves.fastLinearToSlowEaseIn,
                              // );
                              break;
                            case 2:
                              cubit.QController.forEach((element) { print(element.text); });

                              Alrat(
                                  context: context,
                                  no: () {
                                    Navigator.pop(context);
                                  },
                                  text: 'Do you want to save quiz ?',
                                  yes: () {});
                              break;
                            case 3:
                              cubit.createquCreateQuiz_Function(
                                title: 'new quiz',
                                grade: 3,
                                startDate: "2024-04-19T15:35:35.614Z",
                                courseCycleId: 'CS101FALL2024',
                                endDate: "2024-04-19T15:35:35.614Z",
                                notes: 'new notes',
                              );
                              Alrat(
                                  context: context,
                                  no: () {
                                    Navigator.pop(context);
                                  },
                                  text: 'Do you want to Publish quiz ?',
                                  yes: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              INS_Quiz_Finish_Screen(),
                                        ));
                                  });

                              break;
                          }
                        },
                        items: [
                          BottomNavigationBarItem(
                            icon: FaIcon(
                              FontAwesomeIcons.minus,
                              size: 20,
                              color: Colors.red,
                            ),
                            label: 'remove Q',
                          ),
                          BottomNavigationBarItem(
                            icon: FaIcon(
                              FontAwesomeIcons.plus,
                              size: 20,
                              color: Colors.teal,
                            ),
                            label: 'Add Q',
                          ),
                          BottomNavigationBarItem(
                            icon: FaIcon(
                              FontAwesomeIcons.save,
                              size: 20,
                              color: Colors.indigoAccent,
                            ),
                            label: 'Save',
                          ),
                          BottomNavigationBarItem(
                            icon: FaIcon(
                              FontAwesomeIcons.check,
                              size: 20,
                              color: Colors.blue,
                            ),
                            label: 'Publish',
                          ),
                        ],
                      ),
                      color: Colors.blueGrey.withOpacity(.15),
                      borderRadius: 20,
                      x: 0,
                      y: 0),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _addAnItem() {
    // QuestionINS item = QuestionINS.fromJson({
    //   "text": 'question content',
    //   "type": 'choice',
    //   "questionNumber": App_cubit.get(context).Question_create_list!.length,
    //   "grade": 1,
    //   "answers": [],
    // });



      // App_cubit.get(context).Question_create_list!.insert(0, item);
    print('length QController before /////////////////////////////');
    print(App_cubit.get(context).QController.length);
    print('length QController before /////////////////////////////');
    App_cubit.get(context).AController.insert(
        App_cubit.get(context).QController.length,
        [TextEditingController()]);

      App_cubit.get(context).QController.insert(
          App_cubit.get(context).QController.length,
          TextEditingController());
      _listKey.currentState!
          .insertItem(App_cubit.get(context).QController.length-1);
      print('length QController after /////////////////////////////');
      print(App_cubit.get(context).QController.length);
      print('length QController after /////////////////////////////');


  }

  void _removeLastItem() {
    if(App_cubit.get(context).QController.length !=1 ){
      print('length QController before remove /////////////////////////////');
      print(App_cubit.get(context).QController.length);
      print('length QController before remove /////////////////////////////');
      _listKey.currentState!.removeItem(
        App_cubit.get(context).QController.length-1,
            (BuildContext context, Animation<double> animation) =>
            Build_INS_Quiz_Ques(
                context,
                App_cubit.get(context).QController.length-1,
                animation),
        duration: const Duration(milliseconds: 250),
      );
      App_cubit.get(context)
          .QController
          .removeAt(App_cubit.get(context).QController.length - 1);
      print('length QController before remove /////////////////////////////');
      print(App_cubit.get(context).QController.length);
      print('length QController before remove /////////////////////////////');
    }

  }
}
