// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:university_hup/Shared/Cons_widget.dart';
// import 'package:university_hup/Shared/Cubit/App_state.dart';
//
// import '../Shared/Cubit/App_cubit.dart';
// import 'LayoutScreen.dart';
//
// class Switch_screen extends StatelessWidget {
//   const Switch_screen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<App_cubit,App_state>(
//         listener: (context,state){},
//        builder: (context,state){
//           App_cubit cubit=App_cubit.get(context);
//           return Scaffold(
//             appBar:AppBar(
//               title: Text('Switch Screen'),
//             ),
//             body: Container(
//               color: Colors.white,
//               padding: EdgeInsetsDirectional.all(10),
//               child: Column(
//                  crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                 Text('Login as :',
//                   style: TextStyle(
//                     fontSize: 30,
//                   ),
//                 ),
//                   SizedBox(height: 20,),
//                   Container(
//                     height: 50,
//                     width: double.infinity,
//                     decoration: BoxDecoration(
//                       color: Colors.grey[300],
//                       borderRadius: BorderRadius.circular(15)
//                     ),
//                     child: TextButton(onPressed: (){
//                       cubit.switch_isStudent_Fun(is_studentvalue: false);
//                       NavigateAndFinish(context, Layout_Screen());
//                     },
//                       child:Text('Instructor',
//                           style:TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 20)
//                       ) ,),
//                   ),
//                   SizedBox(height: 10,),
//                   Container(
//                     height: 50,
//                     width: double.infinity,
//                     decoration: BoxDecoration(
//                         color: Colors.grey[300],
//                         borderRadius: BorderRadius.circular(15)
//                     ),
//                     child: TextButton(onPressed: (){
//                       cubit.switch_isStudent_Fun(is_studentvalue: true);
//                       NavigateAndFinish(context, Layout_Screen());
//                     },
//                       child:Text('Student',
//                           style:TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 20)
//                       ) ,),
//                   )
//                 ],
//               ),
//             ),
//           );
//        },
//     );
//   }
// }
