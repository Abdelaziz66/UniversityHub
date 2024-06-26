import 'dart:ui';

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:rive/rive.dart';
import 'package:university_hup/Models/All_News/AllNewsModel.dart';
import 'package:university_hup/Shared/Component/component.dart';
import 'package:university_hup/Shared/Cubit/App_cubit.dart';
import 'package:university_hup/Shared/Cubit/App_state.dart';
import 'package:university_hup/Shared/constant.dart';

class Home_screen extends StatelessWidget {
  Home_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit, App_state>(
      listener: (context, state) {

      },
      builder: (context, state) {
        App_cubit cubit = App_cubit.get(context);
        List<bool> image = [true, false, true, false,false ];
        List<GetAllNewsModel> news = cubit.allNewsModel;
        return Scaffold(
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
                filter: ImageFilter.blur(sigmaX: 120, sigmaY: 120),
                child: const SizedBox(),
              )),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25.0, vertical: 6),
                          child: Container(
                            width: double.infinity,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          rol == 'Student'
                                              ? 'News & events !'
                                              : 'News & events !',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1
                                              ?.copyWith(fontSize: 23),

                                          // TextStyle(
                                          //   fontWeight: FontWeight.w700,
                                          //   fontSize: 25,
                                          //   color: Colors.black,
                                          // ),
                                        ),
                                        // const SizedBox(
                                        //   height: 5,
                                        // ),
                                        Text(
                                          'Time Line Here.',
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle1
                                              ?.copyWith(fontSize: 18),

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
                                    // const Spacer(),
                                    SizedBox(
                                      width: 40,
                                    ),

                                    Expanded(
                                      child: Container(
                                        height: 100,
                                        width: 100,
                                        // child: Image.asset(
                                        //   'assets/images/n7.png',
                                        // ),
                                      ),
                                    ),
                                    // Container(
                                    //   decoration: const BoxDecoration(
                                    //     shape: BoxShape.circle,
                                    //   ),
                                    //   child: const Stack(
                                    //     alignment:
                                    //         AlignmentDirectional.bottomEnd,
                                    //     children: [
                                    //       CircleAvatar(
                                    //         radius: 50,
                                    //         backgroundColor: Colors.blue,
                                    //         backgroundImage: AssetImage(
                                    //             'assets/images/avatar1.png'),
                                    //       ),
                                    //       Padding(
                                    //         padding:
                                    //             EdgeInsets.all(7.0),
                                    //         child: CircleAvatar(
                                    //           radius: 8,
                                    //           backgroundColor: Colors.green,
                                    //         ),
                                    //       ),
                                    //     ],
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        ConditionalBuilder(
                          condition:cubit.allNEWSFromHIVE.isEmpty || cubit.connnection,
                          builder: (context) {
                            print('Display online list');
                            return  ListView.separated(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,

                              // physics: ,
                              itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Post(
                                    image: image[index],
                                    context: context,
                                    news: news[index]),
                              ),
                              separatorBuilder: (context, index) => Container(
                                height: 0,
                                color: Colors.transparent,
                              ),
                              itemCount: news.length,
                              // itemCount:connection==true? news.length:cubit.newsmodel.length,
                            );
        },
                          fallback: (context) {
                            print('Display offline list');
                            return ListView.separated(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,

                              // physics: ,
                              itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Post(
                                    image: image[index],
                                    context: context,
                                    news: cubit.allNEWSFromHIVE[index]),
                              ),
                              separatorBuilder: (context, index) => Container(
                                height: 0,
                                color: Colors.transparent,
                              ),
                              itemCount: cubit.allNEWSFromHIVE.length,
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
