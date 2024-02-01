import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../Shared/Component/component.dart';
import '../../../Shared/Cons_widget.dart';
import '../../../Shared/Cubit/App_cubit.dart';
import '../../../Shared/Cubit/App_state.dart';
import 'Add_Instructor_MaterialScreen.dart';

class All_Lectures extends StatelessWidget {
  var ScaffoldKey = GlobalKey<ScaffoldState>();
  var formKey = GlobalKey<FormState>();
  // bool isBottomSheetShown=false;
  // IconData fabIcon = Icons.edit;
  var commentControler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit, App_state>(
      listener: (context, state) {},
      builder: (context, state) {
        App_cubit cubit = App_cubit.get(context);
        return Scaffold(
          backgroundColor: Colors.white,
          key: ScaffoldKey,
          appBar: AppBar(),
          body: Container(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 7,
                crossAxisSpacing: 7,
              ),
              itemCount: 4,
              itemBuilder: (context, index) => BuildCoursesWidget(context),
            ),
          )),

          floatingActionButton: FloatingActionButton(
            onPressed: () {
             cubit.all_files_List=[];
             navigateTo(context, AddMaterialScreen());

          //     /* try{
          // var name= await getname() ;
          // print(name);
          // throw('error !!!!!!');
          // }catch(error){
          //   print('error is ${error.toString()}');
          // }*/
          //     /*getname().then((value) {
          //   print(value);
          //   print('osama');
          //   throw('error !!!!!!');
          // }).catchError((error){print('${error}');});*/
          //     // insertToDatabase();
          //     if (cubit.isBottomSheetShown) {
          //       //if(formKey.currentState!.validate()){
          //       Navigator.pop(context);
          //       cubit.ChangeBottomSheetState(isShow: false, icon: Icons.add);
          //
          //       // isBottomSheetShown=false;
          //       //   fabIcon=Icons.edit;
          //       //}
          //     } else {
          //       ScaffoldKey.currentState
          //           ?.showBottomSheet(
          //             (context) => Container(
          //               padding: EdgeInsetsDirectional.only(top: 8,bottom: 10,start: 8,end: 8),
          //               height: 140,
          //               color: Colors.white,
          //               child: Form(
          //                 key: formKey,
          //                 child: Column(
          //                   mainAxisSize: MainAxisSize.min,
          //                   children: [
          //                     Row(children: [
          //                       Expanded(child:
          //                       Container(
          //                         decoration: BoxDecoration(
          //                           borderRadius: BorderRadius.circular(5),
          //                           color: Colors.grey,
          //
          //                         ),
          //                         child: IconButton(
          //                           icon: Icon(Icons.add_a_photo),
          //                           onPressed: (){},
          //                         ),
          //                       ) ),
          //                       SizedBox(width: 10,),
          //                       Expanded(child:
          //                       Container(
          //                         decoration: BoxDecoration(
          //                           borderRadius: BorderRadius.circular(5),
          //                           color: Colors.grey,
          //
          //                         ),                                  child: IconButton(
          //                           icon: Icon(Icons.file_present_rounded),
          //                           onPressed: ()async{
          //                             cubit.pickFile();
          //                             // FilePickerResult? result = await FilePicker.platform.pickFiles();
          //                             //
          //                             // if (result != null) {
          //                             //   File file = File(result.files.single.path!);
          //                             // } else {
          //                             //   // User canceled the picker
          //                             // }
          //                             //cubit.pickFile();
          //                           },
          //                         ),
          //                       ) ),
          //                     ],),
          //                     cubit.showingFile==null?
          //                     Expanded(
          //                       child:Container(
          //                      // height: double.infinity,
          //                       //width: double.infinity,
          //                       child: Card(
          //
          //                         clipBehavior:Clip.antiAliasWithSaveLayer,
          //                         elevation: 10,
          //                         child: Text('Sdsdfssa')
          //                         // Image.memory(cubit.showingFile!,
          //                         //   fit: BoxFit.cover,
          //                         // ),
          //                       ),
          //                     ),
          //                     )
          //                         :SizedBox(),
          //                     Spacer(),
          //                     TextFormField(
          //                       controller: commentControler,
          //                       keyboardType: TextInputType.text,
          //                       decoration: InputDecoration(
          //                         labelText: 'comment',
          //                         prefixIcon: Icon(Icons.title),
          //                         border: OutlineInputBorder(),
          //                       ),
          //                       onTap: () {
          //                         print('timing tapped');
          //                       },
          //                     ),
          //                   ],
          //                 ),
          //               ),
          //             ),
          //             elevation: 20,
          //           )
          //           .closed
          //           .then((value) {
          //         cubit.ChangeBottomSheetState(isShow: false, icon: Icons.add);
          //
          //         // isBottomSheetShown=false;
          //         //   fabIcon=Icons.edit;
          //       });
          //       cubit.ChangeBottomSheetState(isShow: true, icon: Icons.check);
          //       // isBottomSheetShown=true;
          //       // fabIcon=Icons.add;
          //     }


             },
            child: Icon(cubit.fabIcon),
          ),

          // floatingActionButton: FloatingActionButton(
          //   onPressed:(){
          //
          //   } ,
          //   child: Icon(Icons.add),
          //
          // ),
        );
      },
    );
  }
}

// Column(
//   children: [
//     Row(children: [
//       Expanded(
//     child: Container(
//       decoration: BoxDecoration(
//           color:Colors.grey,
//           borderRadius: BorderRadius.circular(10)
//       ),
//         height: 150,
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             children: [
//               Expanded(child: Text('Lec1')),
//               Expanded(child: Text('Cyber Security',
//               style: TextStyle(fontSize: 20),
//               )),
//               //Spacer(),
//               Container(
//                   child: Text('added at 12/11/2023')),
//             ],
//           ),
//         ),
//       )
//       ),
//       SizedBox(width: 10,),
//       Expanded(
//           child: Container(
//             decoration: BoxDecoration(
//                 color:Colors.grey,
//                 borderRadius: BorderRadius.circular(10)
//             ),
//             height: 150,
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Column(
//                 children: [
//                   Expanded(child: Text('Lec1')),
//                   Expanded(child: Text('Cyber Security',
//                     style: TextStyle(fontSize: 20),
//                   )),
//                   //Spacer(),
//                   Container(
//                       child: Text('added at 12/11/2023')),
//                 ],
//               ),
//             ),
//           )),
//     ],),
//   ],
// ),
