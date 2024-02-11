import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:university_hup/Shared/constant.dart';

import '../../../../../Shared/Component/component.dart';
import '../../../../../Shared/Cubit/App_cubit.dart';
import '../../../../../Shared/Cubit/App_state.dart';



class STU_Show_Material_Lec_Or_Sec extends StatelessWidget {
  // final List<PlatformFile>files;
  // final ValueChanged<PlatformFile>onOpenedFile;
  // const Show_Material_Lec_Or_Sec({
  //   required this.files,
  //  required this.onOpenedFile
  // });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit,App_state>(
      listener: (context,state){},
      builder: (context,state){
        return Scaffold(
          // appBar: AppBar(
          //   title: Text('Material Name'),
          //
          // ),
          body: SafeArea(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30,),
                Stack(
                  alignment: FractionalOffset.center,

                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: GestureDetector(
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child: FaIcon(FontAwesomeIcons.angleLeft,size: 30)),
                        ),

                      ],
                    ),
                    Center(
                      child: Text(
                        'Parallel Programming ',textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w700, color: c1, fontSize: 20
                        ),
                      ),
                    ),

                    // Padding(
                    //   padding: const EdgeInsets.only(right: 30.0),
                    //   child: Container(
                    //
                    //     height: 30,
                    //     width:30,
                    //     decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(10),
                    //       image: DecorationImage(
                    //
                    //           image: AssetImage(
                    //             'assets/images/book_.png',
                    //
                    //           ),
                    //           fit: BoxFit.cover
                    //       ),
                    //       color: Colors.transparent,
                    //     ),
                    //   ),
                    // ),

                  ],
                ),
                SizedBox(height: 30,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: GlassBox(
                      widget: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 15),
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
                            Spacer(),
                            FaIcon(
                              FontAwesomeIcons.angleRight,
                              color: c1.withOpacity(.9),
                            ),
                            Spacer(),
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
                      y: 0
                  ),
                ),
                // SizedBox(height: 8,),
                //
                // Text('The instructor comment....'),
                SizedBox(height: 15,),
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
                        itemCount: 5,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, index)
                        {
                          return STU_Build_Lec_View_Widget(index,context);
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
