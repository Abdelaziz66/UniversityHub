import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../Shared/Component/component.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
        List<File> all_files=cubit.all_assign_files_List;
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



                Text('${ cubit.stuAssignDataModel?.taskName??'Task Name'}',
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  padding: EdgeInsetsDirectional.all(8),
                  height: 70,
                  width: double.infinity,
                  child: const Text(
                    'please attach one file have your task and submit ....',
                    style: TextStyle(
                      fontSize:20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                SizedBox(height: 50,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 155,
                    decoration: BoxDecoration(
                      // color: Colors.blueGrey.withOpacity(.05),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: .5),
                    ),
                    child: Padding(
                      padding:
                      const EdgeInsets.only(top: 10.0, right: 15, bottom: 10, left: 15),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Text('More about task...'),
                              Spacer(),
                              SizedBox(
                                width: 7,
                              ),
                              InkWell(
                                onTap: () {
                                  // Alrat(
                                  //     context: context,
                                  //     no: () {
                                  //       Navigator.pop(context);
                                  //     },
                                  //     text: 'Do you want to delete Task ?',
                                  //     yes: () {
                                  //       App_cubit.get(context).INS_Delete_Assign(Taskid: assign!.taskId);
                                  //       Navigator.pop(context);
                                  //
                                  //     });
                                },
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  child: Center(
                                    child: FaIcon(
                                      FontAwesomeIcons.circleCheck,
                                      size: 26,
                                      color: Colors.teal.withOpacity(.7),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Container(
                            color: Colors.black.withOpacity(.3),
                            height: .5,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Row(
                                          children: [
                                            FaIcon(
                                              FontAwesomeIcons.bookmark,
                                              size: 12,
                                            ),
                                            SizedBox(
                                              width: 7,
                                            ),
                                            Text(
                                              'Task grade : ${cubit.stuAssignDataModel?.taskGrade}',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700, fontSize: 13),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Row(
                                          children: [
                                            FaIcon(
                                              FontAwesomeIcons.clock,
                                              size: 12,
                                            ),
                                            SizedBox(
                                              width: 7,
                                            ),
                                            Container(
                                              width: 150,

                                              child: Text(
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 1,
                                                'Create at ${cubit.stuAssignDataModel?.createdAt}',
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w700, fontSize: 13),
                                              ),

                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 2,
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cubit.openFile_Fun(networkFile:cubit.stuAssignDataModel?.filePath );
                                        },
                                        child: Container(
                                          height: 45,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Colors.teal.withOpacity(.6),
                                            borderRadius: BorderRadius.circular(12),
                                            // border: Border.all(width: .5),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Open File',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 20,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                all_files.isNotEmpty?
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                      child: Row(

                        children: [
                      GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 6,
                        crossAxisSpacing: 6,
                      ),
                      itemCount: all_files.length,
                      itemBuilder: (context, index)
                      {
                        return BuildAssignFileViewWidget(index,context,all_files[index]);
                      }
                        ),
                  ],

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
                            TextButton(
                                onPressed: (){
                                  if(all_files.isEmpty) {
                                    cubit.pick_File();
                                  }
                                  else {
                                    cubit.SumitTask();
                                    Navigator.pop(context);
                                   }

                                },
                                child:all_files.isEmpty?
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.file_present_rounded,color: Colors.white,),
                                    SizedBox(
                                      width: 5,),
                                      Text(
                                            'Attach File' ,//: 'Done',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      )
                                  ],
                                ): const Text(
                              'Done' ,//: 'Done',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),

                            )
                        ),
                      ),
                      // SizedBox(width:5 ,),
                      // all_files.isNotEmpty? Container(
                      //     height: 55,
                      //     width: 50,
                      //     decoration: BoxDecoration(
                      //       color: Colors.grey.withOpacity(.9),
                      //       borderRadius: BorderRadius.circular(20),
                      //     ),
                      //     child:
                      //     TextButton(
                      //         onPressed: (){
                      //           print('add new file ');
                      //           cubit.pick_assign_File();
                      //         },
                      //         child: Row(
                      //           mainAxisAlignment: MainAxisAlignment.center,
                      //           children: [
                      //             Icon(Icons.add,color: Colors.white,),
                      //           ],
                      //         )
                      //
                      //     )
                      // ):SizedBox(),

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
