import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:universityhup/Shared/Component/component.dart';
import 'package:universityhup/Shared/Cubit/App_cubit.dart';
import 'package:universityhup/Shared/Cubit/App_state.dart';
import 'package:universityhup/Shared/constant.dart';
import 'package:universityhup/Shared/remote/DioHelper.dart';

class INS_Edit_Profile_screen extends StatelessWidget {
  const INS_Edit_Profile_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit, App_state>(
      listener: (context, state) => {},
      builder: (context, state) {
        App_cubit cubit = App_cubit.get(context);
        return Scaffold(
          body: SafeArea(
            child: ConditionalBuilder(
              condition: true,
              builder: (context) => Column(
                children: [
                  const SizedBox(
                    height: 60,
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
                              child: const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: CircleAvatar(
                                  radius: 85,
                                  backgroundColor: Colors.white,
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
                          border: Border.all(color: Colors.white, width: 0)),
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
                          border: Border.all(color: Colors.white, width: 0)),
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
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.transparent,
                          border: Border.all(color: Colors.white, width: 0)),
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
                ],
              ),
              fallback: (context) => const Center(child: CircularProgressIndicator()),
            ),
          ),
        );
      },
    );
  }
}
