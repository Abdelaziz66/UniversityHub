import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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



                Text('${ cubit.stuAssignDataModel?.taskName}',
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  height: 40,
                  width: double.infinity,
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
                          return BuildAssignFileViewWidget(index,context,all_files[index]);
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
                            TextButton(
                                onPressed: (){
                                  if(all_files.isEmpty) {
                                    cubit.pick_assign_File();
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
                      SizedBox(width:5 ,),
                      all_files.isNotEmpty? Container(
                          height: 55,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(.9),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child:
                          TextButton(
                              onPressed: (){
                                print('add new file ');
                                cubit.pick_assign_File();
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.add,color: Colors.white,),
                                ],
                              )

                          )
                      ):SizedBox(),

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
