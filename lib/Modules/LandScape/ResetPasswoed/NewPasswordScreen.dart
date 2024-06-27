

import 'dart:ui';

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:university_hup/Modules/LandScape/ResetPasswoed/SuccessfulResetPasswordScreen.dart';

import 'package:university_hup/Shared/Cons_widget.dart';
import 'package:university_hup/Shared/Cubit/App_cubit.dart';
import 'package:university_hup/Shared/Cubit/App_state.dart';
import 'package:university_hup/Shared/constant.dart';


class NewPasswordScreen extends StatelessWidget {
  NewPasswordScreen({Key? key}) ;

  var oldPasscontroller = TextEditingController();
  var newPasscontroller = TextEditingController();
  var formkey6 = GlobalKey<FormState>();
  bool oldpasswordcheck = false;
  bool newpasswordcheck = false;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit,App_state>(
        listener: (context,state){
          if(state is Stu_Reset_Pass_SuccessState){
            if(state.statusCode==200){
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      SuccessfulResetPasswordScreen(),
                ));
            }
          }
        },
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
                          key: formkey6,
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
                                      'assets/images/newpassword.png',
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              Text(
                                  'Reset password',textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                                      fontSize: 35
                                  )
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                  'Enter New Password',
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
                                    controller: oldPasscontroller,
                                    keyboardType: TextInputType.visiblePassword,
                                    obscureText: oldpasswordcheck ? false : true,
                                    onFieldSubmitted: (value) {
                                      print(value);
                                    },

                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Password can\'t be empty';
                                      } else
                                        return null;
                                    },
                                    cursorColor: c1,
                                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500,),
                                    textAlign: TextAlign.left,
                                    textAlignVertical: TextAlignVertical.center,

                                    decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.password,
                                        color: c1,
                                        size: 25,
                                      ),
                                      suffixIcon: IconButton(
                                        onPressed: () {
                                            oldpasswordcheck = !oldpasswordcheck;
                                        },
                                        icon: Icon(
                                          oldpasswordcheck
                                              ? Icons.remove_red_eye
                                              : Icons.visibility_off,
                                          color: c1,
                                          size: 25,
                                        ),
                                      ),
                                      hintText: ' Old Password',
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
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
                                    controller: newPasscontroller,
                                    keyboardType: TextInputType.visiblePassword,
                                    obscureText: newpasswordcheck ? false : true,
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
                                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500,),
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.password,
                                        color: c1,
                                        size: 25,
                                      ),
                                      suffixIcon: IconButton(
                                        onPressed: () {
                                            newpasswordcheck = !newpasswordcheck;
                                        },
                                        icon: Icon(
                                          newpasswordcheck
                                              ? Icons.remove_red_eye
                                              : Icons.visibility_off,
                                          color: c1,
                                          size: 25,
                                        ),
                                      ),
                                      hintText: ' New Password',
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              ConditionalBuilder(
                                condition: state is! Stu_Reset_Pass_LoadingState,
                                builder:(context)=> Default_Button(
                                  onPressed: (){
                                    if(formkey6.currentState!.validate()) {
                                      cubit.resetPass(
                                        context: context
                                          ,
                                          oldPass: oldPasscontroller.text,
                                          newPass: newPasscontroller.text);

                                    }
                                    print('token from reset  ----- $token');

                                  },
                                  text:'Submit',
                                ),
                                fallback: (context)=>CircularProgressIndicator(),
                              ),

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
