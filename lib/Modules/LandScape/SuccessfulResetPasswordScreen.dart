

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:university_hup/Layout/LayoutScreen.dart';
import 'package:university_hup/Modules/LandScape/ForgetPasswordScreen.dart';
import 'package:university_hup/Modules/LandScape/LoginScreen.dart';
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
                  child: SingleChildScrollView(
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
                              // Padding(
                              //   padding: const EdgeInsets.only(right: 15.0, top: 30),
                              //   child: Row(
                              //       mainAxisAlignment: MainAxisAlignment.center,
                              //       crossAxisAlignment: CrossAxisAlignment.center,
                              //       children: [
                              //         Text(
                              //           'E ',
                              //           style: TextStyle(
                              //               color: Colors.blue,
                              //               fontSize: 22,
                              //               fontWeight: FontWeight.bold),
                              //         ),
                              //         Text(
                              //           'D U T',
                              //           style: TextStyle(
                              //               color: Colors.black,
                              //               fontSize: 22,
                              //               fontWeight: FontWeight.bold),
                              //         ),
                              //         Text(
                              //           ' E ',
                              //           style: TextStyle(
                              //               color: Colors.blue,
                              //               fontSize: 22,
                              //               fontWeight: FontWeight.bold),
                              //         ),
                              //         Text(
                              //           'C H ',
                              //           style: TextStyle(
                              //               color: Colors.black,
                              //               fontSize: 22,
                              //               fontWeight: FontWeight.bold),
                              //         ),
                              //       ]),
                              // ),
                              Text(
                                  'Your Password has been successfully change and you can now begin your user experience',textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.subtitle1?.copyWith(
                                      fontSize: 25
                                  )
                                // TextStyle(
                                //   fontSize:25,
                                //   color: Colors.black87,
                                // ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),


                              const SizedBox(
                                height: 15,
                              ),
                              Default_Button(

                                onPressed: (){




                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => loginscreen(),
                                        ));

                                },
                                text:'Next',
                              ),
                              // Container(
                              //   width: double.infinity,
                              //   height: 70,
                              //   decoration: BoxDecoration(
                              //     borderRadius: BorderRadius.circular(25),
                              //     color: Colors.blue,
                              //   ),
                              //   child: TextButton(
                              //     onPressed: () {
                              //       if (formkey.currentState!.validate()) {
                              //         print(emailcontroller.text);
                              //         print(passwordcontroller.text);
                              //       } else {
                              //         Navigator.push(
                              //             context,
                              //             MaterialPageRoute(
                              //               builder: (context) => Layout_Screen(),
                              //             ));
                              //       }
                              //     },
                              //     child: Text(
                              //       'Sign in',
                              //       style: TextStyle(
                              //         color: Colors.white,
                              //         fontWeight: FontWeight.bold,
                              //         fontSize: 25,
                              //       ),
                              //     ),
                              //   ),
                              // ),

                            ],
                          ),
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
