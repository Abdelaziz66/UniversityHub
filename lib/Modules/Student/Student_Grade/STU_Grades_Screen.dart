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