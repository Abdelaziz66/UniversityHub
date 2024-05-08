import 'dart:io';

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:university_hup/Models/STU_Model/CourseModel/materialAdabter/Stu_Course_MaterialModel.dart';
import 'package:university_hup/Shared/Component/component.dart';
import 'package:university_hup/Shared/Cons_widget.dart';
import 'package:university_hup/Shared/Cubit/App_cubit.dart';
import 'package:university_hup/Shared/Cubit/App_state.dart';
import 'package:university_hup/Shared/constant.dart';

import 'fileViewer.dart';

class STU_Show_Material_Lec_Or_Sec extends StatelessWidget {
  // final List<PlatformFile>files;
  // final ValueChanged<PlatformFile>onOpenedFile;
  // const Show_Material_Lec_Or_Sec({
  //   required this.files,
  //  required this.onOpenedFile
  // });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit, App_state>(
      listener: (context, state) {},
      builder: (context, state) {
        App_cubit cubit = App_cubit.get(context);
        //  List<GetCourseMaterialsModel>courseMaterial=cubit.stuCoursesMatrialModel;
        List<GetCourseMaterialFileModel> files =
            cubit.stuCoursesMatrialFileModel;
        // List<GetCourseMaterialsModel>labs=cubit.stuLABModel;
        return Scaffold(
          // appBar: AppBar(
          //   title: Text('Material Name'),
          //
          // ),
          body: SafeArea(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                defaultAppbar(text: cubit.currentCourseName, context: context),
                const SizedBox(
                  height: 30,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: GlassBox(
                      widget: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.solidUser,
                              color: c1.withOpacity(.9),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Instructor',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: c1,
                              ),
                            ),
                            const Spacer(),
                            FaIcon(
                              FontAwesomeIcons.angleRight,
                              color: c1.withOpacity(.9),
                            ),
                            const Spacer(),
                            FaIcon(
                              FontAwesomeIcons.solidFolder,
                              color: c1.withOpacity(.9),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Lecture 1',
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
                      y: 0),
                ),
                // SizedBox(height: 8,),
                //
                // Text('The instructor comment....'),
                const SizedBox(
                  height: 15,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: ConditionalBuilder(
                      condition:
                      files.isNotEmpty &&
                          state is! Stu_Get_Course_Material_File_LoadingState,
                      builder: (context) => GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            childAspectRatio: .9,
                          ),
                          itemCount: files.length,
                          physics: const BouncingScrollPhysics(),
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                print(files[index].filePath?.split('net/').last);
                                print(files[index].filePath);
                                cubit.openFile_Fun(networkFile: files[index].filePath
                                    ?.split('net/').last);
                                print('from material ${cubit.pathPDF}');


                               // App_cubit.openURL('${files[index].filePath}');
                              //  navigateTo(context, fileVierwer(pdfUrl:cubit.pathPDF ,));
                                //cubit.openFile_Fun(filePath:files[index].filePath);
                              },
                              child: STU_Build_Lec_View_Widget(
                                  index: index,
                                  context: context,
                                  file: files[index], //cubit.isLec!?lectures[index]:labs[index]


                                  ),
                            );
                          }),
                      fallback: (context) =>  ConditionalBuilder(
                          condition:
                          cubit.MaterialLecFiles.isNotEmpty ,
                          builder: (context) => GridView.builder(
                              gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 10,
                                crossAxisSpacing: 10,
                                childAspectRatio: .9,
                              ),
                              itemCount:  cubit.MaterialLecFiles.length,
                              physics: const BouncingScrollPhysics(),
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {
                                      print(files[index].filePath?.split('net/').last);
                                      print(files[index].filePath);
                                      cubit.openFile_Fun(networkFile: cubit.MaterialLecFiles[index].filePath
                                          ?.split('net/').last);                                      print('from material ${cubit.pathPDF}');

                                    // App_cubit.openURL('${files[index].filePath}');
                                    //  navigateTo(context, fileVierwer(pdfUrl:cubit.pathPDF ,));
                                    //cubit.openFile_Fun(filePath:files[index].filePath);
                                  },
                                  child: STU_Build_Lec_View_Widget(
                                    index: index,
                                    context: context,
                                    file: cubit.MaterialLecFiles[index], //cubit.isLec!?lectures[index]:labs[index]


                                  ),
                                );
                              }),
                          fallback: (context) =>Center(child: CircularProgressIndicator(),)
                      )
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
