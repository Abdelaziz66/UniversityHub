import 'dart:typed_data';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../Shared/Component/component.dart';
import '../../../../../Shared/Cubit/App_cubit.dart';
import '../../../../../Shared/Cubit/App_state.dart';

class STU_About_Assign_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit,App_state>(
      listener:(context,stata){},
      builder: (context,state){
        App_cubit cubit=App_cubit.get(context);
        List< PlatformFile>all_files=cubit.all_assign_files_List;
        return Scaffold(
          appBar: AppBar(
            title: Text("Assignment"),
            actions: [
              TextButton(onPressed: (){
                // cubit.AddPost(
                //   postText:postTextController.text,
                // );
                // cubit.GetPosts();
                Navigator.pop(context);
              }, child: Text('Done',
                  style: Theme.of(context).textTheme.subtitle1
              )),
            ],
          ),
          body: Container(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // if(state is ImagePostUploadLoadingState)
                  //   LinearProgressIndicator(),
                  Text('Material name',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 40,
                    child: Text(
                      'Assignment info......',
                      style: TextStyle(
                        fontSize:20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Spacer(),
                  all_files.isNotEmpty?
                  Expanded(
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
                  )
                      :Spacer(),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                            height: 45,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                            ),
                            child:
                            //cubit.pickPostImage==null?
                            TextButton(
                                onPressed: (){
                                  if(all_files==[]) cubit.pick_assign_File();
                                  else cubit.add_Assign_NewFile_To_FIles_List();
                                },
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.file_present_rounded,color: Colors.white,),
                                    SizedBox(
                                      width: 5,),
                                    Text('Upload',
                                      style:  Theme.of(context).textTheme.subtitle1?.copyWith(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                )

                            )
                        ),
                      ),
                      SizedBox(width:7 ,),

                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
