

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:universityhup/Layout/LayoutScreen.dart';

import 'package:universityhup/Modules/LandScape/ResetPasswoed/ForgetPasswordCodeScreen.dart';
import 'package:universityhup/Shared/Cons_widget.dart';
import 'package:universityhup/Shared/Cubit/App_cubit.dart';
import 'package:universityhup/Shared/Cubit/App_state.dart';
import 'package:universityhup/Shared/constant.dart';


class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordScreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<ForgetPasswordScreen> {
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
                            Row(children: [
                              IconButton(onPressed: (){Navigator.pop(context);}, icon:  FaIcon(FontAwesomeIcons.angleLeft,size: 30,),),
                              Spacer(),
                            ],),
                            const SizedBox(height: 10,),
                            Container(
                              alignment: AlignmentDirectional.center,
                              child: CircleAvatar(
                                radius:130,
                                backgroundColor: Colors.black.withOpacity(.0),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Image.asset(
                                    'assets/images/forgetpassword.png',
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Text(
                                'Reset Password !',
                                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontSize: 35
                                )
                            ),
                            const SizedBox(
                              height: 15,
                            ),

                            Text(
                                'Enter your email to reset your password',textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.bodySmall?.copyWith(
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
                            Container(
                              alignment: Alignment.center,
                              height: 70,
                              decoration: BoxDecoration(
                                // border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(18),
                                color: Colors.blueGrey.withOpacity(.1),
                              ),
                              child: Padding(
                                padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                                child: TextFormField(
                                  controller: emailcontroller,
                                  keyboardType: TextInputType.emailAddress,
                                  onFieldSubmitted: (value) {
                                    print(value);
                                  },
                                  onChanged: (value) {
                                    print(value);
                                  },
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Email can\'t be empty';
                                    }
                                    return null;
                                  },
                                  // toolbarOptions:
                                  //     ToolbarOptions(paste: true, copy: true),
                                  cursorColor: c1,
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  decoration: InputDecoration(

                                    prefixIcon: Icon(
                                      Icons.email,
                                      color: c1,
                                      size: 25,
                                    ),
                                    hintText: ' Email',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),

                            Default_Button(

                              onPressed: (){
                                print('token from send  ----- $token');

                                Navigator.push(context, MaterialPageRoute(builder: (context) => ForgetPasswordCodeScreen(),));


                              },
                              text:'Send',
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
