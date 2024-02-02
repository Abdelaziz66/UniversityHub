import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:university_hup/Layout/LayoutScreen.dart';
import 'package:university_hup/Shared/constant.dart';



class loginscreen extends StatefulWidget {
  const loginscreen({Key? key}) : super(key: key);

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  var emailcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();
  var formkey = GlobalKey<FormState>();
  bool passwordcheck = false;
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
          Positioned(
            width: MediaQuery.of(context).size.width *2,
            left: -200,
            bottom: -350,

            child: Image.asset(
              'assets/images/Spline.png',

            ),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 0,
                sigmaY: 0,
              ),
              child: SizedBox(),
            ),
          ),
          // RiveAnimation.asset(
          //   "assets/riveassets/shapes.riv",
          // ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 100, sigmaY:100),
              child: SizedBox(),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Form(
                  key: formkey,
                  child: Column(

                    children: [
                      SizedBox(
                        height: 60,
                      ),
                      Container(
                        alignment: AlignmentDirectional.center,
                        child: CircleAvatar(
                          radius: 120,

                          backgroundColor: Colors.black.withOpacity(.08),
                          child: Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Image.asset(
                              'assets/images/3.png',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Hello Again!',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Wellcome back you\'ve \n         been missed!',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),

                      Container(
                        alignment: Alignment.center,
                        height: 70,
                        decoration: BoxDecoration(
                          // border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.blueGrey.withOpacity(.1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
                            style: TextStyle(
                              fontSize: 25,
                            ),
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.email,
                                color: c1,
                                size: 30,
                              ),
                              hintText: 'email',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 70,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.blueGrey.withOpacity(.1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: TextFormField(
                            controller: passwordcontroller,
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: passwordcheck ? false : true,
                            onFieldSubmitted: (value) {
                              print(value);
                            },
                            onChanged: (value) {
                              print(value);
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Password can\'t be empty';
                              } else
                                return null;
                            },
                            cursorColor: c1,
                            style: TextStyle(fontSize: 25),
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.lock_rounded,
                                color: c1,
                                size: 30,
                              ),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    passwordcheck = !passwordcheck;
                                  });
                                },
                                icon: Icon(
                                  passwordcheck
                                      ? Icons.remove_red_eye
                                      : Icons.visibility_off,
                                  color: c1,
                                  size: 30,
                                ),
                              ),
                              hintText: 'password',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Layout_Screen(),
                                  ));
                            },
                            child: Text(
                              'Forget Password ?',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: c1,
                        ),
                        child: TextButton(
                          onPressed: () {
                            if (formkey.currentState!.validate()) {
                              print(emailcontroller.text);
                              print(passwordcontroller.text);
                            }
                            else{
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Layout_Screen(),));
                            }
                          },
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                              color: Colors.grey[300],
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                      // SizedBox(
                      //   height: 50,
                      // ),
                      // Row(
                      //   children: [
                      //     Expanded(
                      //       child: Padding(
                      //         padding: const EdgeInsets.only(right: 25),
                      //         child: Container(
                      //           height: 3,
                      //           width: 150,
                      //           decoration: BoxDecoration(
                      //               // gradient: LinearGradient(
                      //               //   colors: [
                      //               //     Colors.white12,
                      //               //     Colors.grey,
                      //               //
                      //               //
                      //               //   ],
                      //               //   begin: Alignment.centerLeft,
                      //               //   end: Alignment.centerRight,
                      //               // ),
                      //               ),
                      //         ),
                      //       ),
                      //     ),
                      //     // Container(
                      //     //   child: Text(
                      //     //     ' Or continue with',
                      //     //     style: TextStyle(
                      //     //       fontSize: 18,
                      //     //       fontWeight: FontWeight.w500,
                      //     //       color: Colors.grey[700],
                      //     //     ),
                      //     //   ),
                      //     // ),
                      //     // Expanded(
                      //     //   child: Padding(
                      //     //     padding: const EdgeInsets.only(left: 25),
                      //     //     child: Container(
                      //     //       height: 3,
                      //     //       width: 150,
                      //     //       decoration: BoxDecoration(
                      //     //           // gradient: LinearGradient(
                      //     //           //             colors: [
                      //     //           //
                      //     //           //               Colors.grey,
                      //     //           //               Colors.white12,
                      //     //           //
                      //     //           //             ],
                      //     //           //           begin: Alignment.centerLeft,
                      //     //           //           end: Alignment.centerRight,
                      //     //           //         ),
                      //     //           ),
                      //     //     ),
                      //     //   ),
                      //     // ),
                      //   ],
                      // ),
                      // SizedBox(
                      //   height: 25,
                      // ),
                      // Row(
                      //   children: [
                      //     Expanded(
                      //       child: Padding(
                      //         padding: const EdgeInsets.all(10),
                      //         child: GestureDetector(
                      //           child: Container(
                      //             decoration: BoxDecoration(
                      //               border: Border.all(
                      //                   color: Colors.white70, width: 3),
                      //               borderRadius: BorderRadius.circular(12),
                      //             ),
                      //             child: Padding(
                      //               padding: const EdgeInsets.all(20),
                      //               child: Icon(
                      //                 Icons.attach_email,
                      //                 size: 35,
                      //                 color: Colors.pink,
                      //               ),
                      //             ),
                      //           ),
                      //         ),
                      //       ),
                      //     ),
                      //     Expanded(
                      //       child: Padding(
                      //         padding: const EdgeInsets.all(10),
                      //         child: GestureDetector(
                      //           child: Container(
                      //             decoration: BoxDecoration(
                      //               border: Border.all(
                      //                   color: Colors.white70, width: 3),
                      //               borderRadius: BorderRadius.circular(12),
                      //             ),
                      //             child: Padding(
                      //               padding: const EdgeInsets.all(20),
                      //               child: Icon(
                      //                 Icons.apple,
                      //                 size: 39,
                      //                 color: Colors.black,
                      //               ),
                      //             ),
                      //           ),
                      //         ),
                      //       ),
                      //     ),
                      //     Expanded(
                      //       child: Padding(
                      //         padding: const EdgeInsets.all(10),
                      //         child: GestureDetector(
                      //           child: Container(
                      //             decoration: BoxDecoration(
                      //               border: Border.all(
                      //                   color: Colors.white70, width: 3),
                      //               borderRadius: BorderRadius.circular(12),
                      //             ),
                      //             child: Padding(
                      //               padding: const EdgeInsets.all(20),
                      //               child: Icon(
                      //                 Icons.facebook,
                      //                 size: 35,
                      //                 color: Colors.blue,
                      //               ),
                      //             ),
                      //           ),
                      //         ),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      // SizedBox(
                      //   height: 10,
                      // ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     Text(
                      //       'Not a member?',
                      //       style: TextStyle(
                      //         fontSize: 18,
                      //         fontWeight: FontWeight.w500,
                      //         color: Colors.grey[700],
                      //       ),
                      //     ),
                      //     TextButton(
                      //       onPressed: () {
                      //         Navigator.push(
                      //             context,
                      //             MaterialPageRoute(
                      //               builder: (context) => Layout_Screen(),
                      //             ));
                      //       },
                      //       child: Text(
                      //         'Register Now ?',
                      //         style: TextStyle(
                      //           fontSize: 18,
                      //           fontWeight: FontWeight.w500,
                      //           color: Colors.blue,
                      //         ),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
