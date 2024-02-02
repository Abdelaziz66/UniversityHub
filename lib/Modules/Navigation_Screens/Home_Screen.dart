import 'dart:ui';

import 'package:flutter/material.dart';

// import '../../Shared/Component/component.dart';
//
// class Home_screen extends StatelessWidget {
//   const Home_screen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return  Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 5.0),
//       child: ListView.separated(
//         itemBuilder: (context, index) => Post(),
//         separatorBuilder: (context, index) => Container(
//           height: 15,
//           color: Colors.transparent,
//         ),
//         itemCount: 3,
//       ),
//     );
//   }
// }

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rive/rive.dart';


import 'package:university_hup/Shared/Component/component.dart';
import 'package:university_hup/Shared/Cubit/App_cubit.dart';
import 'package:university_hup/Shared/Cubit/App_state.dart';




class Home_screen extends StatelessWidget {
  const Home_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit, App_state>(
      listener: (context, state) => {},
      builder: (context, state) {
        App_cubit cubit = App_cubit.get(context);
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
                    filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
                    child: const SizedBox(),
                  )),
              SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 50,),
                    Expanded(
                      child: ListView.separated(
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Post(),
                        ),
                        separatorBuilder: (context, index) => Container(
                          height: 15,
                          color: Colors.transparent,
                        ),
                        itemCount: 10,
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
