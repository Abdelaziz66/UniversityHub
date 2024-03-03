
import 'package:file_picker/file_picker.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../../../Shared/Component/component.dart';
import '../../../Shared/Cons_widget.dart';
import '../../../Shared/Cubit/App_cubit.dart';
import '../../../Shared/Cubit/App_state.dart';

class INS_About_Assign_Screen extends StatelessWidget {
  const INS_About_Assign_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit,App_state>(
      listener:(context,stata){},
      builder: (context,state){
        App_cubit cubit=App_cubit.get(context);
        List< PlatformFile>all_files=cubit.all_assign_files_List;
        return Scaffold(
          // appBar: AppBar(
          //   title: Text("Assignment"),
          //   actions: [
          //     TextButton(onPressed: (){
          //       // cubit.AddPost(
          //       //   postText:postTextController.text,
          //       // );
          //       // cubit.GetPosts();
          //       Navigator.pop(context);
          //     }, child: Text('Done',
          //         style: Theme.of(context).textTheme.subtitle1
          //     )),
          //   ],
          // ),
          body: SafeArea(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30,),
                defaultAppbar(context: context),
                const SizedBox(height: 30,),

                const Text('Material name',
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
