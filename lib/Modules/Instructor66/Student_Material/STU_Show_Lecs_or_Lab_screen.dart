
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:university_hup/Shared/Component/component.dart';
import 'package:university_hup/Shared/Cons_widget.dart';
import 'package:university_hup/Shared/Cubit/App_cubit.dart';
import 'package:university_hup/Shared/Cubit/App_state.dart';
import 'package:university_hup/Shared/constant.dart';

import '../../../Models/STU_Model/CourseModel/Stu_All_Courses_Model.dart';
import '../../../Models/STU_Model/CourseModel/Stu_Course_MaterialModel.dart';




class INS_Show_Material_Lec_Or_Sec extends StatelessWidget {
  // final List<PlatformFile>files;
  // final ValueChanged<PlatformFile>onOpenedFile;
  // const Show_Material_Lec_Or_Sec({
  //   required this.files,
  //  required this.onOpenedFile
  // });

  var scafoldkey2 = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit,App_state>(
      listener: (context,state){},
      builder: (context,state){
        App_cubit cubit=App_cubit.get(context);
        List<GetCourseMaterialsModel>courseMaterial=cubit.stuCoursesMatrialModel;
        bool isvisbile2=false;
        return Scaffold(
          key: scafoldkey2,
          // appBar: AppBar(
          //   title: Text('Material Name'),
          //
          // ),
          floatingActionButton: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 8),
            child: FloatingActionButton(
              onPressed: (){
                if(!isvisbile2)
                {
                  isvisbile2=!isvisbile2;

                  scafoldkey2.currentState?.showBottomSheet(
                        (context) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GlassBoxWithBorder(
                          widget: Container(
                            height: 250,
                            child: Padding(
                              padding: const EdgeInsets.all(25.0),
                              child: Column(
                                children: [
                                  const Spacer(),
                                  Default_Button(onPressed: (){},text: 'Upload File',),
                                  const Spacer(),
                                ],
                              ),
                            ),
                          ),
                          color:
                          Colors.blueGrey.withOpacity(.2),
                          borderRadius: 30,
                          x: 15,
                          y: 15,
                        BorderWidth: 3,
                        BorderColor: Colors.blueGrey,
                      ),
                    ),
                  );

                }
                else
                {

                  Navigator.pop(context);
                  isvisbile2=!isvisbile2;
                }

              },
              child:!isvisbile2? FaIcon(FontAwesomeIcons.plus): FaIcon(FontAwesomeIcons.angleDown),

            ),
          ),
          body: SafeArea(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30,),
                defaultAppbar(context:context),
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
                            Text(
                              'Lecture 1',
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
                              FontAwesomeIcons.book,
                              color: c1.withOpacity(.9),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Items',
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
                          childAspectRatio: 1.1,
                        ),
                        itemCount: courseMaterial.length,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index)
                        {
                          return STU_Build_Lec_View_Widget(
                              index: index,
                              context: context,
                            courseMaterial: courseMaterial[index]
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
