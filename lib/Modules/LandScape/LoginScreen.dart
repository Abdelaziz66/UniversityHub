import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rive/rive.dart';
import 'package:university_hup/Layout/LayoutScreen.dart';
import 'package:university_hup/Shared/Cubit/App_cubit.dart';
import 'package:university_hup/Shared/Cubit/App_state.dart';
import 'package:university_hup/Shared/constant.dart';
import 'package:university_hup/Shared/remote/DioHelper.dart';

import '../../Shared/Cons_widget.dart';
import 'ForgetPasswordScreen.dart';

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
                    child: SizedBox(),
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
                              SizedBox(
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
                                      'assets/images/login.png',
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Text(
                                  'Wellcome !',
                                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                                      fontSize: 35
                                  )
                              ),
                              SizedBox(
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
                                  'You can login here',
                                  style: Theme.of(context).textTheme.subtitle1?.copyWith(
                                      fontSize: 25
                                  )
                                // TextStyle(
                                //   fontSize:25,
                                //   color: Colors.black87,
                                // ),
                              ),
                              SizedBox(
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
                                  borderRadius: BorderRadius.circular(18),
                                  color:Colors.blueGrey.withOpacity(0.1),
                                  //HexColor('D8E1E8FF'),
                                ),
                                child: Padding(
                                  padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
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
                                            builder: (context) => ForgetPasswordScreen(),
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
                              Default_Button(

                                onPressed: (){
                                  cubit.UserLogin(
                                      email: 'abdulmajeedsallam@gmail.com',
                                      password: 'P@ssw0rd');

                                  if (formkey.currentState!.validate()) {
                                    print(emailcontroller.text);
                                    print(passwordcontroller.text);
                                  } else {

                                    // Dio_Helper.PostData(
                                    //     url: 'https://crudapi20240209215103.azurewebsites.net/api/Account/logins',
                                    //     data: {
                                    //       'email':'abdulmajeedsallam@gmail.com',
                                    //       'password' : 'P@ssw0rd',
                                    //     }).then((value) {
                                    //       print(value.data);
                                    // }).catchError((error){
                                    //   print('error ${error.toString()}');
                                    // });



                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Layout_Screen(),
                                        ));
                                  }
                                },
                                text:'Sign in',
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
