import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:university_hup/Shared/Component/component.dart';

import '../../../Shared/Cons_widget.dart';
import '../../../Shared/Cubit/App_cubit.dart';
import '../../../Shared/Cubit/App_state.dart';

class INSCourseGrades extends StatelessWidget {
  const INSCourseGrades({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit, App_state>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                const SizedBox(
                  height: 30,
                ),
                defaultAppbar(context: context, text: 'Material name'),
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
                                    child: Text(
                                      'Student name',
                                      textAlign: TextAlign.center,
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1
                                          ?.copyWith(
                                        color: Colors.black,
                                        fontSize: 23,
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
                      dataRowMaxHeight: 75,
                      dataRowMinHeight: 60,
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
                      rows: [
                        DataRow(cells: [
                          DataCell(Container(
                              width: double.infinity,
                              child: Text(
                                'Quiz 1',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.center,
                              ))),
                          DataCell(Container(
                              width: double.infinity,
                              child:  Row(

                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '5/',
                                    style: TextStyle(
                                      color: Colors.teal,
                                      fontSize: 22,
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
                              ),)),
                        ],),
                        DataRow(cells: [
                          DataCell(Container(
                              width: double.infinity,
                              child: Text(
                                'Midterm',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.center,
                              ))),
                          DataCell(Container(
                            width: double.infinity,
                            child:  Row(

                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '20/',
                                  style: TextStyle(
                                    color: Colors.teal,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  '20',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),)),
                        ],),
                        DataRow(cells: [
                          DataCell(Container(
                              width: double.infinity,
                              child: Text(
                                'Quiz 2',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.center,
                              ))),
                          DataCell(Container(
                            width: double.infinity,
                            child:  Row(

                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '5/',
                                  style: TextStyle(
                                    color: Colors.teal,
                                    fontSize: 22,
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
                            ),)),
                        ],),
                        DataRow(cells: [
                          DataCell(Container(
                              width: double.infinity,
                              child: Text(
                                'Assignment',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.center,
                              ))),
                          DataCell(Container(
                            width: double.infinity,
                            child:  Row(

                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '3/',
                                  style: TextStyle(
                                    color: Colors.teal,
                                    fontSize: 22,
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
                            ),)),
                        ],),
                        DataRow(cells: [
                          DataCell(Container(
                              width: double.infinity,
                              child: Text(
                                'Practical',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.center,
                              ))),
                          DataCell(Container(
                            width: double.infinity,
                            child:  Row(

                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '9/',
                                  style: TextStyle(
                                    color: Colors.teal,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  '15',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),)),
                        ],),
                        // DataRow(cells: [
                        //   DataCell(Container(
                        //       width: 160,
                        //       child: Text(
                        //         'Midterm',
                        //         style: TextStyle(
                        //           color: Colors.black,
                        //           fontSize: 20,
                        //           fontWeight: FontWeight.w700,
                        //         ),
                        //         textAlign: TextAlign.center,
                        //       ))),
                        //   DataCell(Container(
                        //       width: 200,
                        //       child: Text(
                        //         '18/20',
                        //         style: TextStyle(
                        //           color: Colors.black,
                        //           fontSize: 20,
                        //           fontWeight: FontWeight.w700,
                        //         ),
                        //         textAlign: TextAlign.center,
                        //       ))),
                        // ]),
                        // DataRow(cells: [
                        //   DataCell(Container(
                        //       width: 160,
                        //       child: Text(
                        //         'Quiz 2',
                        //         style: TextStyle(
                        //           color: Colors.black,
                        //           fontSize: 20,
                        //           fontWeight: FontWeight.w700,
                        //         ),
                        //         textAlign: TextAlign.center,
                        //       ))),
                        //   DataCell(Container(
                        //       width: 200,
                        //       child: Text(
                        //         '4/5',
                        //         style: TextStyle(
                        //           color: Colors.black,
                        //           fontSize: 20,
                        //           fontWeight: FontWeight.w700,
                        //         ),
                        //         textAlign: TextAlign.center,
                        //       ))),
                        // ]),
                        // DataRow(cells: [
                        //   DataCell(Container(
                        //       width: 160,
                        //       child: Text(
                        //         'Attendance',
                        //         style: TextStyle(
                        //           color: Colors.black,
                        //           fontSize: 20,
                        //           fontWeight: FontWeight.w700,
                        //         ),
                        //         textAlign: TextAlign.center,
                        //       ))),
                        //   DataCell(Container(
                        //       width: 200,
                        //       child: Text(
                        //         '4/5',
                        //         style: TextStyle(
                        //           color: Colors.black,
                        //           fontSize: 20,
                        //           fontWeight: FontWeight.w700,
                        //         ),
                        //         textAlign: TextAlign.center,
                        //       ))),
                        // ]),
                        // DataRow(cells: [
                        //   DataCell(Container(
                        //       width: 160,
                        //       child: Text(
                        //         'Assignment',
                        //         style: TextStyle(
                        //           color: Colors.black,
                        //           fontSize: 20,
                        //           fontWeight: FontWeight.w700,
                        //         ),
                        //         textAlign: TextAlign.center,
                        //       ))),
                        //   DataCell(Container(
                        //       width: 200,
                        //       child: Text(
                        //         '4/5',
                        //         style: TextStyle(
                        //           color: Colors.black,
                        //           fontSize: 20,
                        //           fontWeight: FontWeight.w700,
                        //         ),
                        //         textAlign: TextAlign.center,
                        //       ))),
                        // ]),
                        // DataRow(cells: [
                        //   DataCell(Container(
                        //       width: 160,
                        //       child: Text(
                        //         'Practical',
                        //         style: TextStyle(
                        //           color: Colors.black,
                        //           fontSize: 20,
                        //           fontWeight: FontWeight.w700,
                        //         ),
                        //         textAlign: TextAlign.center,
                        //       ))),
                        //   DataCell(Container(
                        //       width: 200,
                        //       child: Text(
                        //         '9/10',
                        //         style: TextStyle(
                        //           color: Colors.black,
                        //           fontSize: 20,
                        //           fontWeight: FontWeight.w700,
                        //         ),
                        //         textAlign: TextAlign.center,
                        //       ))),
                        // ]),
                      ]),
                ),

                // Table(
                //   border: TableBorder.all(), // Add borders around the table
                //   children: [
                //     TableRow(
                //       children: [
                //         TableCell(
                //           child: Container(
                //             padding: EdgeInsets.all(8.0),
                //             child: Text('Column 1, Row 1'),
                //           ),
                //         ),
                //         TableCell(
                //           child: Container(
                //             padding: EdgeInsets.all(8.0),
                //             child: Text('Column 2, Row 1'),
                //           ),
                //         ),
                //         TableCell(
                //           child: Container(
                //             padding: EdgeInsets.all(8.0),
                //             child: Text('Column 3, Row 1'),
                //           ),
                //         ),
                //         TableCell(
                //           child: Container(
                //             padding: EdgeInsets.all(8.0),
                //             child: Text('Column 4, Row 1'),
                //           ),
                //         ),
                //         TableCell(
                //           child: Container(
                //             padding: EdgeInsets.all(8.0),
                //             child: Text('Column 5, Row 1'),
                //           ),
                //         ),
                //         TableCell(
                //           child: Container(
                //             padding: EdgeInsets.all(8.0),
                //             child: Text('Column 6, Row 1'),
                //           ),
                //         ),
                //       ],
                //     ),
                //     TableRow(
                //       children: [
                //         TableCell(
                //           child: Container(
                //             padding: EdgeInsets.all(8.0),
                //             child: Text('Column 1, Row 2'),
                //           ),
                //         ),
                //         TableCell(
                //           child: Container(
                //             padding: EdgeInsets.all(8.0),
                //             child: Text('Column 2, Row 2'),
                //           ),
                //         ),
                //         TableCell(
                //           child: Container(
                //             padding: EdgeInsets.all(8.0),
                //             child: Text('Column 3, Row 2'),
                //           ),
                //         ),
                //         TableCell(
                //           child: Container(
                //             padding: EdgeInsets.all(8.0),
                //             child: Text('Column 4, Row 2'),
                //           ),
                //         ),
                //         TableCell(
                //           child: Container(
                //             padding: EdgeInsets.all(8.0),
                //             child: Text('Column 5, Row 2'),
                //           ),
                //         ),
                //         TableCell(
                //           child: Container(
                //             padding: EdgeInsets.all(8.0),
                //             child: Text('Column 6, Row 2'),
                //           ),
                //         ),
                //       ],
                //     ),
                //   ],
                // ),

                // Expanded(
                //   child: Padding(
                //     padding: const EdgeInsets.all(15.0),
                //     child: ListView.separated(
                //       itemBuilder: (context, index) =>
                //           InkWell(
                //               onTap: () {
                //                 // navigateTo(context,  STU_About_course());
                //               },
                //               child: Build_STU_All_grades(context)),
                //       separatorBuilder: (context, index) =>
                //       const SizedBox(
                //         height: 20,
                //       ),
                //       itemCount: 5,
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        );
      },
    );
  }
}
