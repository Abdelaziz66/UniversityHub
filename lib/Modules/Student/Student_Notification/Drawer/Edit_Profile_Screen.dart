import 'dart:ui';

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rive/rive.dart';

import 'package:university_hup/Modules/LandScape/ResetPasswoed/ForgetPasswordScreen.dart';
import 'package:university_hup/Shared/Component/component.dart';
import 'package:university_hup/Shared/Cons_widget.dart';
import 'package:university_hup/Shared/Cubit/App_cubit.dart';
import 'package:university_hup/Shared/Cubit/App_state.dart';
import 'package:university_hup/Shared/constant.dart';
import 'package:university_hup/Shared/remote/DioHelper.dart';

class Edit_Profile_screen extends StatelessWidget {
  const Edit_Profile_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit, App_state>(
      listener: (context, state) => {},
      builder: (context, state) {
        App_cubit cubit = App_cubit.get(context);
        return Scaffold(
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
                    filter: ImageFilter.blur(sigmaX: 135, sigmaY: 135),
                    child: const SizedBox(),
                  )),
              SafeArea(
                child: ConditionalBuilder(
                  condition: true,
                  builder: (context) => Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      defaultAppbar(context: context, text: 'Edit Profile'),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              width: 5,
                            ),
                            Stack(
                              alignment: AlignmentDirectional.bottomCenter,
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child:  Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: CircleAvatar(
                                      radius: 85,
                                      backgroundColor: Colors.blueGrey.withOpacity(.3),
                                      child: CircleAvatar(

                                        radius: 80,
                                        backgroundColor: Colors.white,
                                        backgroundImage:
                                        AssetImage('assets/images/profile.png'),
                                      ),
                                    ),
                                  ),
                                ),
                                FaIcon(
                                  Icons.camera_alt_outlined,
                                  color: Colors.blue.withOpacity(1),size: 30,
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Text(
                          'Name Here',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 16,
                            color: c1,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30.0,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.transparent,
                              border: Border.all(color: Colors.black, width: 0)),
                          alignment: AlignmentDirectional.topStart,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              children: [

                                const FaIcon(
                                  FontAwesomeIcons.solidUser,
                                  size: 25,
                                  color: Colors.black,
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'Change User Name',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: c1,
                                  ),
                                ),
                                const Spacer(),
                                const FaIcon(
                                  FontAwesomeIcons.circleChevronRight,
                                  size: 25,
                                  color: Colors.black,
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30.0,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.transparent,
                              border: Border.all(color: Colors.black, width: 0)),
                          alignment: AlignmentDirectional.topStart,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              children: [

                                const FaIcon(
                                  FontAwesomeIcons.solidEnvelope,
                                  size: 25,
                                  color: Colors.black,
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'Change Email',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: c1,
                                  ),
                                ),
                                const Spacer(),
                                const FaIcon(
                                  FontAwesomeIcons.circleChevronRight,
                                  size: 25,
                                  color: Colors.black,
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30.0,
                        ),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      ForgetPasswordScreen(),
                                ));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.transparent,
                                border: Border.all(color: Colors.black, width: 0)),
                            alignment: AlignmentDirectional.topStart,
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                children: [

                                  const FaIcon(
                                    FontAwesomeIcons.key,
                                    size: 25,
                                    color: Colors.black,
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'Change Password',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: c1,
                                    ),
                                  ),
                                  const Spacer(),
                                  const FaIcon(
                                    FontAwesomeIcons.circleChevronRight,
                                    size: 25,
                                    color: Colors.black,
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  fallback: (context) => const Center(child: CircularProgressIndicator()),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
