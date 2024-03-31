

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:university_hup/Models/STU_Model/CourseModel/Stu_Course_MaterialModel.dart';

import 'package:university_hup/Shared/Component/component.dart';
import 'package:university_hup/Shared/Cons_widget.dart';
import 'package:university_hup/Shared/Cubit/App_cubit.dart';
import 'package:university_hup/Shared/Cubit/App_state.dart';
import 'package:university_hup/Shared/constant.dart';

import '../../../Models/INS_Model/CourseModel.dart';
import '../../Student/Student_Material/fileViewer.dart';




class INS_Show_Material_Lec_Or_Sec extends StatelessWidget {
 final String? foldeName;
  INS_Show_Material_Lec_Or_Sec({required this.foldeName});

  // final List<PlatformFile>files;
  // final ValueChanged<PlatformFile>onOpenedFile;
  // const Show_Material_Lec_Or_Sec({
  //   required this.files,
  //  required this.onOpenedFile
  // });

  var scafoldkey2 = GlobalKey<ScaffoldState>();
  var formKey = GlobalKey<FormState>();
  var fileFormKey=GlobalKey<FormState>();
  var fileController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit,App_state>(
      listener: (context,state){},
      builder: (context,state){

        App_cubit cubit=App_cubit.get(context);

        List<InsLecFilesModel>insCourseFles=cubit.insCoursesMatrialFileModel;
        List<File> all_files=cubit.all_assign_files_List;

        bool isvisbile2=false;
        return Scaffold(

          key: scafoldkey2,


          floatingActionButton: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 8),
            child: FloatingActionButton(
              onPressed: (){
                cubit.makeListNull();
                if(cubit.visiblity==false)
                {
                  scafoldkey2.currentState?.showBottomSheet(
                          (context) {
                        return StatefulBuilder(builder:(BuildContext context, StateSetter setState){
                          return  Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GlassBoxWithBorder(
                              widget: InkWell(
                                onTap: (){
                                  cubit.openFile_Fun(filePath:cubit.all_assign_files_List[0].path);
                                },
                                child: Container(
                                  height: 250,
                                  child: Padding(
                                    padding: const EdgeInsets.all(25.0),
                                    child:Column(
                                      children: [
                                        //const Spacer(),

                                        cubit.all_assign_files_List.isNotEmpty?

                                        Container(
                                            decoration: BoxDecoration(
                                              border: Border.all(color:Colors.white, width: 1),
                                              borderRadius: BorderRadius.circular(12),
                                              color: Colors.blueGrey.withOpacity(.15),
                                            ),
                                            padding: const EdgeInsets.all(12),
                                            child:
                                            Column(
                                              children: [
                                                Container(
                                                  height: 50,
                                                  alignment: Alignment.center,
                                                  width: 70,
                                                  decoration: BoxDecoration(
                                                    color: Colors.blueGrey.withOpacity(.7),
                                                    borderRadius: BorderRadius.circular(12),
                                                  ),
                                                  child: Text(
                                                    '${cubit.all_assign_files_List[0].path.split('.').last}',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 25,
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  '${cubit.all_assign_files_List[0].path.split('.').last}',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                  ),
                                                  overflow: TextOverflow.ellipsis,
                                                  maxLines: 1,
                                                ),
                                              ],
                                            ))


                                            :Spacer(),
                                        SizedBox(height: 10,),
                                        Default_Button(
                                          onPressed: (){
                                            setState(() {
                                              // cubit.all_assign_files_List
                                            });
                                            if(cubit.all_assign_files_List.isEmpty){
                                              cubit.pick_assign_File();
                                              setState(() {});

                                            }
                                            else{
                                              setState(() {
                                                cubit.insuploadLecFile(fileName:cubit.all_assign_files_List[0].path.split('/').last ,);
                                                Navigator.pop(context);
                                                cubit.makeListNull();                                       });
                                              // print('sssss${cubit.all_assign_files_List[0].path.split('/').last}');

                                            }

                                          },

                                          text:cubit.all_assign_files_List.isEmpty? 'Upload File'
                                              :'Done'

                                          ,),
                                        const Spacer(),
                                      ],
                                    ),


                                    // Form(
                                    //   key: formKey,
                                    //   child:
                                    //   // Column(
                                    //   //   children: [
                                    //   //     const Spacer(),
                                    //   //     Container(
                                    //   //       alignment: Alignment.center,
                                    //   //       height: 70,
                                    //   //       decoration: BoxDecoration(
                                    //   //         // border: Border.all(color: Colors.white),
                                    //   //         borderRadius: BorderRadius.circular(18),
                                    //   //         color: Colors.white.withOpacity(.8),
                                    //   //       ),
                                    //   //       child: Padding(
                                    //   //         padding:
                                    //   //         const EdgeInsets.symmetric(horizontal: 8.0),
                                    //   //         child: TextFormField(
                                    //   //           controller: folderController,
                                    //   //           keyboardType: TextInputType.text,
                                    //   //           onFieldSubmitted: (value) {
                                    //   //             print(value);
                                    //   //           },
                                    //   //           validator: (value) {
                                    //   //             if (value!.isEmpty) {
                                    //   //               return 'Folder name can\'t be empty';
                                    //   //             }
                                    //   //             return null;
                                    //   //           },
                                    //   //           cursorColor: c1,
                                    //   //           style: const TextStyle(
                                    //   //             fontSize: 25,
                                    //   //           ),
                                    //   //           decoration: InputDecoration(
                                    //   //             prefixIcon: Padding(
                                    //   //               padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 6),
                                    //   //               child: FaIcon(
                                    //   //                 FontAwesomeIcons.solidFolder,
                                    //   //                 color: c1,
                                    //   //                 size: 30,
                                    //   //               ),
                                    //   //             ),
                                    //   //             hintText: 'Folder name',
                                    //   //             border: InputBorder.none,
                                    //   //           ),
                                    //   //         ),
                                    //   //       ),
                                    //   //     ),
                                    //   //     SizedBox(height: 15,),
                                    //   //     Default_Button(onPressed: (){
                                    //   //       if(formKey.currentState!.validate()){
                                    //   //
                                    //   //       }
                                    //   //     },text: 'Add Folder',),
                                    //   //     const Spacer(),
                                    //   //   ],
                                    //   // ),
                                    // ),
                                  ),
                                ),
                              ),
                              color:
                              Colors.blueGrey.withOpacity(.2),
                              borderRadius: 30,
                              x: 15,
                              y: 15,
                              BorderWidth: 3,
                              BorderColor: Colors.blueGrey,),
                          );});}
                  ).closed.then((value) {
                    cubit.ChangeVisibility(isShow: false, icon: FaIcon(FontAwesomeIcons.plus),);
                    cubit.makeListNull();
                  });
                  cubit.ChangeVisibility(isShow:true,icon:  FaIcon(FontAwesomeIcons.angleDown));

                }
                else
                {
                  Navigator.pop(context);
                  cubit.ChangeVisibility(isShow: false,icon: FaIcon(FontAwesomeIcons.plus));
                }

              },
              child:cubit.visiblity==false? FaIcon(FontAwesomeIcons.plus): FaIcon(FontAwesomeIcons.angleDown),

            ),
          ),

