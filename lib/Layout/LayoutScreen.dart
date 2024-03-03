import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:university_hup/Modules/Student/Student_Grade/STU_Grades_Screen.dart';
import 'package:university_hup/Modules/Student/Student_Notification/Drawer/Edit_Profile_Screen.dart';
import 'package:university_hup/Modules/Student/Student_Notification/Notification_Screen.dart';


import 'package:university_hup/Shared/Component/component.dart';
import '../Shared/Cubit/App_cubit.dart';
import '../Shared/Cubit/App_state.dart';

import '../Shared/constant.dart';

class Layout_Screen extends StatelessWidget {
  Layout_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit, App_state>(
      listener: (context, state) => {},
      builder: (context, state) {
        App_cubit cubit = App_cubit.get(context);
        return Scaffold(
          key: scafoldkey,

          drawer: Drawer(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.black,
            elevation: 0,

            child: GlassBox(
                widget: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          const SizedBox(height: 50,),
                          const CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 80,
                            child: CircleAvatar(
                              radius: 75.0,
                              backgroundColor: Colors.blue,
                              backgroundImage: AssetImage(
                                'assets/images/profile.png',
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            rol=='Student'?'${cubit.stu_login_Model?.displayName}':'Hi, Dr Ahmed',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style:  TextStyle(
                              fontSize : 20,
                              fontWeight : FontWeight.w700,
                              color :c1.withOpacity(.8),
                            ),
                          ),


                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        height: 3,
                        color: Colors.blue.withOpacity(.2),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0,),
                        child: GestureDetector(
                          onTap: (){
                            cubit.D_value = 0;
                            cubit.Nav_Bar_Function(index: 0);
                            Navigator.pop(context);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color:cubit.D_value==0||cubit.Nav_Bar_index==0? Colors.blue.withOpacity(.8):Colors.transparent,
                            ),
                            alignment: AlignmentDirectional.topStart,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  const SizedBox(width: 10),
                                  FaIcon(
                                    FontAwesomeIcons.house,
                                    size: 20,
                                    color:cubit.D_value==0||cubit.Nav_Bar_index==0? Colors.white:c1,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Dashboard',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        color:cubit.D_value==0||cubit.Nav_Bar_index==0? Colors.white:c1,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: (){
                          cubit.D_value = 1;
                          cubit.SetState_G();
                          Navigator.push(context,MaterialPageRoute(builder: (context) => Edit_Profile_screen(),));
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0,),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              // color:cubit.D_value==1? Colors.blue.withOpacity(.8):Colors.transparent,
                              color:Colors.transparent,
                            ),
                            alignment: AlignmentDirectional.topStart,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  const SizedBox(width: 10),
                                  FaIcon(
                                    FontAwesomeIcons.solidUser,
                                    size: 20,
                                    // color:cubit.D_value==2? Colors.white:c1,
                                    color:c1,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Edit Account',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        // color:cubit.D_value==2? Colors.white:c1,
                                        color:c1,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0,),
                        child: GestureDetector(
                          onTap: (){
                            cubit.D_value = 2;
                            Navigator.push(context, MaterialPageRoute(builder: (context) => STUAllGradesScreen(),));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              // color:cubit.D_value==1? Colors.blue.withOpacity(.8):Colors.transparent,
                              color:Colors.transparent,
                            ),
                            alignment: AlignmentDirectional.topStart,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  const SizedBox(width: 10),
                                  FaIcon(
                                    FontAwesomeIcons.chartSimple,
                                    size: 20,
                                    // color:cubit.D_value==2? Colors.white:c1,
                                    color:c1,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Grades',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        // color:cubit.D_value==2? Colors.white:c1,
                                        color:c1,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0,),
                        child: GestureDetector(
                          onTap: (){
                            cubit.D_value = 3;
                            Navigator.pop(context);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              // color:cubit.D_value==1? Colors.blue.withOpacity(.8):Colors.transparent,
                              color:Colors.transparent,
                            ),
                            alignment: AlignmentDirectional.topStart,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  const SizedBox(width: 10),
                                  FaIcon(
                                    FontAwesomeIcons.gear,
                                    size: 20,
                                    // color:cubit.D_value==2? Colors.white:c1,
                                    color:c1,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Settings',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        // color:cubit.D_value==2? Colors.white:c1,
                                        color:c1,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0,),
                        child: GestureDetector(
                          onTap: (){
                            cubit.D_value = 4;
                            Navigator.pop(context);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              // color:cubit.D_value==1? Colors.blue.withOpacity(.8):Colors.transparent,
                              color:Colors.transparent,
                            ),
                            alignment: AlignmentDirectional.topStart,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  const SizedBox(width: 10),
                                  FaIcon(
                                    FontAwesomeIcons.rightFromBracket,
                                    size: 20,
                                    // color:cubit.D_value==2? Colors.white:c1,
                                    color:c1,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Logout',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        // color:cubit.D_value==2? Colors.white:c1,
                                        color:c1,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),

                      const Spacer(),

                    ],
                  ),
                ),
                color: Colors.white.withOpacity(.3),
                borderRadius: 20,
                x: 35,
                y: 40),
          ),
          backgroundColor: Colors.white,

          body: Stack(
            children: [
              Column(
                children: [

                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          height: 150,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          height: 0,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              // Column(
              //   children: [
              //     Spacer(),
              //     Container(
              //       height: 600,
              //       child: RiveAnimation.asset(
              //         "assets/riveassets/shapes.riv",
              //       ),
              //     ),
              //   ],
              // ),
              Positioned(
                  child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 80, sigmaY: 80),
                child: const SizedBox(),
              )),

              SafeArea(
                  child: Column(
                children: [
                  // const SizedBox(
                  //   height: 60,
                  // ),
                  Expanded(
                    child: cubit.Nav_Bar_Items_List()[cubit.Nav_Bar_index],
                  ),
                ],
              )),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 0),
                        child: GestureDetector(
                          onTap: () => scafoldkey.currentState?.openDrawer(),
                          child: Container(
                            height: 60,
                            width: 45,

                            // color: Colors.green,

                            child: const Stack(
                              // alignment: AlignmentDirectional.topStart,

                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 25.0),
                                  child: FaIcon(FontAwesomeIcons.solidWindowMinimize,size: 25),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 0.0),
                                  child: FaIcon(FontAwesomeIcons.windowMinimize,size: 40,),
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),
                      // Spacer(),
                      // Padding(
                      //   padding: const EdgeInsets.only(right: 5.0, top: 30),
                      //   child: IconButton(
                      //       onPressed: () {},
                      //       icon: FaIcon(
                      //         FontAwesomeIcons.graduationCap,
                      //         color: c1,
                      //         size: 30,
                      //       )),
                      // ),

                      const Spacer(),
                      // Padding(
                      //   padding: const EdgeInsets.only(right: 15.0, top: 30),
                      //   child: IconButton(
                      //       onPressed: () {},
                      //       icon: FaIcon(
                      //         FontAwesomeIcons.qrcode,
                      //         color: c1,
                      //         size: 30,
                      //       )),
                      // ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0, top: 30),
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            IconButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Notification_Screen(),));
                                },
                                icon: FaIcon(
                                  FontAwesomeIcons.bell,
                                  color: c1,
                                  size: 30,
                                )),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 8),
                              child: CircleAvatar(
                                radius: 8,
                                backgroundColor: Colors.red,
                                child: Text('3',style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w700),),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  // Choose the nav bar style with this property.,

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0,horizontal: 5),
                    child: GlassBox(
                        widget: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: BottomNavigationBar(
                            backgroundColor: Colors.transparent,
                            elevation: 0,

                            fixedColor: Colors.lightBlueAccent,
                            unselectedIconTheme: const IconThemeData(
                              size: 23,
                            ),
                            selectedIconTheme: const IconThemeData(

                              size: 25,
                            ),
                            showSelectedLabels: false,
                            showUnselectedLabels: false,
                            unselectedItemColor: Colors.white,

                            type: BottomNavigationBarType.fixed,
                            items: const [
                              BottomNavigationBarItem(
                                  icon: FaIcon(FontAwesomeIcons.house),
                                  label: 'Home'),
                              BottomNavigationBarItem(
                                  icon: FaIcon(FontAwesomeIcons.newspaper),
                                  label: 'News'),
                              BottomNavigationBarItem(
                                  icon: FaIcon(FontAwesomeIcons.book),
                                  label: 'Lecture'),
                              BottomNavigationBarItem(
                                  icon: FaIcon(FontAwesomeIcons.calendarCheck,),
                                  label: 'Calendar'),
                              BottomNavigationBarItem(
                                  icon: FaIcon(FontAwesomeIcons.user),
                                  label: 'Profile'),
                            ],
                            currentIndex: cubit.Nav_Bar_index,
                            onTap: (index) {
                              cubit.Nav_Bar_Function(index: index);
                            },
                          ),
                        ),
                        color: Colors.black,
                        borderRadius: 25,
                        x: 10,
                        y: 10
                    ),
                  ),
                ],
              ),


            ],
          ),
        );
      },
    );
  }
}
