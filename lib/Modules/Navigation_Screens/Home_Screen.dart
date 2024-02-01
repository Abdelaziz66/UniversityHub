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
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:university_hup/Shared/Component/component.dart';
import 'package:university_hup/Shared/Cubit/App_cubit.dart';
import 'package:university_hup/Shared/Cubit/App_state.dart';
import 'package:university_hup/Shared/constant.dart';



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
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 0),
                  child: Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // Text(
                        //   cubit.N_HomeScreen_Text[cubit.Nav_HomeBar_index],
                        //   style: TextStyle(
                        //     fontSize: 30,
                        //     fontWeight: FontWeight.bold,
                        //     color: Colors.black,
                        //   ),
                        // ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // cubit.N_HomeScreen_Icon[cubit.Nav_HomeBar_index],
                            // SizedBox(width: 10,),
                            cubit.N_HomeScreen_Text[cubit.Nav_HomeBar_index],





                          ],),

                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 0.0, horizontal: 20),
                  child: Container(
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            print('0');
                            cubit.nav_home_bar_Function(index: 0);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: cubit.Nav_HomeBar_index == 0
                                  ? c1
                                  : Colors.white.withOpacity(.3),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Container(
                                height: 30,
                                width: 30,

                                alignment: Alignment.center,
                                child: FaIcon(
                                  FontAwesomeIcons.bookBookmark,
                                  color: cubit.Nav_HomeBar_index == 0
                                      ? c5
                                      : c1,
                                  size: 30,
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            print('1');
                            cubit.nav_home_bar_Function(index: 1);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: cubit.Nav_HomeBar_index == 1
                                  ? c1
                                  : Colors.white.withOpacity(.3),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child:Container(
                                height: 30,
                                width: 30,

                                alignment: Alignment.center,
                                child: FaIcon(
                                  FontAwesomeIcons.penClip,
                                  color: cubit.Nav_HomeBar_index == 1
                                      ? c5
                                      : c1,
                                  size: 30,
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            print('2');
                            cubit.nav_home_bar_Function(index: 2);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: cubit.Nav_HomeBar_index == 2
                                  ? c1
                                  : Colors.white.withOpacity(.3),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Container(
                                height: 30,
                                width: 30,

                                alignment: Alignment.center,
                                child: FaIcon(
                                  FontAwesomeIcons.featherPointed,
                                  color: cubit.Nav_HomeBar_index == 2
                                      ? c5
                                      : c1,
                                  size: 30,
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            print('3');
                            cubit.nav_home_bar_Function(index: 3);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: cubit.Nav_HomeBar_index == 3
                                  ? c1
                                  : Colors.white.withOpacity(.3),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Container(
                                height: 30,
                                width: 30,
                                alignment: Alignment.center,
                                child: FaIcon(
                                  FontAwesomeIcons.book,
                                  color: cubit.Nav_HomeBar_index == 3
                                      ? c5
                                      : c1,
                                  size: 30,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),


                Expanded(
                  child: cubit.N_HomeScreen[cubit.Nav_HomeBar_index],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
