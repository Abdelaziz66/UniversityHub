





import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:university_hup/Shared/Component/component.dart';
import 'package:university_hup/Shared/Cubit/App_cubit.dart';
import 'package:university_hup/Shared/Cubit/App_state.dart';
import 'package:university_hup/Shared/constant.dart';

class Profile_screen extends StatelessWidget {
  const Profile_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit, App_state>(
      listener: (context, state) => {},
      builder: (context, state) {
        App_cubit cubit = App_cubit.get(context);
        return SafeArea(
          child: ConditionalBuilder(
            condition: true,
            builder: (context) => Container(
              child: Column(
                children: [
                  SizedBox(height: 60,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          decoration:
                          BoxDecoration(shape: BoxShape.circle, boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                              blurRadius: 0,
                              spreadRadius: 1,
                            ),
                          ]),
                          child: CircleAvatar(
                            radius: 45,
                            backgroundColor: Colors.blue,
                            backgroundImage:AssetImage('assets/images/profile.png'),

                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Cs',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 20,
                                          color: c1,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 7,
                                      ),
                                      Text(
                                        'Department',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 16,
                                          color: c1.withOpacity(.8),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '4',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 20,
                                          color: c1,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 7,
                                      ),
                                      Text(
                                        'Level',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 16,
                                          color: c1.withOpacity(.8),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '2',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 20,
                                          color: c1,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 7,
                                      ),
                                      Text(
                                        'Semester',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          fontSize: 16,
                                          color: c1.withOpacity(.8),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Container(
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(
                              'Name Here',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 16,
                                color:c1,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          // Padding(
                          //   padding: const EdgeInsets.only(left: 15.0),
                          //   child: Text(
                          //     '2031035',
                          //     style: TextStyle(
                          //       fontWeight: FontWeight.w900,
                          //       fontSize: 16,
                          //       color:c1,
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              // cubit.image=null;
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //       builder: (context) => editscreen(),
                              //     ));

                            },
                            child: GlassBox(
                                widget: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Edit Profile',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: c1,
                                      ),
                                    ),
                                  ),
                                ),
                                color: Colors.blueGrey.withOpacity(.2),
                                borderRadius: 10,
                                x: 40,
                                y: 40),
                          ),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Expanded(
                          child: GlassBox(
                              widget: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: InkWell(
                                  onTap: () {
                                    // Navigator.pushAndRemoveUntil(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //       builder: (context) => LoginScreen(),
                                    //     ),
                                    //         (route) => false);
                                    // CachHelper.removedata(key: 'uId');
                                    // cubit.NavBar_index = 0;
                                    // cubit.card_chat_list=[];
                                    // cubit.model=null;

                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Log Out',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: c1,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              color: Colors.blueGrey.withOpacity(.2),
                              borderRadius: 10,
                              x: 40,
                              y: 40),
                        ),
                      ],
                    ),
                  ),
                  ConditionalBuilder(
                      condition:
                      true,
                      builder: (context) => Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: GlassBox(
                                widget: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.info_outline,
                                        color: Colors.orange,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Verify your account',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                          color: c1,
                                        ),
                                      ),
                                      Spacer(),
                                      TextButton(
                                          onPressed: () {
                                            // FirebaseAuth.instance.currentUser
                                            //     ?.sendEmailVerification()
                                            //     .then((value) {
                                            //   Fluttertoast.showToast(
                                            //       msg: 'Check your email',
                                            //       toastLength:
                                            //       Toast.LENGTH_LONG,
                                            //       gravity:
                                            //       ToastGravity.BOTTOM,
                                            //       timeInSecForIosWeb: 3,
                                            //       backgroundColor:
                                            //       Colors.green,
                                            //       textColor: Colors.white,
                                            //       fontSize: 16.0);
                                            // }).catchError((error) {});
                                          },
                                          child: Text(
                                            'Send',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16,
                                              color: Colors.teal[300],
                                            ),
                                          )),
                                      IconButton(
                                          onPressed: () {
                                            // cubit.verfiy_Function();
                                            // print(FirebaseAuth.instance
                                            //     .currentUser?.emailVerified);
                                          },
                                          icon: Icon(
                                            Icons.restart_alt,
                                            color: c1,
                                          )),
                                    ],
                                  ),
                                ),
                                color: Colors.blueGrey.withOpacity(.25),
                                borderRadius: 20,
                                x: 40,
                                y: 40),
                          ),
                        ],
                      ),
                      fallback: (context) => SizedBox(
                        height: 0,
                      )),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: GlassBoxWithBorder_Gradiant(
                        widget: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(

                            child: Column(
                              children: [
                                Text(
                                  'FCAI - Sadat City University',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 15,
                                    color: c1,
                                  ),
                                ),
                                SizedBox(height: 10,),

                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start
                                  ,
                                  children: [
                                    Container(
                                      decoration:
                                      BoxDecoration(shape: BoxShape.circle, boxShadow: [
                                        BoxShadow(
                                          color: Colors.black,
                                          blurRadius: 0,
                                          spreadRadius: 1,
                                        ),
                                      ]),
                                      child: CircleAvatar(
                                        radius: 50,

                                          backgroundImage:AssetImage('assets/images/profile.png',) ,
                                          ),
                                    ),
                                    SizedBox(width: 20,),
                                    Column(

                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                        Row(
                                          children: [
                                            Text(
                                              'Your Name : ',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w900,
                                                fontSize: 14,
                                                color: Colors.teal,
                                              ),
                                            ),
                                            Text(
                                              'Your Name ',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                                color: c1,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 4,),
                                        Row(
                                          children: [
                                            Text(
                                              'Your Level : ',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w900,
                                                fontSize: 14,
                                                color: Colors.teal,
                                              ),
                                            ),
                                            Text(
                                              '4 - CS',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                                color: c1,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 4,),
                                        Row(
                                          children: [
                                            Text(
                                              'Academic ID : ',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w900,
                                                fontSize: 14,
                                                color: Colors.teal,
                                              ),
                                            ),
                                            Text(
                                              '2031035',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                                color: c1,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 4,),
                                        Row(
                                          children: [
                                            Text(
                                              'National ID : ',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w900,
                                                fontSize: 14,
                                                color: Colors.teal,
                                              ),
                                            ),
                                            Text(
                                              '30204031700212',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                                color: c1,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        color: Colors.white.withOpacity(.4),
                        borderRadius: 20,
                        x: 40,
                        y: 40,
                      BorderWidth: .5,
                      BorderColor: Colors.blueGrey,
                    ),
                  ),
                ],
              ),
            ),
            fallback: (context) => Center(child: CircularProgressIndicator()),
          ),
        );
      },
    );
  }
}
