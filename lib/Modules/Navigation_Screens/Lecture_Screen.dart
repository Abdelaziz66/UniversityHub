// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import '../../Shared/Component/component.dart';
// import '../../Shared/constant.dart';
// import '../In_Lecture_Screens/In_Lecture_Screen.dart';
//
// class Lecture_screen extends StatelessWidget {
//   Lecture_screen({super.key});
//   var drawerkey = GlobalKey<ScaffoldState>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: drawerkey,
//       backgroundColor: Colors.transparent,
//       drawer: Drawer(
//         // width: 220,
//         // shape: Border.all(width: 3,color: Colors.red,style: BorderStyle.solid),
//         backgroundColor: Colors.transparent,
//         shadowColor: c5,
//         elevation: 0,
//
//         child: Padding(
//           padding: const EdgeInsets.only(top: 20, left: 10, bottom: 0),
//           child: Column(
//             children: [
//               Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20),
//                   color: c1.withOpacity(1),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(15.0),
//                   // child:ListView.separated(itemBuilder: (context, index) => Lecture_C(), separatorBuilder:
//                   //     (context, index) => SizedBox(), itemCount: 6,),
//                   child: Column(children: [
//                     Lecture_C(),
//                     Lecture_C(),
//                     Lecture_C(),
//                     Lecture_C(),
//                     Lecture_C(),
//                     Lecture_C(),
//                   ]),
//                 ),
//               ),
//
//               const Spacer(),
//             ],
//           ),
//         ),
//       ),
//       body: Stack(
//         children:[
//           const Padding(
//             padding: EdgeInsets.all(8.0),
//             child: Matrial_Screen(),
//           ),
//           Container(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(left: 0.0, top: 23),
//                     child: Container(
//                       width: 60,
//                       decoration: BoxDecoration(
//                         borderRadius: const BorderRadius.only(topRight: Radius.circular(25),bottomRight: Radius.circular(25)),
//                         color: c4,
//                       ),
//
//
//                       child: IconButton(
//                           onPressed: () => drawerkey.currentState?.openDrawer(),
//                           icon: FaIcon(
//                             FontAwesomeIcons.anglesRight,
//                             color: c1,
//                             size: 28,
//                           )),
//                     ),
//                   ),
//
//                   const Spacer(),
//                 ],
//               ),
//
//
//               const Spacer(),
//             ],
//           ),
//         ),
//         ]
//       ),
//     );
//   }
// }
