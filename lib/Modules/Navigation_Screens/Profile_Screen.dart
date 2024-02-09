import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:university_hup/Shared/Component/component.dart';
import 'package:university_hup/Shared/Cubit/App_cubit.dart';
import 'package:university_hup/Shared/Cubit/App_state.dart';
import 'package:university_hup/Shared/constant.dart';

class Profile_screen extends StatelessWidget {
  Profile_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit, App_state>(
      listener: (context, state) => {},
      builder: (context, state) {
        App_cubit cubit = App_cubit.get(context);
        return SafeArea(
          child: ConditionalBuilder(
            condition: true,
            builder: (context) => Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Stack(
                          alignment: AlignmentDirectional.bottomCenter,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  // boxShadow: [
                                  //   BoxShadow(
                                  //     color: Colors.white,
                                  //     blurRadius: 0,
                                  //     spreadRadius: 1,
                                  //   ),
                                  // ]
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: CircleAvatar(
                                  radius: 48,
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(

                                    radius: 45,
                                    backgroundColor: Colors.white,
                                    backgroundImage:
                                        AssetImage('assets/images/profile.png'),
                                  ),
                                ),
                              ),
                            ),
                            FaIcon(
                              FontAwesomeIcons.camera,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '3',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 20,
                                          color: c1,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 7,
                                      ),
                                      Text(
                                        'GPA',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 16,
                                          color: c1.withOpacity(.8),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '4',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 20,
                                          color: c1,
                                        ),
                                      ),
                                      SizedBox(
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
                                ),
                                Container(
                                  child: Column(
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
                                      SizedBox(
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
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Container(
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(
                              'Name Here',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 16,
                                color: c1,
                              ),
                            ),
                          ),
                          SizedBox(
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
                          child: GlassBox(
                              widget: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: InkWell(
                                  onTap: () {
                                    scafoldkey.currentState?.showBottomSheet(
                                      (context) => GestureDetector(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: GlassBox(
                                            widget: Stack(
                                              children: [
                                                Column(
                                                  children: [
                                                    Spacer(),
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
                                                          child: Container(
                                                            child: Column(
                                                              children: [
                                                                Text(
                                                                  'FCAI - Sadat City University',
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
                                                                SizedBox(
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
                                                                      decoration: BoxDecoration(
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
                                                                          CircleAvatar(
                                                                        radius:
                                                                            50,
                                                                        backgroundImage:
                                                                            AssetImage(
                                                                          'assets/images/profile.png',
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      width: 20,
                                                                    ),
                                                                    Column(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Row(
                                                                          children: [
                                                                            Text(
                                                                              'Your Name : ',
                                                                              style: TextStyle(
                                                                                fontWeight: FontWeight.w900,
                                                                                fontSize: 14,
                                                                                color: Colors.teal,
                                                                              ),
                                                                            ),
                                                                            Text(
                                                                              'Your Name ',
                                                                              style: TextStyle(
                                                                                fontWeight: FontWeight.w500,
                                                                                fontSize: 14,
                                                                                color: c1,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        SizedBox(
                                                                          height:
                                                                              4,
                                                                        ),
                                                                        Row(
                                                                          children: [
                                                                            Text(
                                                                              'Your Level : ',
                                                                              style: TextStyle(
                                                                                fontWeight: FontWeight.w900,
                                                                                fontSize: 14,
                                                                                color: Colors.teal,
                                                                              ),
                                                                            ),
                                                                            Text(
                                                                              '4 - CS',
                                                                              style: TextStyle(
                                                                                fontWeight: FontWeight.w500,
                                                                                fontSize: 14,
                                                                                color: c1,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        SizedBox(
                                                                          height:
                                                                              4,
                                                                        ),
                                                                        Row(
                                                                          children: [
                                                                            Text(
                                                                              'Academic ID : ',
                                                                              style: TextStyle(
                                                                                fontWeight: FontWeight.w900,
                                                                                fontSize: 14,
                                                                                color: Colors.teal,
                                                                              ),
                                                                            ),
                                                                            Text(
                                                                              '2031035',
                                                                              style: TextStyle(
                                                                                fontWeight: FontWeight.w500,
                                                                                fontSize: 14,
                                                                                color: c1,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        SizedBox(
                                                                          height:
                                                                              4,
                                                                        ),
                                                                        Row(
                                                                          children: [
                                                                            Text(
                                                                              'National ID : ',
                                                                              style: TextStyle(
                                                                                fontWeight: FontWeight.w900,
                                                                                fontSize: 14,
                                                                                color: Colors.teal,
                                                                              ),
                                                                            ),
                                                                            Text(
                                                                              '30204031700212',
                                                                              style: TextStyle(
                                                                                fontWeight: FontWeight.w500,
                                                                                fontSize: 14,
                                                                                color: c1,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
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
                                                    Spacer(),
                                                  ],
                                                ),
                                                // Row(
                                                //   children: [
                                                //     Spacer(),
                                                //     Padding(
                                                //       padding:
                                                //       const EdgeInsets.only(
                                                //           right: 30.0),
                                                //       child: InkWell(
                                                //         onTap: () {
                                                //           Navigator.pop(context);
                                                //         },
                                                //         child: CircleAvatar(
                                                //             backgroundColor: Colors
                                                //                 .blue,
                                                //             // radius: 25,
                                                //             child: Padding(
                                                //               padding:
                                                //               const EdgeInsets
                                                //                   .all(3.0),
                                                //               child: FaIcon(
                                                //                 FontAwesomeIcons
                                                //                     .chevronDown,
                                                //                 color:
                                                //                 Colors.white,
                                                //                 size: 20,
                                                //               ),
                                                //             )),
                                                //       ),
                                                //     ),
                                                //   ],
                                                // ),
                                              ],
                                            ),
                                            color:
                                                Colors.blueGrey.withOpacity(.3),
                                            borderRadius: 0,
                                            x: 5,
                                            y: 5),
                                      ),
                                    );
                                  },
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
                              color: Colors.blueGrey.withOpacity(.2),
                              borderRadius: 10,
                              x: 40,
                              y: 40),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              // cubit.image=null;
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //       builder: (context) => editscreen(),
                              //     ));
                            },
                            child: GlassBox(
                                widget: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Logout',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: c1,
                                      ),
                                    ),
                                  ),
                                ),
                                color: Colors.blueGrey.withOpacity(.2),
                                borderRadius: 10,
                                x: 40,
                                y: 40),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ConditionalBuilder(
                      condition: true,
                      builder: (context) => Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: GlassBox(
                                    widget: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.info_outline,
                                            color: Colors.orange,
                                          ),
                                          SizedBox(
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
                                          Spacer(),
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
                                    color: Colors.blueGrey.withOpacity(.25),
                                    borderRadius: 20,
                                    x: 40,
                                    y: 40),
                              ),
                            ],
                          ),
                      fallback: (context) => SizedBox(
                            height: 0,
                          )),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30.0,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.transparent,
                          border: Border.all(color: Colors.white, width: 0)),
                      alignment: AlignmentDirectional.topStart,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: [

                            FaIcon(
                              FontAwesomeIcons.solidUser,
                              size: 25,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Change User Name',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: c1,
                              ),
                            ),
                            Spacer(),
                            FaIcon(
                              FontAwesomeIcons.circleChevronRight,
                              size: 25,
                              color: Colors.black,
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30.0,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.transparent,
                          border: Border.all(color: Colors.white, width: 0)),
                      alignment: AlignmentDirectional.topStart,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: [

                            FaIcon(
                              FontAwesomeIcons.solidEnvelope,
                              size: 25,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Change Email',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: c1,
                              ),
                            ),
                            Spacer(),
                            FaIcon(
                              FontAwesomeIcons.circleChevronRight,
                              size: 25,
                              color: Colors.black,
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30.0,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.transparent,
                          border: Border.all(color: Colors.white, width: 0)),
                      alignment: AlignmentDirectional.topStart,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: [

                            FaIcon(
                              FontAwesomeIcons.key,
                              size: 25,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Change Password',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: c1,
                              ),
                            ),
                            Spacer(),
                            FaIcon(
                              FontAwesomeIcons.circleChevronRight,
                              size: 25,
                              color: Colors.black,
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            fallback: (context) => Center(child: CircularProgressIndicator()),
          ),
        );
      },
    );
  }
}
