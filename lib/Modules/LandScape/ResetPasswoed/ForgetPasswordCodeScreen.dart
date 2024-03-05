

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'package:university_hup/Modules/LandScape/ResetPasswoed/NewPasswordScreen.dart';


import 'package:university_hup/Shared/Cons_widget.dart';
import 'package:university_hup/Shared/Cubit/App_cubit.dart';
import 'package:university_hup/Shared/Cubit/App_state.dart';
import 'package:university_hup/Shared/constant.dart';


class ForgetPasswordCodeScreen extends StatefulWidget {
  const ForgetPasswordCodeScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordCodeScreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<ForgetPasswordCodeScreen> {
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
                child: Column(
                  children: [
                    Expanded(
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
                                          'assets/images/code.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  Text(
                                      'Email verification !',
                                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                                          fontSize: 35
                                      )
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),

                                  Text(
                                      'Enter your code to reset your password',textAlign: TextAlign.center,
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
                                  // Container(
                                  //   alignment: Alignment.center,
                                  //   height: 70,
                                  //   decoration: BoxDecoration(
                                  //     // border: Border.all(color: Colors.white),
                                  //     borderRadius: BorderRadius.circular(18),
                                  //     color: Colors.blueGrey.withOpacity(.1),
                                  //   ),
                                  //   child: Padding(
                                  //     padding:
                                  //     const EdgeInsets.symmetric(horizontal: 8.0),
                                  //     child: TextFormField(
                                  //       controller: emailcontroller,
                                  //       keyboardType: TextInputType.number,
                                  //       onFieldSubmitted: (value) {
                                  //         print(value);
                                  //       },
                                  //       onChanged: (value) {
                                  //         print(value);
                                  //       },
                                  //       validator: (value) {
                                  //         if (value!.isEmpty) {
                                  //           return 'Code can\'t be empty';
                                  //         }
                                  //         return null;
                                  //       },
                                  //       // toolbarOptions:
                                  //       //     ToolbarOptions(paste: true, copy: true),
                                  //       cursorColor: c1,
                                  //       style: const TextStyle(
                                  //         fontSize: 20,
                                  //         fontWeight: FontWeight.w500,
                                  //       ),
                                  //       decoration: InputDecoration(
                                  //         prefixIcon: Icon(
                                  //           Icons.password,
                                  //           color: c1,
                                  //           size: 25,
                                  //         ),
                                  //         hintText: ' Code',
                                  //         border: InputBorder.none,
                                  //       ),
                                  //     ),
                                  //   ),
                                  // ),
                                  // const SizedBox(
                                  //   height: 15,
                                  // ),
                                  Form(
                                    // key: formKey,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10.0,
                                        horizontal: 20,
                                      ),
                                      child: PinCodeTextField(
                                        appContext: context,
                                        pastedTextStyle: TextStyle(
                                          color: Colors.transparent,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        length: 4,
                                        obscureText: false,
                                        obscuringCharacter: '*',
                                        // obscuringWidget: const FlutterLogo(
                                        //   size: 30,
                                        // ),
                                        blinkWhenObscuring: false,
                                        animationType: AnimationType.scale,
                                        backgroundColor: Colors.transparent,
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,

                                        validator: (v) {
                                          if (v!.length < 3) {
                                            return "Code can not be empty !";
                                          } else {
                                            return null;
                                          }
                                        },
                                        pinTheme: PinTheme(
                                          shape: PinCodeFieldShape.underline,
                                          borderRadius: BorderRadius.circular(15),

                                          selectedColor: Colors.blue,
                                          activeBorderWidth: 3,


                                          selectedBorderWidth: 2,

                                          fieldHeight: 55,
                                          fieldWidth: 55,
                                          activeFillColor: Colors.blue.withOpacity(.15),
                                          inactiveFillColor:  Colors.blueGrey.withOpacity(.15),
                                          selectedFillColor:   Colors.blueGrey.withOpacity(.15),
                                          activeColor:Colors.blue.withOpacity(1),
                                          inactiveColor: Colors.blue.withOpacity(.3),



                                        ),
                                        cursorColor: Colors.blue,
                                        animationDuration: const Duration(milliseconds: 300),
                                        enableActiveFill: true,
                                        // errorAnimationController: errorController,
                                        // controller: textEditingController,
                                        keyboardType: TextInputType.number,
                                        // boxShadows: const [
                                        //   BoxShadow(
                                        //     offset: Offset(0, 1),
                                        //     color: Colors.black12,
                                        //     blurRadius: 10,
                                        //   )
                                        // ],
                                        onCompleted: (v) {
                                          // debugPrint("Completed");
                                        },
                                        // onTap: () {
                                        //   print("Pressed");
                                        // },
                                        onChanged: (value) {
                                          // debugPrint(value);
                                          // setState(() {
                                          //   // currentText = value;
                                          // });
                                        },
                                        beforeTextPaste: (text) {
                                          // debugPrint("Allowing to paste $text");
                                          // //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                                          // //but you can show anything you want here, like your pop up saying wrong paste format or etc
                                          return true;
                                        },
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'The code will expire after 3:21',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black.withOpacity(.7),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
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
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0,bottom: 15,left: 15),
                      child: Default_Button(

                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => NewPasswordScreen(),));


                        },
                        text:'Next',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
