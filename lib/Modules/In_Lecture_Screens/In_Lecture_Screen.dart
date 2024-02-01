import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Shared/Component/component.dart';
import '../../Shared/Cubit/App_cubit.dart';
import '../../Shared/Cubit/App_state.dart';
import '../../Shared/constant.dart';

class Matrial_Screen extends StatelessWidget {
  const Matrial_Screen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit, App_state>(
      listener: (context, state) => {},
      builder: (context, state) {
        App_cubit cubit = App_cubit.get(context);
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 80, top: 15,right: 10),
              child: Row(
                children: [
                  Expanded(
                      child: GestureDetector(
                        onTap: () {
                          cubit.D_E_Function(de: true);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: cubit.DE? c2:c4,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Text(
                                'Doctor',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color:cubit.DE? c5:c1,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                      child: GestureDetector(
                        onTap: () {
                          cubit.D_E_Function(de: false);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color:  cubit.DE? c4:c2,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Text(
                                'Engineer',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color:  cubit.DE? c1:c5,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )),
                ],
              ),
            ),
            const SizedBox(height: 15,),
            ConditionalBuilder(condition: cubit.DE,
              builder: (context) =>Expanded(
                child: GridView.builder(
                  gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 2.5 ),
                  itemBuilder: (context, index) => Matrial_C(index: index),
                  scrollDirection: Axis.vertical,


                  itemCount: 7,
                ),
              ) ,
              fallback:(context) => Expanded(
                child: GridView.builder(
                  gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 2.5 ),
                  itemBuilder: (context, index) => Matrial_C(index: index),
                  scrollDirection: Axis.vertical,


                  itemCount: 5,
                ),
              ),
            ),

          ],
        );
      },
    );

  }
}
