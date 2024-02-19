import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
              children: [
                const SizedBox(height: 30,),
                defaultAppbar(context: context, text: 'Material name'),
                const SizedBox(height: 30,),


                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: DataTable(
                    decoration: BoxDecoration(
                      color: Colors.white70,
                    ),
                    headingRowHeight: 80,
                      headingRowColor:MaterialStateProperty.all(Colors.cyan),
                    dataRowMaxHeight: 60,
                    border: TableBorder.all(
                      color: Colors.blue,
                      width: 2
                    ),
                      columns: [
                        DataColumn(
                          label: Expanded(
                            child: Container(
                                width: 250,
                                child: Text('Task',
                                style: Theme.of(context).textTheme.subtitle1?.copyWith(
                                  color: Colors.white
                                ),
                                )),
                          ),
                        ),
                        DataColumn(
                          label: Container(

                            child: Text('Grade',
                                style:Theme.of(context).textTheme.subtitle1?.copyWith(
                                  color: Colors.white
                                )
                            ),
                          ),
                        ),

                      ],
                      rows: [

                        DataRow(cells: [
                          DataCell(Text('Quiz 1')),
                          DataCell(Text('3/5')),

                        ]),
                        DataRow(cells: [
                          DataCell(Text('Quiz 2')),
                          DataCell(Text('3/5')),

                        ]),
                        DataRow(cells: [
                          DataCell(Text('Quiz 1',
                         // style: Theme.of(context).textTheme.subtitle1,
                          )),
                          DataCell(Text('3/5')),

                        ]),
                        DataRow(cells: [
                          DataCell(Text('Quiz 1')),
                          DataCell(Text('3/5')),

                        ]),
                        DataRow(cells: [
                          DataCell(Text('Quiz 1')),
                          DataCell(Text('3/5')),

                        ]),

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