          // floatingActionButton: Builder(
          //
          //   builder: (context){
          //    return Padding(
          //     padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 8),
          //     child: FloatingActionButton(
          //       onPressed: () {
          //         cubit.makeListNull();
          //         if (cubit.visiblity == false) {
          //           // Show the bottom sheet
          //           Scaffold.of(context).showBottomSheet(
          //                 (context) {
          //               return StatefulBuilder(
          //                 builder: (BuildContext context, StateSetter setState) {
          //                   return Padding(
          //                     padding: const EdgeInsets.all(8.0),
          //                     child: GlassBoxWithBorder(
          //                       widget: InkWell(
          //                         onTap: () {
          //                           cubit.openFile_Fun(filePath: cubit.all_assign_files_List[0].path);
          //                         },
          //                         child: Container(
          //                           height: 250,
          //                           child: Padding(
          //                             padding: const EdgeInsets.all(25.0),
          //                             child: Column(
          //                               children: [
          //                                 cubit.all_assign_files_List.isNotEmpty
          //                                     ? Container(
          //                                     decoration: BoxDecoration(
          //                                       border: Border.all(color: Colors.white, width: 1),
          //                                       borderRadius: BorderRadius.circular(12),
          //                                       color: Colors.blueGrey.withOpacity(.15),
          //                                     ),
          //                                     padding: const EdgeInsets.all(12),
          //                                     child: Column(
          //                                       children: [
          //                                         Container(
          //                                           height: 50,
          //                                           alignment: Alignment.center,
          //                                           width: 70,
          //                                           decoration: BoxDecoration(
          //                                             color: Colors.blueGrey.withOpacity(.7),
          //                                             borderRadius: BorderRadius.circular(12),
          //                                           ),
          //                                           child: Text(
          //                                             '${cubit.all_assign_files_List[0].path.split('.').last}',
          //                                             style: TextStyle(
          //                                               color: Colors.white,
          //                                               fontSize: 25,
          //                                             ),
          //                                           ),
          //                                         ),
          //                                         const SizedBox(
          //                                           height: 5,
          //                                         ),
          //                                         Text(
          //                                           '${cubit.all_assign_files_List[0].path.split('.').last}',
          //                                           style: TextStyle(
          //                                             color: Colors.black,
          //                                             fontSize: 14,
          //                                           ),
          //                                           overflow: TextOverflow.ellipsis,
          //                                           maxLines: 1,
          //                                         ),
          //                                       ],
          //                                     ))
          //                                     : Spacer(),
          //                                 SizedBox(height: 10,),
          //                                 Default_Button(
          //                                   onPressed: () {
          //                                     setState(() {
          //                                       // cubit.all_assign_files_List
          //                                     });
          //                                     if (cubit.all_assign_files_List.isEmpty) {
          //                                       cubit.pick_assign_File();
          //                                       setState(() {});
          //                                     } else {
          //                                       setState(() {
          //                                         cubit.insuploadLecFile(fileName: cubit.all_assign_files_List[0].path.split('/').last,);
          //                                         Navigator.pop(context);
          //                                         cubit.makeListNull();
          //                                       });
          //                                     }
          //                                   },
          //                                   text: cubit.all_assign_files_List.isEmpty ? 'Upload File' : 'Done',
          //                                 ),
          //                                 Spacer(),
          //                               ],
          //                             ),
          //                           ),
          //                         ),
          //                       ),
          //                       color: Colors.blueGrey.withOpacity(.2),
          //                       borderRadius: 30,
          //                       x: 15,
          //                       y: 15,
          //                       BorderWidth: 3,
          //                       BorderColor: Colors.blueGrey,
          //                     ),
          //                   );
          //                 },
          //               );
          //             },
          //           ).closed.then((value) {
          //             cubit.ChangeVisibility(isShow: false, icon: FaIcon(FontAwesomeIcons.plus),);
          //             cubit.makeListNull();
          //           });
          //           cubit.ChangeVisibility(isShow: true, icon: FaIcon(FontAwesomeIcons.angleDown));
          //         } else {
          //           Navigator.pop(context);
          //           cubit.ChangeVisibility(isShow: false, icon: FaIcon(FontAwesomeIcons.plus));
          //         }
          //       },
          //       child: cubit.visiblity == false ? FaIcon(FontAwesomeIcons.plus) : FaIcon(FontAwesomeIcons.angleDown),
          //     ),
          //   );}
          // ),






