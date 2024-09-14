import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:universityhup/core/functions/app_bar.dart';
import 'package:universityhup/core/functions/setup_service_locator.dart';
import 'package:universityhup/core/widgets/screen_path.dart';
import 'package:universityhup/core/widgets/tapbar_widget.dart';
import 'package:universityhup/features/student/material/domain/use_cases/material_usecase.dart';
import 'package:universityhup/features/student/material/presentation/manager/cubit/material_cubit.dart';
import 'package:universityhup/features/student/material/presentation/widgets/lec_builder.dart';

class MatrialScreen extends StatelessWidget {
  const MatrialScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=> MaterialCubit(materialUsecase: getIt<MaterialUsecase>())..fetchAllMaterials(),
      child: BlocConsumer<MaterialCubit,MaterialsState>(
        listener: (context, state) => {},
        builder: (context, state) {      
         MaterialCubit cubit=MaterialCubit.get(context);
          return DefaultTabController(
            length: 2, // Number of tabs
            initialIndex: cubit.tapBarIndex,
            child: Scaffold(
                body: SafeArea(
                  child: Column(
                    children: [
                      const SizedBox(height: 30,),
                      DefaultAppBar(
                          context:context),
                      const SizedBox(height: 30,),
                      const ScreenPath()    , 
                      const SizedBox(height: 15,),
                      TapbarWidget(onTap: (index) { 
                        cubit.changeTabBar(index: index);
                         }, tapIndex: cubit.tapBarIndex,),
                     const Expanded(child: LectureBuilder()),
        
                      // ConditionalBuilder(
                      //   condition: cubit.Tab_Bar_2_index == 0,
                      //   builder: (context) => Expanded(
                      //     child: Padding(
                      //       padding: const EdgeInsets.all(15.0),
                      //       child: ConditionalBuilder(
                      //         condition: lectures.isNotEmpty&&cubit.connnection ,
                      //         builder:(context)=>GridView.builder(
                      //           gridDelegate:
                      //           const SliverGridDelegateWithFixedCrossAxisCount(
                      //               crossAxisCount: 2, childAspectRatio: 2.5),
                      //           itemBuilder: (context, index) => InkWell(
                      //               onTap: () {
                      //                 cubit.StuGetCourseMaterialFiles(lecId: lectures[index].lectureId);
                      //                 cubit.isLec=true;
                      //                 navigateTo(context, STU_Show_Material_Lec_Or_Sec());
                      //               },
                      //               child: Matrial_STU_C(
                      //                 courseMaterial: lectures[index],
                      //                 index: index,
                      //                 context: context
                      //               )),
                      //           scrollDirection: Axis.vertical,
                      //           itemCount: lectures.length,
                      //         ),
      
                      //         fallback:(context)=>ConditionalBuilder(
                      //           condition: cubit.stuHIVElecModel.isNotEmpty ,
                      //           builder:(context)=>  GridView.builder(
                      //             gridDelegate:
                      //             const SliverGridDelegateWithFixedCrossAxisCount(
                      //                 crossAxisCount: 2, childAspectRatio: 2.5),
                      //             itemBuilder: (context, index) => InkWell(
                      //                 onTap: () {
                      //                   cubit.getCourseFilesFromHIVE(lecId: cubit.stuHIVElecModel[index].lectureId!);
                      //                   cubit.isLec=true;
                      //                   navigateTo(context, STU_Show_Material_Lec_Or_Sec());
                      //                 },
                      //                 child: Matrial_STU_C(
                      //                     courseMaterial: cubit.stuHIVElecModel[index],
                      //                     index: index,
                      //                     context: context
                      //                 )),
                      //             scrollDirection: Axis.vertical,
                      //             itemCount: cubit.stuHIVElecModel.length,
                      //           ),
      
                      //           fallback:(context)=>Center(child: CircularProgressIndicator())
                      //         ),
                      //       ),
      
                      //     ),
                      //   ),
                      //   fallback: (context) => ConditionalBuilder(
                      //       condition: labs.isNotEmpty&&state is !Stu_Get_Course_Material_LoadingState ,
                      //       builder:(context)=> Expanded(
                      //         child: Padding(
                      //           padding: const EdgeInsets.all(15.0),
                      //           child: GridView.builder(
                      //             gridDelegate:
                      //             const SliverGridDelegateWithFixedCrossAxisCount(
                      //                 crossAxisCount: 2, childAspectRatio: 2.5),
                      //             itemBuilder: (context, index) => InkWell(
                      //                 onTap: () {
                      //                   print('dddddd');
                      //                   cubit.StuGetCourseMaterialFiles(lecId: labs[index].lectureId);
      
                      //                   cubit.isLec=false;
                      //                   navigateTo(context, STU_Show_Material_Lec_Or_Sec());
                      //                 },
                      //                 child: Matrial_STU_C(
                      //                     courseMaterial: labs[index],
                      //                     index: index,
                      //                     context: context
                      //                 )),
                      //             scrollDirection: Axis.vertical,
                      //             itemCount: labs.length,
                      //           ),
                      //         ),
                      //       ),
                      //       fallback:(context)=>ConditionalBuilder(
                      //           condition: cubit.stuHIVElabModel.isNotEmpty&&state is !Stu_Get_lec_Folders_From_Hive_LoadingState ,
                      //           builder:(context)=>  Expanded(
                      //             child: Padding(
                      //               padding: const EdgeInsets.all(15.0),
                      //               child: GridView.builder(
                      //                 gridDelegate:
                      //                 const SliverGridDelegateWithFixedCrossAxisCount(
                      //                     crossAxisCount: 2, childAspectRatio: 2.5),
                      //                 itemBuilder: (context, index) => InkWell(
                      //                     onTap: () {
                      //                       cubit.getCourseFilesFromHIVE(lecId: cubit.stuHIVElabModel[index].lectureId!);
                      //                       cubit.isLec=true;
                      //                       navigateTo(context, STU_Show_Material_Lec_Or_Sec());
                      //                     },
                      //                     child: Matrial_STU_C(
                      //                         courseMaterial: cubit.stuHIVElabModel[index],
                      //                         index: index,
                      //                         context: context
                      //                     )),
                      //                 scrollDirection: Axis.vertical,
                      //                 itemCount: cubit.stuHIVElabModel.length,
                      //               ),
                      //             ),
                      //           ),
      
                      //           fallback:(context)=>Center(child: Padding(
                      //             padding: const EdgeInsets.all(30.0),
                      //             child: CircularProgressIndicator(color: Colors.blueGrey.withOpacity(.5),),
                      //           ))
                      //       ),
      
      
                      // ),
                      // )
                   
                   ],
                  ),
                )),
          );
        },
      ),
    );
  }
}