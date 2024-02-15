import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:university_hup/Modules/LandScape/LoginScreen.dart';


import 'package:university_hup/Shared/constant.dart';


import '../../Layout/Switch_Screen.dart';
import '../../Shared/Cons_widget.dart';

class LandScape_Screen extends StatelessWidget {
  LandScape_Screen({Key? key}) : super(key: key);
  bool islast = false;

  var LandScape_controller = PageController();
  List LandScape_index = [
    0,
    1,
    2,
  ];
  List LandScape_Text1 = [
    'Access Material easy',
    'Events and News',
    'Access material offline',
  ];
  List LandScape_Text2 = [
    'Courses, tasks, quizzes \n and calendar',
    'Timeline contain Posts about events and news',
    'Last Lectures, labs and assignments',
  ];

  List LandScape_Image = [
    'w2.png',
    'w1.png',
    '3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: c5,
      body: Stack(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: 100,
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
          // Positioned(
          //   width: MediaQuery.of(context).size.width *2,
          //   left: -200,
          //   bottom: -350,
          //
          //   child: Image.asset(
          //     'assets/images/Spline.png',
          //
          //   ),
          // ),
          // Positioned.fill(
          //   child: BackdropFilter(
          //     filter: ImageFilter.blur(
          //       sigmaX: 0,
          //       sigmaY: 0,
          //     ),
          //     child: SizedBox(),
          //   ),
          // ),
          // RiveAnimation.asset(
          //   "assets/riveassets/shapes.riv",
          // ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
              child: const SizedBox(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 5,
                  child: PageView.builder(
                    itemBuilder: (context, index) => Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Spacer(
                          flex: 2,
                        ),
                        Container(
                          alignment: AlignmentDirectional.center,
                          child: CircleAvatar(
                            radius: 150,
                            backgroundColor: Colors.black.withOpacity(.0),
                            child: Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Image.asset(
                                'assets/images/${LandScape_Image[index]}',
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Text(
                              textAlign: TextAlign.center,
                              '${LandScape_Text1[index]}',
                              style: Theme.of(context).textTheme.bodyText1),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Text('${LandScape_Text2[index]}',
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.subtitle1),
                        ),
                        const Spacer(
                          flex: 2,
                        ),
                      ],
                    ),
                    physics: const BouncingScrollPhysics(),
                    onPageChanged: (index) {
                      if (index == 2) {
                        islast = true;
                      } else {
                        islast = false;
                      }
                    },
                    controller: LandScape_controller,
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      SmoothPageIndicator(
                          controller: LandScape_controller,
                          effect: ExpandingDotsEffect(
                            dotColor: Colors.grey.withOpacity(.5),
                            activeDotColor: Colors.blue,
                            dotHeight: 10,
                            dotWidth: 10,
                            spacing: 5,
                            expansionFactor: 4,
                          ),
                          count: 3),
                      const SizedBox(height: 40),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                        Default_Button(
                          textFontSize: 30,
                          onPressed: () {
                            if (islast) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Switch_screen()));
                            } else {
                              LandScape_controller.nextPage(
                                duration: const Duration(
                                  milliseconds: 750,
                                ),
                                curve: Curves.fastLinearToSlowEaseIn,
                              );
                            }
                          },
                          text: 'Next',
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
    );
  }
}
