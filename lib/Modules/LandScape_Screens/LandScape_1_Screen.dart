import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:university_hup/Modules/LandScape_Screens/LandScape_2_Screen.dart';
import 'package:university_hup/Modules/Login_Screens/LoginScreen.dart';
import 'package:university_hup/Shared/constant.dart';
import 'package:university_hup/Shared/constant.dart';



class LandScape_1 extends StatelessWidget {
   LandScape_1({Key? key}) : super(key: key);
   bool islast = false;

   var LandScape_controller = PageController();
  List LandScape_index = [
    0,1,2,
  ];
  List LandScape_Text1 = [
    'All lectures and videos',
    'Quizzes and tracking grades',
    'Access all Material easy',

  ];
   List LandScape_Text2 = [
     'All lectures, pdf and exams',
     'You can know the grades, lecture dates, and schedule',
     'courses,tasks,quizzes & calender',

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
              filter: ImageFilter.blur(sigmaX: 100, sigmaY:100),
              child: SizedBox(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 3,
                  child: PageView.builder(
                    itemBuilder: (context, index) => Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Spacer(flex: 2,),
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
                      SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Text(
                          textAlign: TextAlign.center,

                          '${LandScape_Text1[index]}',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                            color: c1,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Text(
                          '${LandScape_Text2[index]}',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: c1.withOpacity(.7),
                          ),
                        ),
                      ),
                      Spacer(),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.circle,
                            color: index==0?Colors.blue:Colors.black.withOpacity(.1),
                            size: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.circle,
                            color: index==1?Colors.blue:Colors.black.withOpacity(.1),
                            size: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.circle,
                            color: index==2?Colors.blue:Colors.black.withOpacity(.1),
                            size: 20,
                          ),
                        ],
                      ),
                      Spacer(),
                    ],
                  ),
                    physics: BouncingScrollPhysics(),
                    onPageChanged: (index) {
                      if (index ==  2) {
                          islast = true;
                      }
                      else{
                          islast = false;
                      }
                    },
                    controller: LandScape_controller,
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,



                  ),

                ),


                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 70,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(color: Colors.blue.withOpacity(1),width: 2.5,style: BorderStyle.solid),
                            color:Colors.blue,
                          ),
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextButton(
                              onPressed: () {
                                if(islast){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => loginscreen()));
                                }
                                else{
                                  LandScape_controller.nextPage(
                                    duration: Duration(
                                      milliseconds: 750,
                                    ),
                                    curve: Curves.fastLinearToSlowEaseIn,
                                  );
                                }

                              },
                              child: Text(
                                'Next',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: c5,
                                ),
                              ),
                            ),
                          ),
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
