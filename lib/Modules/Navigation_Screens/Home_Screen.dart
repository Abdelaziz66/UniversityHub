import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rive/rive.dart';
import 'package:university_hup/Shared/Component/component.dart';
import 'package:university_hup/Shared/Cubit/App_cubit.dart';
import 'package:university_hup/Shared/Cubit/App_state.dart';
import 'package:university_hup/Shared/constant.dart';

class Home_screen extends StatelessWidget {
  const Home_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit, App_state>(
      listener: (context, state) => {},
      builder: (context, state) {
        App_cubit cubit = App_cubit.get(context);
        List<bool> image = [true, false, false, true, true, false, true, false];
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Column(
                children: [
                  Spacer(),
                  Container(
                    height: 600,
                    child: RiveAnimation.asset(
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
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6.0),
                          child: Container(
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0, vertical: 15),
                                    child: Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                             Text(
                                              'Hi, Name Here !',
                                              style:Theme.of(context).textTheme.bodyText1?.copyWith(
                                                fontSize: 25
                                              ),

                                              // TextStyle(
                                              //   fontWeight: FontWeight.w700,
                                              //   fontSize: 25,
                                              //   color: Colors.black,
                                              // ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              'Time Line Here.',
                                              style:Theme.of(context).textTheme.subtitle1?.copyWith(

                                               ),


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
                                        Spacer(),
                                        Container(
                                          decoration: BoxDecoration(
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
                                                padding:
                                                    const EdgeInsets.all(7.0),
                                                child: CircleAvatar(
                                                  radius: 8,
                                                  backgroundColor: Colors.green,
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
                        ),
                        ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,

                          // physics: ,
                          itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Post(image: image[index],context: context),
                          ),
                          separatorBuilder: (context, index) => Container(
                            height: 0,
                            color: Colors.transparent,
                          ),
                          itemCount: 8,
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
