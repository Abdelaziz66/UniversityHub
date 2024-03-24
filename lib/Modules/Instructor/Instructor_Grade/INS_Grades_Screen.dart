import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
                defaultAppbar(context: context, text: 'Student'),
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
                      rows: [
                        DataRow(cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              navigateTo(context, INSCourseGrades());
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
                                          '1. ',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w700,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        Text(
                                          'Abdelaziz elsayed abdelaziz',
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
                        DataRow(cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              navigateTo(context, INSCourseGrades());
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
                                          '1. ',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w700,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        Text(
                                          'Abdelaziz elsayed abdelaziz',
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
                        DataRow(cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              navigateTo(context, INSCourseGrades());
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
                                          '1. ',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w700,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        Text(
                                          'Abdelaziz elsayed abdelaziz',
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
                        DataRow(cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              navigateTo(context, INSCourseGrades());
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
                                          '1. ',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w700,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        Text(
                                          'Abdelaziz elsayed abdelaziz',
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
                        DataRow(cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              navigateTo(context, INSCourseGrades());
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
                                          '1. ',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w700,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        Text(
                                          'Abdelaziz elsayed abdelaziz',
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
                        DataRow(cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              navigateTo(context, INSCourseGrades());
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
                                          '1. ',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w700,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        Text(
                                          'Abdelaziz elsayed abdelaziz',
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
                        DataRow(cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              navigateTo(context, INSCourseGrades());
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
                                          '1. ',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w700,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        Text(
                                          'Abdelaziz elsayed abdelaziz',
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
                        DataRow(cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              navigateTo(context, INSCourseGrades());
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
                                          '1. ',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w700,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        Text(
                                          'Abdelaziz elsayed abdelaziz',
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



                      ]),
                ),

              ],
            ),
          ),
        );
      },
    );
  }
}

//
// class STU_Grades_Screen extends StatelessWidget {
//   const STU_Grades_Screen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder(
//
//     );
//   }
// }

//
// import 'package:dropdown_button2/dropdown_button2.dart';
// import 'package:flutter/material.dart';
// import 'package:university_hup/Shared/Cubit/App_cubit.dart';
//
// List<String> selectedItems = [];
//
// final List<String> items = [
//   'Item1',
//   'Item2',
//   'Item3',
//   'Item4',
// ];
// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     body: Center(
//       child: DropdownButtonHideUnderline(
//         child: DropdownButton2<String>(
//           isExpanded: true,
//           hint: Text(
//             'Select Items',
//             style: TextStyle(
//               fontSize: 14,
//               color: Theme.of(context).hintColor,
//             ),
//           ),
//           items: items.map((item) {
//             return DropdownMenuItem(
//               value: item,
//               //disable default onTap to avoid closing menu when selecting an item
//               enabled: false,
//               child: StatefulBuilder(
//                 builder: (context, menuSetState) {
//                   final isSelected = selectedItems.contains(item);
//                   return InkWell(
//                     onTap: () {
//                       isSelected ? selectedItems.remove(item) : selectedItems.add(item);
//                       //This rebuilds the StatefulWidget to update the button's text
//                       //This rebuilds the dropdownMenu Widget to update the check mark
//                       menuSetState(() {});
//                     },
//                     child: Container(
//                       height: double.infinity,
//                       padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                       child: Row(
//                         children: [
//                           if (isSelected)
//                             const Icon(Icons.check_box_outlined)
//                           else
//                             const Icon(Icons.check_box_outline_blank),
//                           const SizedBox(width: 16),
//                           Expanded(
//                             child: Text(
//                               item,
//                               style: const TextStyle(
//                                 fontSize: 14,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             );
//           }).toList(),
//           //Use last selected item as the current value so if we've limited menu height, it scroll to last item.
//           value: selectedItems.isEmpty ? null : selectedItems.last,
//           onChanged: (value) {},
//           selectedItemBuilder: (context) {
//             return items.map(
//                   (item) {
//                 return Container(
//                   alignment: AlignmentDirectional.center,
//                   child: Text(
//                     selectedItems.join(', '),
//                     style: const TextStyle(
//                       fontSize: 14,
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                     maxLines: 1,
//                   ),
//                 );
//               },
//             ).toList();
//           },
//           buttonStyleData: const ButtonStyleData(
//             padding: EdgeInsets.only(left: 16, right: 8),
//             height: 40,
//             width: 140,
//           ),
//           menuItemStyleData: const MenuItemStyleData(
//             height: 40,
//             padding: EdgeInsets.zero,
//           ),
//         ),
//       ),
//     ),
//   );
// }

// import 'package:dropdown_button2/dropdown_button2.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// final List<String> items = [
//   'A_Item1',
//   'A_Item2',
//   'A_Item3',
//   'A_Item4',
//   'B_Item1',
//   'B_Item2',
//   'B_Item3',
//   'B_Item4',
// ];
//
// String? selectedValue;
// final TextEditingController textEditingController = TextEditingController();
//
// @override
// void dispose() {
//   textEditingController.dispose();
//   super.dispose();
// }
//
// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     body: Center(
//       child: DropdownButtonHideUnderline(
//         child: DropdownButton2<String>(
//           isExpanded: true,
//           hint: Text(
//             'Select Item',
//             style: TextStyle(
//               fontSize: 14,
//               color: Theme.of(context).hintColor,
//             ),
//           ),
//           items: items
//               .map((item) => DropdownMenuItem(
//             value: item,
//             child: Text(
//               item,
//               style: const TextStyle(
//                 fontSize: 14,
//               ),
//             ),
//           ))
//               .toList(),
//           value: selectedValue,
//           onChanged: (value) {
//             setState(() {
//               selectedValue = value;
//             });
//           },
//           buttonStyleData: const ButtonStyleData(
//             padding: EdgeInsets.symmetric(horizontal: 16),
//             height: 40,
//             width: 200,
//           ),
//           dropdownStyleData: const DropdownStyleData(
//             maxHeight: 200,
//           ),
//           menuItemStyleData: const MenuItemStyleData(
//             height: 40,
//           ),
//           dropdownSearchData: DropdownSearchData(
//             searchController: textEditingController,
//             searchInnerWidgetHeight: 50,
//             searchInnerWidget: Container(
//               height: 50,
//               padding: const EdgeInsets.only(
//                 top: 8,
//                 bottom: 4,
//                 right: 8,
//                 left: 8,
//               ),
//               child: TextFormField(
//                 expands: true,
//                 maxLines: null,
//                 controller: textEditingController,
//                 decoration: InputDecoration(
//                   isDense: true,
//                   contentPadding: const EdgeInsets.symmetric(
//                     horizontal: 10,
//                     vertical: 8,
//                   ),
//                   hintText: 'Search for an item...',
//                   hintStyle: const TextStyle(fontSize: 12),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                 ),
//               ),
//             ),
//             searchMatchFn: (item, searchValue) {
//               return item.value.toString().contains(searchValue);
//             },
//           ),
//           //This to clear the search value when you close the menu
//           onMenuStateChange: (isOpen) {
//             if (!isOpen) {
//               textEditingController.clear();
//             }
//           },
//         ),
//       ),
//     ),
//   );
// }

//
// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Timer App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: TimerScreen(),
//     );
//   }
// }
//
// class TimerScreen extends StatefulWidget {
//   @override
//   _TimerScreenState createState() => _TimerScreenState();
// }
//
// class _TimerScreenState extends State<TimerScreen> {
//   int hours = 0;
//   int minutes = 0;
//   int seconds = 0;
//   late Timer timer;
//
//   @override
//   void initState() {
//     super.initState();
//     timer = Timer.periodic(Duration(seconds: 1), _updateTimer);
//   }
//
//   void _updateTimer(Timer timer) {
//     setState(() {
//       if (seconds < 59) {
//         seconds++;
//       } else {
//         seconds = 0;
//         if (minutes < 59) {
//           minutes++;
//         } else {
//           minutes = 0;
//           hours++;
//         }
//       }
//     });
//   }
//
//   String _formatTime() {
//     String formattedHours = DateFormat('HH').format(DateTime(0, 0, 0, hours));
//     String formattedMinutes = DateFormat('mm').format(DateTime(0, 0, 0, 0, minutes));
//     String formattedSeconds = DateFormat('ss').format(DateTime(0, 0, 0, 0, 0, seconds));
//
//     return '$formattedHours:$formattedMinutes:$formattedSeconds';
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Timer App'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               _formatTime(),
//               style: TextStyle(fontSize: 36),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     timer.cancel();
//     super.dispose();
//   }
// }
