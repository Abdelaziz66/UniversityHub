import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:university_hup/Shared/Cubit/App_cubit.dart';
import 'package:university_hup/Shared/Cubit/App_state.dart';

import '../../../Shared/Component/component.dart';
import '../../../Shared/Cons_widget.dart';
import 'INS_Course_Grades.dart';

class INSAllGradesScreen extends StatelessWidget {
  const INSAllGradesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit, App_state>(
      listener: (context, state) {},
      builder: (context, state) {
        App_cubit cubit = App_cubit.get(context);
        return Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                defaultAppbar(context: context, text: cubit.currentCourseName),
                const SizedBox(
                  height: 30,
                ),
                // child: Padding(
                //   padding: const EdgeInsets.all(15.0),
                //   child: ListView.separated(
                //     itemBuilder: (context, index) => InkWell(
                //         onTap: () {
                //           navigateTo(context,  INSCourseGrades());
                //         },
                //         child: Build_STU_All_grades(context,index,cubit.stuAllGrades)),
                //     separatorBuilder: (context, index) => const SizedBox(
                //       height: 20,
                //     ),
                //     itemCount: 5,
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: DataTable(

                      decoration: BoxDecoration(
                        // color: Colors.blueGrey.withOpacity(.3),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      headingRowHeight: 50,


                      horizontalMargin: 0,
                      columnSpacing: 0,
                      headingRowColor:
                      MaterialStateProperty.all(Colors.transparent),
                      dataRowMaxHeight: 60,
                      dataRowMinHeight: 50,
                      dividerThickness: .4,
                      // border: TableBorder(
                      //
                      //   horizontalInside:
                      //   BorderSide(color: Colors.teal, width: 2),
                      // ),
                      columns: [

                        DataColumn(
                          label: Container(
                            width: MediaQuery.of(context).size.width*.85,

                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    FaIcon(FontAwesomeIcons.solidUser,color: Colors.teal,),
                                    SizedBox(width: 15,),
                                    Container(
                                        child: Text(
                                          'Student name',
                                          textAlign: TextAlign.center,
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle1
                                              ?.copyWith(
                                            color: Colors.teal,
                                            fontSize: 23,
                                            fontWeight: FontWeight.w900,
                                          ),
                                        )),
                                    Spacer(),
                                    Container(
                                        child: Text(
                                          '125',
                                          textAlign: TextAlign.center,
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle1
                                              ?.copyWith(
                                            color: Colors.teal,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w900,
                                          ),
                                        )),
                                  ],
                                ),
                                Spacer(),
                                Container(
                                  height: 2,
                                  color: Colors.teal,
                                  width: double.infinity,

                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                      rows: List<DataRow>.generate(cubit.student_list.length, (index) =>
                        DataRow(cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              cubit.INS_Get_grade_for_Student(id:cubit.student_list[index].studentId!,);
                              showDialog<String>(
                                context: context,
                                barrierColor: Colors.black.withOpacity(.3),
                                useSafeArea: true,
                                builder: (BuildContext context) => AlertDialog(
                                  insetPadding: const EdgeInsets.all(0.0),
                                  scrollable: false,
                                  shadowColor: Colors.transparent,
                                  content: Center(
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: GlassBox(
                                            widget: Stack(
                                              children: [
                                                Column(
                                                  children: [
                                                    const Spacer(),
                                                    Padding(
                                                      padding: const EdgeInsets.all(15.0),
                                                      child: GlassBoxWithBorder(
                                                        widget: Container(
                                                          height: 600,
                                                          child: Padding(
                                                            padding: const EdgeInsets
                                                                .only(
                                                                bottom: 25.0,
                                                                left: 10,
                                                                right: 10,
                                                                top: 20
                                                            ),
                                                            child:Column(
                                                              crossAxisAlignment: CrossAxisAlignment.center,

                                                              children: [
                                                                const SizedBox(
                                                                  height: 30,
                                                                ),
                                                                defaultAppbar(context: context, text: cubit.currentCourseName),
                                                                const SizedBox(
                                                                  height: 30,
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsets.all(15.0),
                                                                  child: GlassBox(
                                                                      widget:Padding(
                                                                        padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 15),
                                                                        child: Column(
                                                                          children: [
                                                                            Row(
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                              children: [
                                                                                FaIcon(FontAwesomeIcons.solidUser,color: Colors.black,),
                                                                                SizedBox(width: 15,),
                                                                                Container(
                                                                                  width: 140,
                                                                                    child: Text(
                                                                                      '${cubit.student_list[index].studentName}',
                                                                                      textAlign: TextAlign.center,
                                                                                      maxLines: 1,
                                                                                      overflow: TextOverflow.ellipsis,
                                                                                      style: Theme.of(context)
                                                                                          .textTheme
                                                                                          .subtitle1
                                                                                          ?.copyWith(
                                                                                        color: Colors.black,
                                                                                        fontSize: 20,
                                                                                        fontWeight: FontWeight.w700,
                                                                                      ),
                                                                                    )),
                                                                                Spacer(),
                                                                                Row(

                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                  children: [
                                                                                    Text(
                                                                                      '25/',
                                                                                      style: TextStyle(
                                                                                        color: Colors.teal,
                                                                                        fontSize: 22,
                                                                                        fontWeight: FontWeight.w700,
                                                                                      ),
                                                                                      textAlign: TextAlign.center,
                                                                                    ),
                                                                                    Text(
                                                                                      '100',
                                                                                      style: TextStyle(
                                                                                        color: Colors.black,
                                                                                        fontSize: 15,
                                                                                        fontWeight: FontWeight.w700,
                                                                                      ),
                                                                                      textAlign: TextAlign.center,
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Container(
                                                                              height: 40,
                                                                              child: LinearPercentIndicator(


                                                                                percent: .25,
                                                                                backgroundColor: Colors.blueGrey.withOpacity(.2),
                                                                                progressColor: Colors.teal.withOpacity(.6),
                                                                                barRadius: Radius.circular(20),
                                                                                lineHeight: 12,
                                                                                trailing: Text('100'),
                                                                                leading: Text('25') ,

                                                                                animation: true,
                                                                                animationDuration: 1500,
                                                                                curve: Curves.easeOutBack,




                                                                                // footer: Padding(
                                                                                //   padding: const EdgeInsets.only(top:0.0),
                                                                                //   child: Text('Submited',
                                                                                //     style: TextStyle(
                                                                                //       fontWeight: FontWeight.w600,
                                                                                //       fontSize: 15,
                                                                                //       color: Colors.teal,
                                                                                //     ),
                                                                                //   ),
                                                                                // ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      color: Colors.blueGrey.withOpacity(.15),
                                                                      borderRadius: 20,
                                                                      x: 0,
                                                                      y: 0),
                                                                ),

                                                                SizedBox(height: 20,),
                                                                Padding(
                                                                  padding: const EdgeInsets.all(15.0),
                                                                  child: DataTable(

                                                                      decoration: BoxDecoration(
                                                                        // color: Colors.blueGrey.withOpacity(.3),
                                                                        color: Colors.transparent,
                                                                        borderRadius: BorderRadius.circular(25),
                                                                      ),
                                                                      headingRowHeight: 50,


                                                                      horizontalMargin: 0,
                                                                      columnSpacing: 0,
                                                                      headingRowColor:
                                                                      MaterialStateProperty.all(Colors.transparent),
                                                                      dataRowMaxHeight: 50,
                                                                      dataRowMinHeight: 50,
                                                                      dividerThickness: .2,
                                                                      border: TableBorder(
                                                                        verticalInside:
                                                                        BorderSide(color: Colors.teal, width: 2),
                                                                      ),
                                                                      columns: [
                                                                        DataColumn(
                                                                          label: Container(
                                                                            width: MediaQuery.of(context).size.width*.33,

                                                                            child: Column(
                                                                              children: [
                                                                                Container(
                                                                                    child: Text(
                                                                                      'Task',
                                                                                      textAlign: TextAlign.center,
                                                                                      style: Theme.of(context)
                                                                                          .textTheme
                                                                                          .subtitle1
                                                                                          ?.copyWith(
                                                                                        color: Colors.teal,
                                                                                        fontSize: 23,
                                                                                        fontWeight: FontWeight.w900,
                                                                                      ),
                                                                                    )),
                                                                                Spacer(),
                                                                                Container(
                                                                                  height: 2,
                                                                                  color: Colors.teal,
                                                                                  width: double.infinity,
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        DataColumn(
                                                                          label: Container(
                                                                            width: MediaQuery.of(context).size.width*.50,

                                                                            child: Column(
                                                                              children: [
                                                                                Container(
                                                                                    child: Text(
                                                                                      'Grade',
                                                                                      textAlign: TextAlign.center,
                                                                                      style: Theme.of(context)
                                                                                          .textTheme
                                                                                          .subtitle1
                                                                                          ?.copyWith(
                                                                                        color: Colors.teal,
                                                                                        fontSize: 23,
                                                                                        fontWeight: FontWeight.w900,
                                                                                      ),
                                                                                    )),
                                                                                Spacer(),
                                                                                Container(
                                                                                  height: 2,
                                                                                  color: Colors.teal,
                                                                                  width: double.infinity,

                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                      rows: List<DataRow>.generate(cubit.GradeforStudent_list.length, (index) =>

                                                                          DataRow(cells:[
                                                                            DataCell(
                                                                              //Text(stuGrades[index].title!
                                                                                Container(
                                                                                    padding: EdgeInsets.only(right: 15),
                                                                                    width: double.infinity,
                                                                                    child: Text(
                                                                                    '${cubit.GradeforStudent_list[index].title}',
                                                                                      style: const TextStyle(
                                                                                        color: Colors.black,
                                                                                        fontSize: 15,
                                                                                        fontWeight: FontWeight.w700,
                                                                                      ),
                                                                                      textAlign: TextAlign.center,
                                                                                    ))
                                                                            ),
                                                                            DataCell(Container(
                                                                              width: double.infinity,
                                                                              child:  Row(

                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                children: [
                                                                                  Text(
                                                                                    '5/',
                                                                                    style: TextStyle(
                                                                                      color: Colors.teal,
                                                                                      fontSize: 20,
                                                                                      fontWeight: FontWeight.w700,
                                                                                    ),
                                                                                    textAlign: TextAlign.center,
                                                                                  ),
                                                                                  Text(
                                                                                    '5',
                                                                                    style: TextStyle(
                                                                                      color: Colors.black,
                                                                                      fontSize: 15,
                                                                                      fontWeight: FontWeight.w700,
                                                                                    ),
                                                                                    textAlign: TextAlign.center,
                                                                                  ),
                                                                                ],
                                                                              ),),)])//${stuGrades[index].grade!}
                                                                      )
                                                                  ),
                                                                ),


                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        color: Colors.white
                                                            .withOpacity(.5),
                                                        borderRadius: 30,
                                                        x: 15,
                                                        y: 15,
                                                        BorderWidth: 1,
                                                        BorderColor: Colors.white,
                                                      ),
                                                    ),
                                                    const Spacer(
                                                      flex: 1,
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            color: Colors.transparent,
                                            borderRadius: 0,
                                            x: 3,
                                            y: 3),
                                      ),
                                    ),
                                  ),
                                  elevation: 0,
                                  clipBehavior: Clip.none,
                                  surfaceTintColor: Colors.transparent,
                                  backgroundColor: Colors.transparent,
                                  contentPadding: EdgeInsets.zero,
                                ),
                              );
                              // navigateTo(context, INSCourseGrades());
                            },
                            child: Container(
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          '${index+1}- ',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w700,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        Text(
                                          '${cubit.student_list[index].studentName}',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w700,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(color: Colors.teal,width: 2)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 1.0,horizontal: 6),
                                        child: Text(
                                          'more',
                                          style: TextStyle(
                                            color: Colors.teal,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                          )),
                        ],),
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


