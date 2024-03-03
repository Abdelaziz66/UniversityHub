import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:university_hup/Models/STU_Model/CourseModel/Stu_Course_MaterialModel.dart';
import 'package:university_hup/Modules/Instructor/Instructor_Material/INS_Show_Lecs_or_Lab_screen.dart';

import 'package:university_hup/Modules/Student/Student_Material/STU_Show_Lecs_or_Lab_screen.dart';
import 'package:university_hup/Shared/Component/component.dart';
import 'package:university_hup/Shared/Cons_widget.dart';
import 'package:university_hup/Shared/Cubit/App_cubit.dart';
import 'package:university_hup/Shared/Cubit/App_state.dart';
import 'package:university_hup/Shared/constant.dart';







class INS_Matrial_Screen extends StatelessWidget {
   INS_Matrial_Screen({super.key});
  var scafoldkey1 = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit, App_state>(
      listener: (context, state) => {},
      builder: (context, state) {
        App_cubit cubit = App_cubit.get(context);
        List<GetCourseMaterialsModel>courseMaterial=cubit.stuCoursesMatrialModel;
        bool isvisbile=false;
        return Scaffold(
          key: scafoldkey1,
          floatingActionButton: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 8),
            child: FloatingActionButton(
              onPressed: (){
                if(!isvisbile)
                  {
                    isvisbile=!isvisbile;

                    scafoldkey1.currentState?.showBottomSheet(
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
                                    Container(
                                      alignment: Alignment.center,
                                      height: 70,
                                      decoration: BoxDecoration(
                                        // border: Border.all(color: Colors.white),
                                        borderRadius: BorderRadius.circular(18),
                                        color: Colors.white.withOpacity(.8),
                                      ),
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.symmetric(horizontal: 8.0),
                                        child: TextFormField(
                                          // controller: emailcontroller,
                                          keyboardType: TextInputType.text,
                                          onFieldSubmitted: (value) {
                                            print(value);
                                          },
                                          onChanged: (value) {
                                            print(value);
                                          },
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return 'Folder name can\'t be empty';
                                            }
                                            return null;
                                          },
                                          // toolbarOptions:
                                          //     ToolbarOptions(paste: true, copy: true),
                                          cursorColor: c1,
                                          style: const TextStyle(
                                            fontSize: 25,
                                          ),
                                          decoration: InputDecoration(
                                            prefixIcon: Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 6),
                                              child: FaIcon(
                                                FontAwesomeIcons.solidFolder,
                                                color: c1,
                                                size: 30,
                                              ),
                                            ),
                                            hintText: 'Folder name',
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 15,),
                                    Default_Button(onPressed: (){},text: 'Add Folder',),
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
                          BorderColor: Colors.blueGrey,),
                      ),
                    );

                  }
                else
                  {

                    Navigator.pop(context);
                    isvisbile=!isvisbile;
                  }

              },
              child:!isvisbile? FaIcon(FontAwesomeIcons.plus): FaIcon(FontAwesomeIcons.angleDown),

            ),
          ),
            // appBar: AppBar(
            //   title: Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         SizedBox(
            //           height: 10,
            //         ),
            //         Text(
            //           'Material name',
            //           style:
            //               TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            //         ),
            //         // Text('instructor name',
            //         //   style: TextStyle(
            //         //     color: Colors.grey[600],
            //         //       fontWeight: FontWeight.w400,
            //         //       fontSize: 15
            //         //   ),
            //         // ),
            //       ],
            //     ),
            //   ),
            //   actions: [
            //     Padding(
            //       padding: const EdgeInsets.all(12.0),
            //       child: Image(
            //         image: NetworkImage(
            //             'https://s3-alpha-sig.figma.com/img/07b3/a7c9/c2125e7477b092a6b41eee3cbb5627cd?Expires=1708300800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=LSFzhb5MX20bm5v9pG3n1Lqu5K91VfFaQWA08MV3tZIr-uKjGcByqUBbmljKxlpoEMBhMNd0BPeNgR4EYO~5vCLiHPHXmElMRDj6uXz86SLBMiP~g9p53YydDzfpLmcGZqaN9-ji1169FinyPbjn1Z2h3EBaLuV-Yvxw-eC9KsLuPIloT73yerWbs7kKpOrkjKlLfqZiuZVNgA~7w6QuAYyFEs6T8Ng6LkhhVNUucnBwrquNsuxqNmuQUvvk-6N~7uBKQUw-slravD9XxeGtLp0gJINLfsiC1ZCrGNhl8YZoUdwqPuSPfJdHt~kZhsZpWbdtivJRMcjyF5ZwSQKm-Q__'),
            //         fit: BoxFit.cover,
            //         height: 50,
            //         width: 50,
            //       ),
            //     ),
            //   ],
            // ),
            body: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              defaultAppbar(context: context,
              ),
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
                            FontAwesomeIcons.folderOpen,
                            color: c1.withOpacity(.9),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Material',
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
                            'Lecture',
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

              // Padding(
              //   padding: const EdgeInsets.all(15.0),
              //   child: Container(
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(15),
              //       color: Colors.blue,
              //       boxShadow: [BoxShadow(color: Colors.grey,
              //         spreadRadius: 2,
              //         blurRadius: 10,
              //
              //       )],),
              //     child: Padding(
              //       padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 15),
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //
              //
              //           FaIcon(
              //             FontAwesomeIcons.folderOpen,
              //             color: Colors.white,
              //           ),
              //           const SizedBox(
              //             width: 10,
              //           ),
              //           Text(
              //             'Material',
              //             style: TextStyle(
              //               fontSize: 17,
              //               fontWeight: FontWeight.w700,
              //               color: Colors.white,
              //             ),
              //           ),
              //           Spacer(),
              //           FaIcon(
              //             FontAwesomeIcons.angleRight,
              //             color: Colors.white,
              //           ),
              //           Spacer(),
              //           FaIcon(
              //             FontAwesomeIcons.solidUser,
              //             color: Colors.white,
              //           ),
              //           const SizedBox(
              //             width: 10,
              //           ),
              //           Text(
              //             'Instructor',
              //             style: TextStyle(
              //               fontSize: 17,
              //               fontWeight: FontWeight.w700,
              //               color: Colors.white,
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),

              ConditionalBuilder(
                condition: cubit.DE,
                builder: (context) => Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2, childAspectRatio: 2.5),
                      itemBuilder: (context, index) => InkWell(
                          onTap: () {
                            navigateTo(context,rol=='Student'? STU_Show_Material_Lec_Or_Sec():INS_Show_Material_Lec_Or_Sec());
                          },
                          child: Matrial_C(
                          courseMaterial:courseMaterial[index] ,
                            index: index,
                          )),
                      scrollDirection: Axis.vertical,
                      itemCount: courseMaterial.length,
                    ),
                  ),
                ),
                fallback: (context) => Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2, childAspectRatio: 2.5),
                      itemBuilder: (context, index) => InkWell(
                          onTap: () {
                            navigateTo(context, STU_Show_Material_Lec_Or_Sec());
                          },
                          child: Matrial_C(
                              courseMaterial:courseMaterial[index] ,
                              index: index
                          )),
                      scrollDirection: Axis.vertical,
                      itemCount: courseMaterial.length,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
      },
    );
  }
}
