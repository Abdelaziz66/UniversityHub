import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:rive/rive.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'package:university_hup/Shared/Component/component.dart';
import 'package:university_hup/Shared/Cubit/App_cubit.dart';
import 'package:university_hup/Shared/Cubit/App_state.dart';
import 'package:university_hup/Shared/constant.dart';

class Dashboard_Screen extends StatelessWidget {
  const Dashboard_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit, App_state>(
      listener: (context, state) => {},
      builder: (context, state) {
        App_cubit cubit = App_cubit.get(context);
        List<_PieData> pieData = [
          _PieData('A', 75),
          _PieData('B', 80),
          _PieData('C', 85),
          _PieData('D', 90),
        ];
        List<_SalesData> data = [
          _SalesData('Jan', 35),
          _SalesData('Feb', 25),
          _SalesData('Mar', 34),
          _SalesData('Apr', 25),
          _SalesData('May', 40),
        ];
        // List<Widget> listwidget = [
        //   Padding(
        //     padding: const EdgeInsets.only(
        //         top: 10.0, right: 10, bottom: 3, left: 10),
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       crossAxisAlignment: CrossAxisAlignment.center,
        //       children: [
        //         Text('Check Quiz'),
        //         SizedBox(
        //           height: 7,
        //         ),
        //         Container(
        //           color: Colors.black.withOpacity(.3),
        //           height: 1.5,
        //         ),
        //         Spacer(),
        //         Row(
        //           children: [
        //             FaIcon(
        //               FontAwesomeIcons.bookmark,
        //               size: 12,
        //             ),
        //             SizedBox(
        //               width: 7,
        //             ),
        //             Text(
        //               'Computer Security',
        //               textAlign: TextAlign.start,
        //               style:
        //                   TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
        //             ),
        //           ],
        //         ),
        //         SizedBox(
        //           height: 2,
        //         ),
        //         Row(
        //           children: [
        //             FaIcon(
        //               FontAwesomeIcons.user,
        //               size: 12,
        //             ),
        //             SizedBox(
        //               width: 7,
        //             ),
        //             Text(
        //               'Sara shehab',
        //               textAlign: TextAlign.start,
        //               style:
        //                   TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
        //             ),
        //           ],
        //         ),
        //         SizedBox(
        //           height: 2,
        //         ),
        //         Row(
        //           children: [
        //             FaIcon(
        //               FontAwesomeIcons.chartLine,
        //               size: 12,
        //             ),
        //             SizedBox(
        //               width: 7,
        //             ),
        //             Text(
        //               '5 points',
        //               textAlign: TextAlign.start,
        //               style:
        //                   TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
        //             ),
        //           ],
        //         ),
        //         SizedBox(
        //           height: 2,
        //         ),
        //         Row(
        //           children: [
        //             FaIcon(
        //               FontAwesomeIcons.clock,
        //               size: 12,
        //             ),
        //             SizedBox(
        //               width: 7,
        //             ),
        //             Text(
        //               'Deadline 1/3',
        //               textAlign: TextAlign.start,
        //               style:
        //                   TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
        //             ),
        //           ],
        //         ),
        //         SizedBox(
        //           height: 2,
        //         ),
        //         Row(
        //           children: [
        //             FaIcon(
        //               FontAwesomeIcons.clock,
        //               size: 12,
        //             ),
        //             SizedBox(
        //               width: 7,
        //             ),
        //             Text(
        //               'From 8 PM to 9 PM',
        //               textAlign: TextAlign.start,
        //               style:
        //                   TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
        //             ),
        //           ],
        //         ),
        //         Spacer(),
        //       ],
        //     ),
        //   ),
        //   Padding(
        //     padding: const EdgeInsets.only(
        //         top: 10.0, right: 10, bottom: 3, left: 10),
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       crossAxisAlignment: CrossAxisAlignment.center,
        //       children: [
        //         Text('Check Assignment'),
        //         SizedBox(
        //           height: 7,
        //         ),
        //         Container(
        //           color: Colors.black.withOpacity(.3),
        //           height: 1.5,
        //         ),
        //         Spacer(),
        //         Row(
        //           children: [
        //             FaIcon(
        //               FontAwesomeIcons.bookmark,
        //               size: 12,
        //             ),
        //             SizedBox(
        //               width: 7,
        //             ),
        //             Text(
        //               'Computer Security',
        //               textAlign: TextAlign.start,
        //               style:
        //                   TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
        //             ),
        //           ],
        //         ),
        //         SizedBox(
        //           height: 7,
        //         ),
        //         Row(
        //           children: [
        //             FaIcon(
        //               FontAwesomeIcons.user,
        //               size: 12,
        //             ),
        //             SizedBox(
        //               width: 7,
        //             ),
        //             Text(
        //               'Sara shehab',
        //               textAlign: TextAlign.start,
        //               style:
        //                   TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
        //             ),
        //           ],
        //         ),
        //         SizedBox(
        //           height: 7,
        //         ),
        //         Row(
        //           children: [
        //             FaIcon(
        //               FontAwesomeIcons.chartLine,
        //               size: 12,
        //             ),
        //             SizedBox(
        //               width: 7,
        //             ),
        //             Text(
        //               '5 points',
        //               textAlign: TextAlign.start,
        //               style:
        //                   TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
        //             ),
        //           ],
        //         ),
        //         SizedBox(
        //           height: 7,
        //         ),
        //         Row(
        //           children: [
        //             FaIcon(
        //               FontAwesomeIcons.clock,
        //               size: 12,
        //             ),
        //             SizedBox(
        //               width: 7,
        //             ),
        //             Text(
        //               'Deadline 1/3, 10 PM',
        //               textAlign: TextAlign.start,
        //               style:
        //                   TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
        //             ),
        //           ],
        //         ),
        //         Spacer(),
        //       ],
        //     ),
        //   ),
        // ];

        List<Widget> listwidget2 = [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  child: ConditionalBuilder(
                      condition: true,
                      builder: (context) => Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        right: 10.0,
                                        top: 15,
                                        bottom: 15,
                                        left: 10),
                                    child: Text(
                                      // 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.',
                                      'Congratulations, you have completed your registration ! Lets start your learning journey next.',

                                      maxLines: 6,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13,
                                        color: c1.withOpacity(1),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                      fallback: (context) => const SizedBox(
                            height: 0,
                          )),
                ),
                Expanded(
                  child: ConditionalBuilder(
                      condition: true,
                      builder: (context) => Padding(
                            padding: const EdgeInsets.only(
                                left: 0, right: 0.0, top: 0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blue[100],
                                image: const DecorationImage(
                                  image: AssetImage(
                                    'assets/images/post/6.png',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                      fallback: (context) => const SizedBox(
                            height: 0,
                          )),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  child: ConditionalBuilder(
                      condition: true,
                      builder: (context) => Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        right: 10.0,
                                        top: 15,
                                        bottom: 15,
                                        left: 10),
                                    child: Text(
                                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.'
                                      'Congratulations, you have completed your registration ! Lets start your learning journey next.',
                                      maxLines: 6,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13,
                                        color: c1.withOpacity(1),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                      fallback: (context) => const SizedBox(
                            height: 0,
                          )),
                ),
                ConditionalBuilder(
                    condition: false,
                    builder: (context) => Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 0, right: 0.0, top: 0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blue[100],
                                image: const DecorationImage(
                                  image: AssetImage(
                                    'assets/images/a44.png',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                    fallback: (context) => const SizedBox(
                          height: 0,
                        )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  child: ConditionalBuilder(
                      condition: true,
                      builder: (context) => Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        right: 10.0,
                                        top: 15,
                                        bottom: 15,
                                        left: 10),
                                    child: Text(
                                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.'
                                      'Congratulations, you have completed your registration ! Lets start your learning journey next.',
                                      maxLines: 6,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13,
                                        color: c1.withOpacity(1),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                      fallback: (context) => const SizedBox(
                            height: 0,
                          )),
                ),
                ConditionalBuilder(
                    condition: true,
                    builder: (context) => Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 0, right: 0.0, top: 0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blue[100],
                                image: const DecorationImage(
                                  image: AssetImage(
                                    'assets/images/post/7.png',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                    fallback: (context) => const SizedBox(
                          height: 0,
                        )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  child: ConditionalBuilder(
                      condition: true,
                      builder: (context) => Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        right: 10.0,
                                        top: 15,
                                        bottom: 15,
                                        left: 10),
                                    child: Text(
                                      // 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.',
                                      'Congratulations, you have completed your registration ! Lets start your learning journey next.',

                                      maxLines: 6,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13,
                                        color: c1.withOpacity(1),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                      fallback: (context) => const SizedBox(
                            height: 0,
                          )),
                ),
                Expanded(
                  child: ConditionalBuilder(
                      condition: true,
                      builder: (context) => Padding(
                            padding: const EdgeInsets.only(
                                left: 0, right: 0.0, top: 0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blueGrey.withOpacity(.15),
                                image: const DecorationImage(
                                  image: AssetImage(
                                    'assets/images/g7.png',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                      fallback: (context) => const SizedBox(
                            height: 0,
                          )),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  child: ConditionalBuilder(
                      condition: true,
                      builder: (context) => Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        right: 10.0,
                                        top: 15,
                                        bottom: 15,
                                        left: 10),
                                    child: Text(
                                      // 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.',
                                      'Congratulations, you have completed your registration ! Lets start your learning journey next.',

                                      maxLines: 6,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13,
                                        color: c1.withOpacity(1),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                      fallback: (context) => const SizedBox(
                            height: 0,
                          )),
                ),
                Expanded(
                  child: ConditionalBuilder(
                      condition: true,
                      builder: (context) => Padding(
                            padding: const EdgeInsets.only(
                                left: 0, right: 0.0, top: 0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.deepPurple[100],
                                image: const DecorationImage(
                                  image: AssetImage(
                                    'assets/images/post/1.png',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                      fallback: (context) => const SizedBox(
                            height: 0,
                          )),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  child: ConditionalBuilder(
                      condition: true,
                      builder: (context) => Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        right: 10.0,
                                        top: 15,
                                        bottom: 15,
                                        left: 10),
                                    child: Text(
                                      // 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.',
                                      'Congratulations, you have completed your registration ! Lets start your learning journey next.',

                                      maxLines: 6,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13,
                                        color: c1.withOpacity(1),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                      fallback: (context) => const SizedBox(
                            height: 0,
                          )),
                ),
                Expanded(
                  child: ConditionalBuilder(
                      condition: true,
                      builder: (context) => Padding(
                            padding: const EdgeInsets.only(
                                left: 0, right: 0.0, top: 0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.deepPurple[100],
                                image: const DecorationImage(
                                  image: AssetImage(
                                    'assets/images/post/11.png',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                      fallback: (context) => const SizedBox(
                            height: 0,
                          )),
                ),
              ],
            ),
          ),
        ];
        return ConditionalBuilder(
          condition: cubit.allNEWSFromHIVE.isNotEmpty &&
                  cubit.userInfoFromHIVE?.fullName != null &&
                  rol != 'Doctor' ||
              rol == 'Student' &&
                  cubit.studentInfoModel != null &&
                  cubit.connnection == true ||
              rol == 'Doctor' &&
                  cubit.instructorInfoModel != null &&
                  cubit.connnection == true

          // condition:rol=='Student'? cubit.studentInfoModel != null &&
          //         cubit.connnection == true ||
          //     cubit.usermodel.fullName != null && cubit.connnection == false:
          // cubit.instructorInfoModel != null &&
          //     cubit.connnection == true

          // || cubit.instructorInfo_offline_Model.fullName != null && cubit.connnection == false
          ,
          builder: (context) => Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(
              children: [
                Column(
                  children: [
                    const Spacer(),
                    Container(
                      height: 600,
                      child: const RiveAnimation.asset(
                        "assets/riveassets/shapes.riv",
                      ),
                    ),
                  ],
                ),
                Positioned(
                    child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
                  child: const SizedBox(),
                )),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0, vertical: 15),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                // width:200,
                                                child: Text(
                                                  rol == 'Student'
                                                      //? 'Hi, ${cubit.usermodel == null ? cubit.studentInfoModel!.fullName : cubit.usermodel?.fullName} !'
                                                      ? 'Hi, ${cubit.userInfoFromHIVE == null ? cubit.studentInfoModel!.fullName : cubit.userInfoFromHIVE?.fullName} !'
                                                      : 'Hi, Dr ${cubit.instructorInfoModel?.fullName} !',
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText1
                                                      ?.copyWith(fontSize: 25),

                                                  // TextStyle(
                                                  //   fontWeight: FontWeight.w700,
                                                  //   fontSize: 25,
                                                  //   color: Colors.black,
                                                  // ),
                                                ),
                                              ),
                                              Text(
                                                'Your Dashboard.',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .subtitle1
                                                    ?.copyWith(),

                                                // TextStyle(
                                                //   // fontWeight: FontWeight.w800,
                                                //
                                                //   fontSize: 18,
                                                //   fontWeight: FontWeight.w500,
                                                //   color: c1,
                                                // ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Container(
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Stack(
                                            alignment:
                                                AlignmentDirectional.bottomEnd,
                                            children: [
                                              CircleAvatar(
                                                radius: 50,
                                                backgroundColor: Colors.blue,
                                                backgroundImage: AssetImage(
                                                    'assets/images/avatar1.png'),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.all(7.0),
                                                child: CircleAvatar(
                                                  radius: 8,
                                                  backgroundColor:
                                                      cubit.connnection == true
                                                          ? Colors.green
                                                          : Colors.red,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            child: GlassBoxWithBorder_Gradiant2(
                                widget: Container(
                                  width: double.infinity,
                                  height: double.infinity,
                                  //allNEWSFromHIVE
                                  child: ConditionalBuilder(
                                      condition: cubit.allNEWSFromHIVE.isEmpty || cubit.connnection,
                                      builder: (context){
                                        print('display online news dashboard');
                                        return CarouselSlider(
                                          items: cubit.list_news_D,
                                          options: CarouselOptions(
                                            height: double.infinity,
                                            viewportFraction: 1,
                                            initialPage: 0,
                                            enableInfiniteScroll: true,
                                            reverse: false,
                                            autoPlay: true,
                                            autoPlayInterval:
                                            const Duration(seconds: 3),
                                            autoPlayAnimationDuration:
                                            const Duration(seconds: 1),
                                            autoPlayCurve: Curves.fastOutSlowIn,
                                            scrollDirection: Axis.horizontal,
                                          ),
                                        );
                                      },
                                      fallback: (context) {
                                        print('display offline news dashboard');
                                        return CarouselSlider(
                                          items: cubit.offline_News_DashboardData,
                                          options: CarouselOptions(
                                            height: double.infinity,
                                            viewportFraction: 1,
                                            initialPage: 0,
                                            enableInfiniteScroll: true,
                                            reverse: false,
                                            autoPlay: true,
                                            autoPlayInterval:
                                            const Duration(seconds: 3),
                                            autoPlayAnimationDuration:
                                            const Duration(seconds: 1),
                                            autoPlayCurve: Curves.fastOutSlowIn,
                                            scrollDirection: Axis.horizontal,
                                          ),
                                        );
                                      }
                                  ),
                                ),
                                BorderWidth: .5,
                                BorderColor: Colors.black.withOpacity(.7),
                                color: Colors.white.withOpacity(.2),
                                borderRadius: 20,
                                x: 0,
                                y: 0),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            child: GlassBoxWithBorder_Gradiant2(
                                widget: Container(
                                  width: double.infinity,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Container(
                                      child: SfCartesianChart(
                                          primaryXAxis: CategoryAxis(),
                                          // Chart title
                                          title:
                                              ChartTitle(text: 'Your Activity'),
                                          // Enable legend
                                          legend: Legend(
                                            isVisible: true,
                                          ),
                                          // Enable tooltip
                                          tooltipBehavior:
                                              TooltipBehavior(enable: true),
                                          series: <CartesianSeries<_SalesData,
                                              String>>[
                                            LineSeries<_SalesData, String>(
                                                color: Colors.teal,
                                                markerSettings: MarkerSettings(
                                                    color: Colors.cyan,
                                                    width: 0,
                                                    height: 0,
                                                    isVisible: true),
                                                dataSource: data,
                                                xValueMapper:
                                                    (_SalesData sales, _) =>
                                                        sales.year,
                                                yValueMapper:
                                                    (_SalesData sales, _) =>
                                                        sales.sales,
                                                name: 'Active',
                                                // Enable data label
                                                dataLabelSettings:
                                                    DataLabelSettings(
                                                        isVisible: true))
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
                          SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                ConditionalBuilder(
                                  condition: rol == 'Student',
                                  builder: (context) =>
                                      ConditionalBuilder(
                                        condition: cubit.offline_DashboardData.isEmpty || cubit.connnection,
                                        builder: (context){
                                          print('display online dashboard');

                                          return Expanded(
                                          child: Container(

                                            child: GlassBoxWithBorder_Gradiant2(
                                                widget: Container(
                                                    width: double.infinity,
                                                    height: double.infinity,
                                                    child: ConditionalBuilder(
                                                      condition:
                                                      cubit.list_D.isNotEmpty,
                                                      builder: (context) =>
                                                          CarouselSlider(
                                                            items: cubit.list_D,
                                                            options: CarouselOptions(
                                                              height: double.infinity,
                                                              viewportFraction: 1,
                                                              initialPage: 0,
                                                              enableInfiniteScroll: true,
                                                              reverse: false,
                                                              autoPlay: true,
                                                              autoPlayInterval:
                                                              const Duration(
                                                                  seconds: 3),
                                                              autoPlayAnimationDuration:
                                                              const Duration(
                                                                  seconds: 1),
                                                              autoPlayCurve:
                                                              Curves.fastOutSlowIn,
                                                              scrollDirection:
                                                              Axis.horizontal,
                                                            ),
                                                          ),
                                                      fallback: (context) =>
                                                          Center(
                                                            child: CircularProgressIndicator(
                                                              color: Colors.blueGrey
                                                                  .withOpacity(.4),
                                                            ),
                                                          ),
                                                    )),
                                                BorderWidth: .5,
                                                BorderColor:
                                                Colors.black.withOpacity(.7),
                                                color: Colors.white.withOpacity(.2),
                                                borderRadius: 20,
                                                x: 0,
                                                y: 0),
                                          ),
                                        );
                                        },

                                        fallback: (context) {
                                          print('display offline dashboard');
                                          cubit.offline_DashboardData[0];
                                          return Expanded(
                                          child: Container(
                                            child: GlassBoxWithBorder_Gradiant2(
                                                widget: Container(
                                                    width: double.infinity,
                                                    height: double.infinity,
                                                    child:  CarouselSlider(
                                                      items: cubit.offline_DashboardData,
                                                      options: CarouselOptions(
                                                        height: double.infinity,
                                                        viewportFraction: 1,
                                                        initialPage: 0,
                                                        enableInfiniteScroll: true,
                                                        reverse: false,
                                                        autoPlay: true,
                                                        autoPlayInterval:
                                                        const Duration(seconds: 3),
                                                        autoPlayAnimationDuration:
                                                        const Duration(seconds: 1),
                                                        autoPlayCurve:
                                                        Curves.fastOutSlowIn,
                                                        scrollDirection:
                                                        Axis.horizontal,
                                                      ),
                                                    ),),
                                                BorderWidth: .5,
                                                BorderColor:
                                                Colors.black.withOpacity(.7),
                                                color: Colors.white.withOpacity(.2),
                                                borderRadius: 20,
                                                x: 0,
                                                y: 0),
                                          ),
                                        );}
                                      ),
                                  fallback: (context) => Expanded(
                                    child: Container(
                                      child: GlassBoxWithBorder_Gradiant2(
                                          widget: Container(
                                              width: double.infinity,
                                              height: double.infinity,
                                              child: ConditionalBuilder(
                                                condition:
                                                    cubit.list_D_ins.isNotEmpty,
                                                builder: (context) =>
                                                    CarouselSlider(
                                                      items: cubit.list_D_ins,
                                                      options: CarouselOptions(
                                                        height: double.infinity,
                                                        viewportFraction: 1,
                                                        initialPage: 0,
                                                        enableInfiniteScroll: true,
                                                        reverse: false,
                                                        autoPlay: true,
                                                        autoPlayInterval:
                                                        const Duration(seconds: 3),
                                                        autoPlayAnimationDuration:
                                                        const Duration(seconds: 1),
                                                        autoPlayCurve:
                                                        Curves.fastOutSlowIn,
                                                        scrollDirection:
                                                        Axis.horizontal,
                                                      ),
                                                    ),
                                                fallback: (context) =>
                                                    Center(
                                                      child: CircularProgressIndicator(
                                                                                                        color: Colors.blueGrey
                                                        .withOpacity(.4),
                                                                                                      ),
                                                    ),
                                              )),
                                          BorderWidth: .5,
                                          BorderColor:
                                              Colors.black.withOpacity(.7),
                                          color: Colors.white.withOpacity(.2),
                                          borderRadius: 20,
                                          x: 0,
                                          y: 0),
                                    ),
                                  ),
                                ),

                                // Expanded(
                                //   child: CarouselSlider(
                                //     items:listwidget,
                                //     options: CarouselOptions(
                                //       height: double.infinity,
                                //       viewportFraction: 1,
                                //       initialPage: 0,
                                //       enableInfiniteScroll: true,
                                //       reverse: false,
                                //       autoPlay: true,
                                //       autoPlayInterval: const Duration(seconds: 2),
                                //       autoPlayAnimationDuration: const Duration(seconds: 1),
                                //       autoPlayCurve: Curves.fastOutSlowIn,
                                //       scrollDirection: Axis.horizontal,
                                //     ),
                                //   ),
                                // ),
                                SizedBox(
                                  width: 10,
                                ),

                                Expanded(
                                  child: GlassBoxWithBorder_Gradiant2(
                                      widget: Container(
                                        width: double.infinity,
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Container(
                                            child: SfCircularChart(
                                                title:
                                                    ChartTitle(text: 'Great !'),
                                                legend: Legend(
                                                    isVisible: true,
                                                    padding: 5,
                                                    itemPadding: 3,
                                                    height: '120'),
                                                backgroundColor:
                                                    Colors.transparent,
                                                borderColor: Colors.transparent,
                                                palette: [
                                                  Colors.green[300]!,
                                                  Colors.deepPurple[300]!,
                                                  Colors.red[300]!,
                                                  Colors.cyan[300]!,
                                                ],
                                                tooltipBehavior:
                                                    TooltipBehavior(
                                                  color: Colors.blue,
                                                ),
                                                margin: EdgeInsets.zero,
                                                series: <RadialBarSeries<
                                                    _PieData, String>>[
                                                  RadialBarSeries<_PieData,
                                                          String>(

                                                      // explode: true,
                                                      // explodeIndex: 0,
                                                      gap: '2',
                                                      radius: '50',
                                                      name: '5',
                                                      innerRadius: '15',
                                                      cornerStyle:
                                                          CornerStyle.bothCurve,
                                                      opacity: 1,
                                                      useSeriesColor: false,
                                                      trackColor:
                                                          Colors.blueGrey,
                                                      trackBorderColor:
                                                          Colors.transparent,
                                                      trackOpacity: .1,
                                                      strokeColor:
                                                          Colors.transparent,
                                                      maximumValue: 100,
                                                      trackBorderWidth: 3,
                                                      strokeWidth: 3,
                                                      enableTooltip: true,
                                                      sortingOrder: SortingOrder
                                                          .ascending,
                                                      dataSource: pieData,
                                                      xValueMapper:
                                                          (_PieData data, _) =>
                                                              data.xData,
                                                      yValueMapper:
                                                          (_PieData data, _) =>
                                                              data.yData,
                                                      dataLabelMapper:
                                                          (_PieData data, _) =>
                                                              data.text,
                                                      dataLabelSettings:
                                                          DataLabelSettings(
                                                              isVisible: false,
                                                              color:
                                                                  Colors.teal,
                                                              opacity: .3)),
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
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 55,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          fallback: (context) {
              return Center(child: CircularProgressIndicator());
          }
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

class _PieData {
  _PieData(this.xData, this.yData, [this.text]);
  final String xData;
  final num yData;
  String? text;
}