          // Padding(
          //   padding: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 8),
          //   child: FloatingActionButton(
          //     onPressed: (){
          //       if(!isvisbile2)
          //       {
          //         isvisbile2=!isvisbile2;
          //
          //         scafoldkey2.currentState?.showBottomSheet(
          //               (context) => Padding(
          //             padding: const EdgeInsets.all(8.0),
          //             child: GlassBoxWithBorder(
          //                 widget: Container(
          //                   height: 250,
          //                   child: Padding(
          //                     padding: const EdgeInsets.all(25.0),
          //                     child: Column(
          //                       children: [
          //                         const Spacer(),
          //                         Default_Button(onPressed: (){},text: 'Upload File',),
          //                         const Spacer(),
          //                       ],
          //                     ),
          //                   ),
          //                 ),
          //                 color:
          //                 Colors.blueGrey.withOpacity(.2),
          //                 borderRadius: 30,
          //                 x: 15,
          //                 y: 15,
          //               BorderWidth: 3,
          //               BorderColor: Colors.blueGrey,
          //             ),
          //           ),
          //         );
          //
          //       }
          //       else
          //       {
          //
          //         Navigator.pop(context);
          //         isvisbile2=!isvisbile2;
          //       }
          //
          //     },
          //     child:!isvisbile2? FaIcon(FontAwesomeIcons.plus): FaIcon(FontAwesomeIcons.angleDown),
          //
          //   ),
          // ),
          body: SafeArea(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30,),
                defaultAppbar(context:context,text: cubit.currentCourseName),
                const SizedBox(height: 30,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: GlassBox(
                      widget: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.solidFolderOpen,
                              color: c1.withOpacity(.9),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 80,
                              child: Text(
                                maxLines: 1,
                                foldeName!,
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700,
                                  color: c1,
                                  overflow: TextOverflow.ellipsis
                                ),
                              ),
                            ),
                            const Spacer(),
                            FaIcon(
                              FontAwesomeIcons.angleRight,
                              color: c1.withOpacity(.9),
                            ),
                            const Spacer(),
                            FaIcon(
                              FontAwesomeIcons.book,
                              color: c1.withOpacity(.9),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Files',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: c1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      color: Colors.blueGrey.withOpacity(.15),
                      borderRadius: 15,
                      x: 0,
                      y: 0
                  ),
                ),
                // SizedBox(height: 8,),
                //
                // Text('The instructor comment....'),
                const SizedBox(height: 15,),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: GridView.builder(
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          childAspectRatio: .9,
                        ),
                        itemCount: insCourseFles.length,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index)
                        {
                          return InkWell(
                            onTap: (){
                            //  print(insCourseFles[index].filePath?.split('net/').last);
                              print(insCourseFles[index].filePath);
                              cubit.loadPDF(networkfile: insCourseFles[index].filePath
                              ?.split('net/').last);
                               print('path :${cubit.pathPDF}');
                              if(insCourseFles[index].filePath?.split('.').last=='pdf'){
                              navigateTo(context, fileVierwer(pdfUrl:cubit.pathPDF ,));}
                              // else{
                              //   cubit.openFile_Fun(filePath: cubit.pathPDF);
                              // }
                             // cubit.openFile_Fun(filePath:  insCourseFles[index].filePath);
                            },
                            child: STU_Build_Lec_View_Widget(
                              fileFormKey: fileFormKey,
                                fileController: fileController,
                                index: index,
                                context: context,
                              insFile: insCourseFles[index]
                            ),
                          );
                        }
                    ),
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
