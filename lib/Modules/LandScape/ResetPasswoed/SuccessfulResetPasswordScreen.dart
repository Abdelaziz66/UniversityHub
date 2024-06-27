

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:university_hup/Layout/LayoutScreen.dart';


import 'package:university_hup/Modules/LandScape/Login/LoginScreen.dart';

import 'package:university_hup/Shared/Cons_widget.dart';
import 'package:university_hup/Shared/Cubit/App_cubit.dart';
import 'package:university_hup/Shared/Cubit/App_state.dart';
import 'package:university_hup/Shared/constant.dart';


class SuccessfulResetPasswordScreen extends StatefulWidget {
  const SuccessfulResetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<SuccessfulResetPasswordScreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<SuccessfulResetPasswordScreen> {
  var emailcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();
  var formkey = GlobalKey<FormState>();
  bool passwordcheck = false;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit,App_state>(
        listener: (context,state){},
       builder: (context,state){
          App_cubit cubit=App_cubit.get(context);
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
                //   width: MediaQuery.of(context).size.width * 2,
                //   left: -200,
                //   bottom: -350,
                //   child: Image.asset(
                //     'assets/images/Spline.png',
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
                SafeArea(
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Form(
                        key: formkey,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 40,
                            ),
                            Container(
                              alignment: AlignmentDirectional.center,
                              child: CircleAvatar(
                                radius:130,
                                backgroundColor: Colors.black.withOpacity(.0),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Image.asset(
                                    'assets/images/finishresetpassword.png',
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Text(
                                'Password Changed',textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                                    fontSize: 35
                                )
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                                'Your Password has been successfully changed',textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.subtitle1?.copyWith(
                                    fontSize: 20
                                )
                              // TextStyle(
                              //   fontSize:25,
                              //   color: Colors.black87,
                              // ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),

                            Spacer(),

                            Default_Button(

                              onPressed: (){




                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Layout_Screen(),
                                      ));

                              },
                              text:'Done',
                            ),


                          ],
                        ),
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
