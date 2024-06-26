import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

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
        List<_SalesData> data = [
          _SalesData('Jan', 35),
          _SalesData('Feb', 25),
          _SalesData('Mar', 34),
          _SalesData('Apr', 25),
          _SalesData('May', 40),
        ];
        App_cubit cubit = App_cubit.get(context);
        return ConditionalBuilder(
          // condition:true,
          condition: rol=='Student',
          builder: (context) =>  ConditionalBuilder(
            // condition:true,
            condition: cubit.studentInfoModel != null &&
                cubit.connnection == true ||
                cubit.userInfoFromHIVE?.fullName != null && cubit.connnection == false,
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
                            onTap: () => showDialog<String>(
                              context: context,
                              barrierColor: Colors.black.withOpacity(.3),
                              useSafeArea: true,
                              builder: (BuildContext context) => AlertDialog(
                                insetPadding: const EdgeInsets.all(0.0),
                                scrollable: false,
                                shadowColor: Colors.transparent,

                                // title: const Text('AlertDialog Title'),
                                content: Center(
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    child: GestureDetector(
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
                                                    decoration:
                                                    const BoxDecoration(
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                      EdgeInsets.all(10.0),
                                                      child: CircleAvatar(
                                                        radius: 120,
                                                        backgroundColor:
                                                        Colors.white,
                                                        backgroundImage: NetworkImage(
                                                            '${cubit.userInfoFromHIVE == null || cubit.connnection ? cubit.studentInfoModel!.imagePath : cubit.userInfoFromHIVE!.imagePath}'
                                                          //'assets/images/profile.png'
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  const Spacer(
                                                    flex: 1,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          color: Colors.transparent,
                                          borderRadius: 0,
                                          x: 5,
                                          y: 5),
                                    ),
                                  ),
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
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: CircleAvatar(
                                  radius: 48,
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    radius: 45,
                                    backgroundColor: Colors.white,
                                    backgroundImage:
                                    AssetImage('assets/images/profile.png'),
                                    // NetworkImage('${cubit.connnection==true?cubit.studentInfoModel!
                                    //     .imagePath:cubit.usermodel!.imagePath}'
                                    //     // 'assets/images/profile.png'
                                    //   ),
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
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '${cubit.userInfoFromHIVE == null || cubit.connnection? cubit.studentInfoModel!.departmentName : cubit.userInfoFromHIVE!.departmentName}',
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
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '${cubit.userInfoFromHIVE == null || cubit.connnection ? cubit.studentInfoModel!.level : cubit.userInfoFromHIVE?.level}',
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
                              crossAxisAlignment: CrossAxisAlignment.center,
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
                              '${cubit.userInfoFromHIVE == null || cubit.connnection ? cubit.studentInfoModel!.fullName : cubit.userInfoFromHIVE?.fullName}',
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
                          onTap: () {
                            cubit.all_assign_files_List=[];

                            cubit.resetPassToken=token;

                            print('token from profile ----- $token');
                            print('token from profile ----- ${cubit.resetPassToken}');
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
                                onTap: () => showDialog<String>(
                                  context: context,
                                  barrierColor: Colors.black.withOpacity(.3),
                                  useSafeArea: true,
                                  builder: (BuildContext context) => AlertDialog(
                                    insetPadding: const EdgeInsets.all(0.0),
                                    scrollable: false,
                                    shadowColor: Colors.transparent,

                                    // title: const Text('AlertDialog Title'),
                                    content: Center(
                                      child: Container(
                                        width: MediaQuery.of(context).size.width,
                                        child: GestureDetector(
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
                                                                  '${cubit.userInfoFromHIVE==null||cubit.connnection == true ? cubit.studentInfoModel!.facultyName :cubit.userInfoFromHIVE?.facultyName} - ${cubit.connnection == true ||cubit.userInfoFromHIVE==null? cubit.studentInfoModel!.universityName : cubit.userInfoFromHIVE?.universityName}',
                                                                  style:
                                                                  TextStyle(
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w900,
                                                                    fontSize: 15,
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
                                                                          shape: BoxShape
                                                                              .circle,
                                                                          boxShadow: [
                                                                            BoxShadow(
                                                                              color:
                                                                              Colors.black,
                                                                              blurRadius:
                                                                              0,
                                                                              spreadRadius:
                                                                              1,
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
                                                                              style:
                                                                              TextStyle(
                                                                                fontWeight: FontWeight.w900,
                                                                                fontSize: 14,
                                                                                color: Colors.teal,
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              width:
                                                                              130,
                                                                              child:
                                                                              Text(
                                                                                '${cubit.userInfoFromHIVE==null||cubit.connnection == true? cubit.studentInfoModel!.fullName : cubit.userInfoFromHIVE!.fullName}',
                                                                                maxLines: 1,
                                                                                style: TextStyle(
                                                                                  overflow: TextOverflow.ellipsis,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  fontSize: 14,
                                                                                  color: c1,
                                                                                ),
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
                                                                            const Text(
                                                                              'Academic ID : ',
                                                                              style:
                                                                              TextStyle(
                                                                                fontWeight: FontWeight.w900,
                                                                                fontSize: 14,
                                                                                color: Colors.teal,
                                                                              ),
                                                                            ),
                                                                            Text(
                                                                              '${cubit.userInfoFromHIVE==null||cubit.connnection == true ? cubit.studentInfoModel!.academicId : cubit.userInfoFromHIVE?.academicId}',
                                                                              style:
                                                                              TextStyle(
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
                                                                              style:
                                                                              TextStyle(
                                                                                fontWeight: FontWeight.w900,
                                                                                fontSize: 14,
                                                                                color: Colors.teal,
                                                                              ),
                                                                            ),
                                                                            Text(
                                                                              '${cubit.userInfoFromHIVE==null||cubit.connnection == true ? cubit.studentInfoModel!.level :cubit.userInfoFromHIVE?.level} - ${cubit.userInfoFromHIVE==null||cubit.connnection == true ? cubit.studentInfoModel!.departmentName : cubit.userInfoFromHIVE?.departmentName}',
                                                                              style:
                                                                              TextStyle(
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
                                                                              'Number : ',
                                                                              style:
                                                                              TextStyle(
                                                                                fontWeight: FontWeight.w900,
                                                                                fontSize: 14,
                                                                                color: Colors.teal,
                                                                              ),
                                                                            ),
                                                                            Text(
                                                                              '${cubit.userInfoFromHIVE==null||cubit.connnection == true ? cubit.studentInfoModel!.phone : cubit.userInfoFromHIVE?.phone}',
                                                                              maxLines:
                                                                              1,
                                                                              style:
                                                                              TextStyle(
                                                                                overflow: TextOverflow.ellipsis,
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
                                                      const Spacer(
                                                        flex: 1,
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              color: Colors.transparent,
                                              borderRadius: 0,
                                              x: 5,
                                              y: 5),
                                        ),
                                      ),
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
                          padding:
                          const EdgeInsets.symmetric(horizontal: 15.0),
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
                                        onPressed: () {


                                        },
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
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 180,
                    child: GlassBoxWithBorder_Gradiant2(
                        widget: Container(
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              child: SfCartesianChart(
                                  primaryXAxis: CategoryAxis(),
                                  // Chart title
                                  title: ChartTitle(text: 'Your Activity'),
                                  // Enable legend
                                  legend: Legend(
                                    isVisible: true,
                                  ),
                                  // Enable tooltip
                                  tooltipBehavior: TooltipBehavior(enable: true),
                                  series: <CartesianSeries<_SalesData, String>>[
                                    LineSeries<_SalesData, String>(
                                        color: Colors.teal,
                                        markerSettings: MarkerSettings(
                                            color: Colors.cyan,
                                            width: 0,
                                            height: 0,
                                            isVisible: true),
                                        dataSource: data,
                                        xValueMapper: (_SalesData sales, _) =>
                                        sales.year,
                                        yValueMapper: (_SalesData sales, _) =>
                                        sales.sales,
                                        name: 'Active',
                                        // Enable data label
                                        dataLabelSettings:
                                        DataLabelSettings(isVisible: true))
                                  ]),
                            ),
                          ),
                        ),
                        BorderWidth: .5,
                        BorderColor: Colors.black.withOpacity(.7),
                        color: Colors.white.withOpacity(.2),
                        borderRadius: 20,
                        x: 0,
                        y: 0),
                  ),
                ),

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
            fallback: (context) =>
            const Center(child: CircularProgressIndicator()),
          ),
          fallback: (context) =>
              ConditionalBuilder(
                // condition:true,
                condition: cubit.instructorInfoModel != null &&
                    cubit.connnection == true ,
                builder: (context) => Column(
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                            onTap: () => showDialog<String>(
                              context: context,
                              barrierColor: Colors.black.withOpacity(.3),
                              useSafeArea: true,
                              builder: (BuildContext context) => AlertDialog(
                                insetPadding: const EdgeInsets.all(0.0),
                                scrollable: false,
                                shadowColor: Colors.transparent,

                                // title: const Text('AlertDialog Title'),
                                content: Center(
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    child: GestureDetector(
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
                                                    decoration:
                                                    const BoxDecoration(
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                      EdgeInsets.all(10.0),
                                                      child: CircleAvatar(
                                                        radius: 120,
                                                        backgroundColor:
                                                        Colors.white,
                                                        backgroundImage: NetworkImage(
                                                            '${cubit.connnection == true ? cubit.instructorInfoModel!.imagePath : cubit.instructorInfoModel!.imagePath}'
                                                          //'assets/images/profile.png'
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  const Spacer(
                                                    flex: 1,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          color: Colors.transparent,
                                          borderRadius: 0,
                                          x: 5,
                                          y: 5),
                                    ),
                                  ),
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
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: CircleAvatar(
                                  radius: 105,
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    radius: 100,
                                    backgroundColor: Colors.white,
                                    backgroundImage:
                                    AssetImage('assets/images/profile.png'),
                                    // NetworkImage('${cubit.connnection==true?cubit.studentInfoModel!
                                    //     .imagePath:cubit.usermodel!.imagePath}'
                                    //     // 'assets/images/profile.png'
                                    //   ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          // Expanded(
                          //   child: Row(
                          //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                          //     children: [
                          //       Column(
                          //         crossAxisAlignment: CrossAxisAlignment.center,
                          //         mainAxisAlignment: MainAxisAlignment.center,
                          //         children: [
                          //           Text(
                          //             '${cubit.connnection == true ? cubit.instructorInfoModel!.departmentName : cubit.instructorInfoModel!.departmentName}',
                          //             style: TextStyle(
                          //               fontWeight: FontWeight.w900,
                          //               fontSize: 20,
                          //               color: c1,
                          //             ),
                          //           ),
                          //           const SizedBox(
                          //             height: 7,
                          //           ),
                          //           Text(
                          //             'Depart',
                          //             style: TextStyle(
                          //               fontWeight: FontWeight.w900,
                          //               fontSize: 16,
                          //               color: c1.withOpacity(.8),
                          //             ),
                          //           ),
                          //         ],
                          //       ),
                          //       Column(
                          //         crossAxisAlignment: CrossAxisAlignment.center,
                          //         mainAxisAlignment: MainAxisAlignment.center,
                          //         children: [
                          //           Text(
                          //             '${cubit.connnection == true ? cubit.studentInfoModel!.level : cubit.usermodel.level}',
                          //             style: TextStyle(
                          //               fontWeight: FontWeight.w900,
                          //               fontSize: 20,
                          //               color: c1,
                          //             ),
                          //           ),
                          //           const SizedBox(
                          //             height: 7,
                          //           ),
                          //           Text(
                          //             'Level',
                          //             style: TextStyle(
                          //               fontWeight: FontWeight.w900,
                          //               fontSize: 16,
                          //               color: c1.withOpacity(.8),
                          //             ),
                          //           ),
                          //         ],
                          //       ),
                          //       Column(
                          //         crossAxisAlignment: CrossAxisAlignment.center,
                          //         mainAxisAlignment: MainAxisAlignment.center,
                          //         children: [
                          //           Text(
                          //             '2',
                          //             style: TextStyle(
                          //               fontWeight: FontWeight.w900,
                          //               fontSize: 20,
                          //               color: c1,
                          //             ),
                          //           ),
                          //           const SizedBox(
                          //             height: 7,
                          //           ),
                          //           Text(
                          //             'Semester',
                          //             style: TextStyle(
                          //               fontWeight: FontWeight.w900,
                          //               fontSize: 16,
                          //               color: c1.withOpacity(.8),
                          //             ),
                          //           ),
                          //         ],
                          //       ),
                          //     ],
                          //   ),
                          // ),
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 0.0),
                              child: Container(
                                child: Text(
                                  '${cubit.connnection == true ? cubit.instructorInfoModel!.fullName : cubit.instructorInfoModel!.fullName}',
                                  maxLines: 1,
                                  style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 18,
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
                              onTap: () {
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
                                    onTap: () => showDialog<String>(
                                      context: context,
                                      barrierColor: Colors.black.withOpacity(.3),
                                      useSafeArea: true,
                                      builder: (BuildContext context) => AlertDialog(
                                        insetPadding: const EdgeInsets.all(0.0),
                                        scrollable: false,
                                        shadowColor: Colors.transparent,

                                        // title: const Text('AlertDialog Title'),
                                        content: Center(
                                          child: Container(
                                            width: MediaQuery.of(context).size.width,
                                            child: GestureDetector(
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
                                                                      '${cubit.connnection == true ? cubit.instructorInfoModel!.facultyName : cubit.instructorInfoModel!.facultyName} - ${cubit.connnection == true ? cubit.instructorInfoModel!.universityName : cubit.instructorInfoModel!.universityName}',
                                                                      style:
                                                                      TextStyle(
                                                                        fontWeight:
                                                                        FontWeight
                                                                            .w900,
                                                                        fontSize: 15,
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
                                                                              shape: BoxShape
                                                                                  .circle,
                                                                              boxShadow: [
                                                                                BoxShadow(
                                                                                  color:
                                                                                  Colors.black,
                                                                                  blurRadius:
                                                                                  0,
                                                                                  spreadRadius:
                                                                                  1,
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
                                                                                  style:
                                                                                  TextStyle(
                                                                                    fontWeight: FontWeight.w900,
                                                                                    fontSize: 14,
                                                                                    color: Colors.teal,
                                                                                  ),
                                                                                ),
                                                                                Container(
                                                                                  width:
                                                                                  130,
                                                                                  child:
                                                                                  Text(
                                                                                    '${cubit.connnection == true ? cubit.instructorInfoModel!.fullName : cubit.instructorInfoModel!.fullName}',
                                                                                    maxLines: 1,
                                                                                    style: TextStyle(
                                                                                      overflow: TextOverflow.ellipsis,
                                                                                      fontWeight: FontWeight.w500,
                                                                                      fontSize: 14,
                                                                                      color: c1,
                                                                                    ),
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
                                                                                const Text(
                                                                                  'Rol : ',
                                                                                  style:
                                                                                  TextStyle(
                                                                                    fontWeight: FontWeight.w900,
                                                                                    fontSize: 14,
                                                                                    color: Colors.teal,
                                                                                  ),
                                                                                ),
                                                                                Text(
                                                                                  'Doctor ',
                                                                                  style:
                                                                                  TextStyle(
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
                                                                                  style:
                                                                                  TextStyle(
                                                                                    fontWeight: FontWeight.w900,
                                                                                    fontSize: 14,
                                                                                    color: Colors.teal,
                                                                                  ),
                                                                                ),
                                                                                Text(
                                                                                  '${cubit.connnection == true ? cubit.instructorInfoModel!.email : cubit.instructorInfoModel!.email}',
                                                                                  style:
                                                                                  TextStyle(
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
                                                                                  'Number : ',
                                                                                  style:
                                                                                  TextStyle(
                                                                                    fontWeight: FontWeight.w900,
                                                                                    fontSize: 14,
                                                                                    color: Colors.teal,
                                                                                  ),
                                                                                ),
                                                                                Text(
                                                                                  '${cubit.connnection == true ? cubit.instructorInfoModel!.phone : cubit.instructorInfoModel!.phone}',
                                                                                  maxLines:
                                                                                  1,
                                                                                  style:
                                                                                  TextStyle(
                                                                                    overflow: TextOverflow.ellipsis,
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
                                                          const Spacer(
                                                            flex: 1,
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  color: Colors.transparent,
                                                  borderRadius: 0,
                                                  x: 5,
                                                  y: 5),
                                            ),
                                          ),
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
                              padding:
                              const EdgeInsets.symmetric(horizontal: 15.0),
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
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        height: 180,
                        child: GlassBoxWithBorder_Gradiant2(
                            widget: Container(
                              width: double.infinity,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  child: SfCartesianChart(
                                      primaryXAxis: CategoryAxis(),
                                      // Chart title
                                      title: ChartTitle(text: 'Your Activity'),
                                      // Enable legend
                                      legend: Legend(
                                        isVisible: true,
                                      ),
                                      // Enable tooltip
                                      tooltipBehavior: TooltipBehavior(enable: true),
                                      series: <CartesianSeries<_SalesData, String>>[
                                        LineSeries<_SalesData, String>(
                                            color: Colors.teal,
                                            markerSettings: MarkerSettings(
                                                color: Colors.cyan,
                                                width: 0,
                                                height: 0,
                                                isVisible: true),
                                            dataSource: data,
                                            xValueMapper: (_SalesData sales, _) =>
                                            sales.year,
                                            yValueMapper: (_SalesData sales, _) =>
                                            sales.sales,
                                            name: 'Active',
                                            // Enable data label
                                            dataLabelSettings:
                                            DataLabelSettings(isVisible: true))
                                      ]),
                                ),
                              ),
                            ),
                            BorderWidth: .5,
                            BorderColor: Colors.black.withOpacity(.7),
                            color: Colors.white.withOpacity(.2),
                            borderRadius: 20,
                            x: 0,
                            y: 0),
                      ),
                    ),

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
                fallback: (context) =>
                const Center(child: CircularProgressIndicator()),
              ),
        );

      },
    );
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
