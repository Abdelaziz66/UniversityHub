
import 'package:file_picker/file_picker.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../../../Models/STU_Model/CourseModel/STU_Course_Assign_Model.dart';
import '../../../Shared/Component/component.dart';
import '../../../Shared/Cons_widget.dart';
import '../../../Shared/Cubit/App_cubit.dart';
import '../../../Shared/Cubit/App_state.dart';

class STU_About_Assign_Screen extends StatelessWidget {
  const STU_About_Assign_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit,App_state>(
      listener:(context,stata){},
      builder: (context,state){
        App_cubit cubit=App_cubit.get(context);
       // STU_Course_Assign_Model? assign;
        List< PlatformFile>all_files=cubit.all_assign_files_List;
        return Scaffold(
          body: SafeArea(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30,),
                defaultAppbar(
                    text: cubit.currentCourseName,
                    context: context),
                const SizedBox(height: 30,),

                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 15.0),
                //   child: GlassBox(
                //       widget: Padding(
                //         padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 15),
                //         child: Row(
                //           mainAxisAlignment: MainAxisAlignment.center,
                //           children: [
                //
                //
                //             FaIcon(
                //               FontAwesomeIcons.solidUser,
                //               color: c1.withOpacity(.9),
                //             ),
                //             const SizedBox(
                //               width: 10,
                //             ),
                //             Text(
                //               'Instructor',
                //               style: TextStyle(
                //                 fontSize: 17,
                //                 fontWeight: FontWeight.w700,
                //                 color: c1,
                //               ),
                //             ),
                //             Spacer(),
                //             FaIcon(
                //               FontAwesomeIcons.angleRight,
                //               color: c1.withOpacity(.9),
                //             ),
                //             Spacer(),
                //             FaIcon(
                //               FontAwesomeIcons.solidFolder,
                //               color: c1.withOpacity(.9),
                //             ),
                //             const SizedBox(
                //               width: 10,
                //             ),
                //             Text(
                //               'Lecture 1',
                //               style: TextStyle(
                //                 fontSize: 17,
                //                 fontWeight: FontWeight.w700,
                //                 color: c1,
                //               ),
                //             ),
                //           ],
                //         ),
                //       ),
                //       color: Colors.blueGrey.withOpacity(.15),
                //       borderRadius: 15,
                //       x: 0,
                //       y: 0
                //   ),
                // ),
                // // SizedBox(height: 8,),
                // //
                // // Text('The instructor comment....'),
                // SizedBox(height: 15,),
                // SizedBox(height: 30,),
                // Row(
                //   children: [
                //     Padding(
                //       padding: const EdgeInsets.only(left: 30.0),
                //       child: GestureDetector(
                //           onTap: (){
                //             Navigator.pop(context);
                //           },
                //           child: FaIcon(FontAwesomeIcons.angleLeft,size: 30)),
                //     ),
                //     SizedBox(width: 15,),
                //     Text(
                //       'Parallel Programming ',textAlign: TextAlign.center,
                //       style: TextStyle(
                //           fontWeight: FontWeight.w700, color: c1, fontSize: 20
                //       ),
                //     ),
                //     Spacer(),
                //     Padding(
                //       padding: const EdgeInsets.only(right: 30.0),
                //       child: Container(
                //
                //         height: 30,
                //         width:30,
                //         decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(10),
                //           // image: DecorationImage(
                //           //
                //           //     image: NetworkImage(
                //           //       '',
                //           //
                //           //     ),
                //           //     fit: BoxFit.cover
                //           // ),
                //           color: Colors.blue,
                //         ),
                //       ),
                //     ),
                //
                //   ],
                // ),
                // SizedBox(height: 40,),
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 15.0),
                //   child: GlassBox(
                //       widget: Padding(
                //         padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 15),
                //         child: Row(
                //           mainAxisAlignment: MainAxisAlignment.center,
                //           children: [
                //
                //
                //             FaIcon(
                //               FontAwesomeIcons.bookOpen,
                //               color: c1.withOpacity(.9),
                //             ),
                //             const SizedBox(
                //               width: 10,
                //             ),
                //             Text(
                //               'Material',
                //               style: TextStyle(
                //                 fontSize: 17,
                //                 fontWeight: FontWeight.w700,
                //                 color: c1,
                //               ),
                //             ),
                //             Spacer(),
                //             FaIcon(
                //               FontAwesomeIcons.angleRight,
                //               color: c1.withOpacity(.9),
                //             ),
                //             Spacer(),
                //             FaIcon(
                //               FontAwesomeIcons.solidUser,
                //               color: c1.withOpacity(.9),
                //             ),
                //             const SizedBox(
                //               width: 10,
                //             ),
                //             Text(
                //               'Instructor',
                //               style: TextStyle(
                //                 fontSize: 17,
                //                 fontWeight: FontWeight.w700,
                //                 color: c1,
                //               ),
                //             ),
                //           ],
                //         ),
                //       ),
                //       color: Colors.blueGrey.withOpacity(.15),
                //       borderRadius: 15,
                //       x: 0,
                //       y: 0
                //   ),
                // ),
                // SizedBox(height: 15,),
                // Padding(
                //   padding: const EdgeInsets.only(left: 15, top: 10, right: 15),
                //   child: Row(
                //     children: [
                //       Expanded(
                //           child: GestureDetector(
                //             onTap: () {
                //               cubit.D_E_Function(de: true);
                //             },
                //             child: Container(
                //               decoration: BoxDecoration(
                //                 borderRadius: BorderRadius.circular(15),
                //                 color: cubit.DE ? Colors.blue : Colors.blue.withOpacity(.4),
                //               ),
                //               child: Padding(
                //                 padding: const EdgeInsets.all(15.0),
                //                 child: Center(
                //                   child: Text(
                //                     'Lectures',
                //                     style: TextStyle(
                //                       fontSize: 20,
                //                       fontWeight: FontWeight.bold,
                //                       color: cubit.DE ? c5 : c1,
                //                     ),
                //                   ),
                //                 ),
                //               ),
                //             ),
                //           )),
                //       const SizedBox(
                //         width: 15,
                //       ),
                //       Expanded(
                //           child: GestureDetector(
                //             onTap: () {
                //               cubit.D_E_Function(de: false);
                //             },
                //             child: Container(
                //               decoration: BoxDecoration(
                //                 borderRadius: BorderRadius.circular(15),
                //                 color: cubit.DE ? Colors.blue.withOpacity(.4): Colors.blue,
                //               ),
                //               child: Padding(
                //                 padding: const EdgeInsets.all(15.0),
                //                 child: Center(
                //                   child: Text(
                //                     'Labs',
                //                     style: TextStyle(
                //                       fontSize: 20,
                //                       fontWeight: FontWeight.bold,
                //                       color: cubit.DE ? c1 : c5,
                //                     ),
                //                   ),
                //                 ),
                //               ),
                //             ),
                //           )),
                //     ],
                //   ),
                // ),

                Text('${ cubit.assignName}',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  height: 40,
                  child: const Text(
                    'Assignment info',
                    style: TextStyle(
                      fontSize:20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                const Spacer(),
                all_files.isNotEmpty?
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: GridView.builder(
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 6,
                          crossAxisSpacing: 6,
                        ),
                        itemCount: all_files.length,
                        itemBuilder: (context, index)
                        {
                          final file = all_files[index];
                          return BuildAssignFileViewWidget(index,context,file);
                        }
                    ),
                  ),
                )
                    :const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                            height: 55,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(22),
                            ),
                            child:
                            //cubit.pickPostImage==null?
                            TextButton(
                                onPressed: (){
                                  if(all_files==[]) {
                                    cubit.pick_assign_File();
                                  } else {
                                    cubit.add_Assign_NewFile_To_FIles_List();
                                  }
                                },
                                child:const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.file_present_rounded,color: Colors.white,),
                                    SizedBox(
                                      width: 5,),
                                    Text('Upload',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                      ),
                                    ),
                                  ],
                                )

                            )
                        ),
                      ),
                      const SizedBox(width:7 ,),

                    ],
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
