import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:university_hup/Modules/LandScape/ResetPasswoed/ForgetPasswordScreen.dart';
import 'package:university_hup/Modules/Student/Student_Notification/Drawer/Edit_Profile_Screen.dart';
import 'package:university_hup/Shared/Component/component.dart';
import 'package:university_hup/Shared/Cons_widget.dart';
import 'package:university_hup/Shared/Cubit/App_cubit.dart';
import 'package:university_hup/Shared/Cubit/App_state.dart';
import 'package:university_hup/Shared/constant.dart';
import 'package:university_hup/Shared/remote/DioHelper.dart';

class Profile_screen extends StatelessWidget {
  const Profile_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit, App_state>(
      listener: (context, state) => {},
      builder: (context, state) {
        App_cubit cubit = App_cubit.get(context);
        return ConditionalBuilder(
          condition:cubit.studentInfoModel!=null,
          builder: (context) => Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    Stack(
                      alignment: AlignmentDirectional.bottomCenter,
                      children: [
                        GestureDetector(
                          onTap: ()=>
                              showDialog<String>(
                                context: context,
                                barrierColor: Colors.black.withOpacity(.3),
                                useSafeArea: true,


                                builder: (BuildContext context) => AlertDialog(

                                  insetPadding: const EdgeInsets.all(0.0),
                                  scrollable: false,
                                  shadowColor: Colors.transparent,


                                  // title: const Text('AlertDialog Title'),
                                  content:  Center(
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      child:    GestureDetector(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: GlassBox(
                                            widget: Stack(
                                              children: [
                                                Column(
                                                  children: [
                                                    const Spacer(),
                                                    Container(
                                                      alignment: Alignment.center,
                                                      decoration: const BoxDecoration(
                                                        shape: BoxShape.circle,

                                                      ),
                                                      child:  Padding(
                                                        padding: EdgeInsets.all(10.0),
                                                        child: CircleAvatar(
                                                        
                                                          radius: 120,
                                                          backgroundColor: Colors.white,
                                                          backgroundImage:
                                                          NetworkImage('${cubit.studentInfoModel?.imagePath}'
                                                            //'assets/images/profile.png'
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    const Spacer(flex: 1,),
                                                  ],
                                                ),

                                              ],
                                            ),
                                            color:
                                            Colors.transparent,
                                            borderRadius: 0,
                                            x: 5,
                                            y: 5),
                                      ),),
                                  ),
                                  elevation: 0,
                                  clipBehavior: Clip.none,
                                  surfaceTintColor: Colors.transparent,
                                  backgroundColor: Colors.transparent,
                                  contentPadding: EdgeInsets.zero,





                                ),


                              ),
                          child: Container(
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                // boxShadow: [
                                //   BoxShadow(
                                //     color: Colors.white,
                                //     blurRadius: 0,
                                //     spreadRadius: 1,
                                //   ),
                                // ]
                            ),
                            child:  Padding(
                              padding: EdgeInsets.all(10.0),
                              child: CircleAvatar(
                                radius: 48,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(

                                  radius: 45,
                                  backgroundColor: Colors.white,
                                  backgroundImage:
                                      NetworkImage('${cubit.studentInfoModel?.imagePath}'
                                          //'assets/images/profile.png'
                                        ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        // FaIcon(
                        //   Icons.camera_alt_outlined,
                        //   color: Colors.blueGrey.withOpacity(.6),size: 28,
                        // ),
                      ],
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '${cubit.studentInfoModel?.departmentName}',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 20,
                                  color: c1,
                                ),
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              Text(
                                'Depart',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 16,
                                  color: c1.withOpacity(.8),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '${cubit.studentInfoModel?.level}',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 20,
                                  color: c1,
                                ),
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              Text(
                                'Level',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 16,
                                  color: c1.withOpacity(.8),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '2',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 20,
                                  color: c1,
                                ),
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              Text(
                                'Semester',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 16,
                                  color: c1.withOpacity(.8),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Container(
                          width: 300,
                          child: Text(
                            '${cubit.studentInfoModel?.fullName}',
                            maxLines: 1,
                            style: TextStyle(

                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w900,
                              fontSize: 16,
                              color: c1,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 15.0),
                      //   child: Text(
                      //     '2031035',
                      //     style: TextStyle(
                      //       fontWeight: FontWeight.w900,
                      //       fontSize: 16,
                      //       color:c1,
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: (){
                          navigateTo(context, Edit_Profile_screen());
                        },

                        child: GlassBox(
                            widget: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  'Edit account',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: c1,
                                  ),
                                ),
                              ),
                            ),
                            color: Colors.blueGrey.withOpacity(.15),
                            borderRadius: 10,

                            x: 30,
                            y: 30),
                      ),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Expanded(
                      child: GlassBox(
                          widget: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: InkWell(
                              onTap: () =>
                                  showDialog<String>(
                                context: context,
                                barrierColor: Colors.black.withOpacity(.3),
                                useSafeArea: true,


                                builder: (BuildContext context) => AlertDialog(

                                  insetPadding: const EdgeInsets.all(0.0),
                                  scrollable: false,
                                  shadowColor: Colors.transparent,


                                  // title: const Text('AlertDialog Title'),
                                  content:  Center(
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      child:    GestureDetector(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: GlassBox(
                                            widget: Stack(
                                              children: [
                                                Column(
                                                  children: [
                                                    const Spacer(),
                                                    Padding(
                                                      padding:
                                                      const EdgeInsets.all(
                                                          15.0),
                                                      child:
                                                      GlassBoxWithBorder_Gradiant(
                                                        widget: Padding(
                                                          padding:
                                                          const EdgeInsets
                                                              .all(15.0),
                                                          child: Column(
                                                            children: [
                                                              Text(
                                                                '${cubit.studentInfoModel?.facultyName} - ${cubit.studentInfoModel?.universityName}',
                                                                style:
                                                                TextStyle(
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .w900,
                                                                  fontSize:
                                                                  15,
                                                                  color: c1,
                                                                ),
                                                              ),
                                                              const SizedBox(
                                                                height: 10,
                                                              ),
                                                              Row(
                                                                crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                                children: [
                                                                  Container(
                                                                    decoration: const BoxDecoration(
                                                                        shape:
                                                                        BoxShape.circle,
                                                                        boxShadow: [
                                                                          BoxShadow(
                                                                            color: Colors.black,
                                                                            blurRadius: 0,
                                                                            spreadRadius: 1,
                                                                          ),
                                                                        ]),
                                                                    child:
                                                                    const CircleAvatar(
                                                                      radius:
                                                                      50,
                                                                      backgroundImage:
                                                                      AssetImage(
                                                                        'assets/images/profile.png',
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const SizedBox(
                                                                    width: 15,
                                                                  ),
                                                                  Column(
                                                                    crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                    children: [
                                                                      Row(
                                                                        children: [
                                                                          const Text(
                                                                            'Name : ',
                                                                            style: TextStyle(
                                                                              fontWeight: FontWeight.w900,
                                                                              fontSize: 14,
                                                                              color: Colors.teal,
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            '${cubit.studentInfoModel?.fullName}',
                                                                            style: TextStyle(
                                                                              overflow: TextOverflow.ellipsis,
                                                                              fontWeight: FontWeight.w500,
                                                                              fontSize: 14,
                                                                              color: c1,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                       SizedBox(height: 4,),
                                                                      Row(
                                                                        children: [
                                                                          const Text(
                                                                            'Academic ID : ',
                                                                            style: TextStyle(
                                                                              fontWeight: FontWeight.w900,
                                                                              fontSize: 14,
                                                                              color: Colors.teal,
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            '${cubit.studentInfoModel?.academicId}',
                                                                            style: TextStyle(
                                                                              fontWeight: FontWeight.w500,
                                                                              fontSize: 14,
                                                                              color: c1,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),

                                                                      const SizedBox(
                                                                        height:
                                                                        4,
                                                                      ),
                                                                      Row(
                                                                        children: [
                                                                          const Text(
                                                                            'Level : ',
                                                                            style: TextStyle(
                                                                              fontWeight: FontWeight.w900,
                                                                              fontSize: 14,
                                                                              color: Colors.teal,
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            '${cubit.studentInfoModel?.level} - ${cubit.studentInfoModel?.departmentName}',
                                                                            style: TextStyle(
                                                                              fontWeight: FontWeight.w500,
                                                                              fontSize: 14,
                                                                              color: c1,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      const SizedBox(
                                                                        height:
                                                                        4,
                                                                      ),
                                                                      Row(
                                                                        children: [
                                                                          const Text(
                                                                            'Email : ',
                                                                            style: TextStyle(
                                                                              fontWeight: FontWeight.w900,
                                                                              fontSize: 14,
                                                                              color: Colors.teal,
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            // padding: EdgeInsets.only(right: 5),
                                                                            // width:double.infinity,
                                                                            width: 150,
                                                                            child: Text(
                                                                              '${cubit.studentInfoModel?.email}',
                                                                              maxLines: 2,
                                                                              style: TextStyle(
                                                                                overflow:TextOverflow.ellipsis,
                                                                                fontWeight: FontWeight.w500,
                                                                                fontSize: 9,
                                                                                color: c1,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),

                                                                      const SizedBox(
                                                                        height:
                                                                        4,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        color: Colors.white
                                                            .withOpacity(.5),
                                                        borderRadius: 20,
                                                        x: 18,
                                                        y: 18,
                                                        BorderWidth: 3,
                                                        BorderColor:
                                                        Colors.white,
                                                      ),
                                                    ),
                                                    const Spacer(flex: 1,),
                                                  ],
                                                ),

                                              ],
                                            ),
                                            color:
                                            Colors.transparent,
                                            borderRadius: 0,
                                            x: 5,
                                            y: 5),
                                      ),),
                                  ),
                                  elevation: 0,
                                  clipBehavior: Clip.none,
                                  surfaceTintColor: Colors.transparent,
                                  backgroundColor: Colors.transparent,
                                  contentPadding: EdgeInsets.zero,





                                ),


                              ),

                              child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  'Show your card',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: c1,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          color: Colors.blueGrey.withOpacity(.15),
                          borderRadius: 10,

                          x: 30,
                          y: 30),
                    ),


                  ],
                ),
              ),
              ConditionalBuilder(
                  condition: true,
                  builder: (context) => Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15.0),
                            child: GlassBox(
                                widget: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.info_outline,
                                        color: Colors.orange,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Verify your account',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                          color: c1,
                                        ),
                                      ),
                                      const Spacer(),
                                      TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            'Send',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16,
                                              color: Colors.teal[300],
                                            ),
                                          )),
                                      IconButton(
                                          onPressed: () {
                                            // cubit.verfiy_Function();
                                            // print(FirebaseAuth.instance
                                            //     .currentUser?.emailVerified);
                                          },
                                          icon: Icon(
                                            Icons.restart_alt,
                                            color: c1,
                                          )),
                                    ],
                                  ),
                                ),
                                color: Colors.blueGrey.withOpacity(.1),
                                borderRadius: 12,
                                x: 40,
                                y: 40),
                          ),
                        ],
                      ),
                  fallback: (context) => const SizedBox(
                        height: 0,
                      )),
              SizedBox(height: 15,),

              // Padding(
              //   padding: const EdgeInsets.symmetric(
              //     horizontal: 30.0,
              //   ),
              //   child: GestureDetector(
              //     onTap: (){
              //       Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //             builder: (context) =>
              //                 ForgetPasswordScreen(),
              //           ));
              //     },
              //     child: Container(
              //       decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(20),
              //           color: Colors.transparent,
              //           border: Border.all(color: Colors.black, width: 0)),
              //       alignment: AlignmentDirectional.topStart,
              //       child: Padding(
              //         padding: const EdgeInsets.all(15.0),
              //         child: Row(
              //           children: [
              //
              //             const FaIcon(
              //               FontAwesomeIcons.key,
              //               size: 25,
              //               color: Colors.black,
              //             ),
              //             const SizedBox(
              //               width: 20,
              //             ),
              //             Text(
              //               'Change Password',
              //               style: TextStyle(
              //                 fontSize: 16,
              //                 fontWeight: FontWeight.w700,
              //                 color: c1,
              //               ),
              //             ),
              //             const Spacer(),
              //             const FaIcon(
              //               FontAwesomeIcons.circleChevronRight,
              //               size: 25,
              //               color: Colors.black,
              //             ),
              //
              //           ],
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
          fallback: (context) => const Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}
