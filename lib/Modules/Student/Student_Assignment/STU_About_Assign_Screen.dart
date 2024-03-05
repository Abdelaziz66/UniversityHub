
//import 'dart:html';
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
       //  var all_files=cubit.assignFile;
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



                Text('${ cubit.assignName}',
                  style: const TextStyle(
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
                cubit.assignFile!=null?
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: GridView.builder(
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 6,
                          crossAxisSpacing: 6,
                        ),
                        itemCount: 1,//all_files.length,
                        itemBuilder: (context, index)
                        {
                          final file = cubit.assignFile;
                          return BuildAssignFileViewWidget(index,context,file!);
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
                                  print('ssssss${cubit.assignFile}');
                                  if(cubit.assignFile==null) {
                                    cubit.pick_assign_File();
                                  }
                                  else {
                                   // print('files:${cubit.all_assign_files_List}');
                                    print(cubit.assignFile);
                                    // cubit.add_Assign_NewFile_To_FIles_List();
                                    cubit.SumitTask();
                                   }
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.file_present_rounded,color: Colors.white,),
                                    SizedBox(
                                      width: 5,),
                                      Text(
                                       // all_file=null?
                                            'Attach File' ,//: 'Done',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
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
