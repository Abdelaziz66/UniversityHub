import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../Shared/Component/component.dart';
import '../../../../Shared/Cubit/App_cubit.dart';
import '../../../../Shared/Cubit/App_state.dart';
import '../../../../Shared/constant.dart';
class STU_Matrial_Screen extends StatelessWidget {
  const STU_Matrial_Screen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit, App_state>(
      listener: (context, state) => {},
      builder: (context, state) {
        App_cubit cubit = App_cubit.get(context);
        return Scaffold(
            appBar: AppBar(
              title: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Material name',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    // Text('instructor name',
                    //   style: TextStyle(
                    //     color: Colors.grey[600],
                    //       fontWeight: FontWeight.w400,
                    //       fontSize: 15
                    //   ),
                    // ),
                  ],
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image(
                    image: NetworkImage(
                        'https://s3-alpha-sig.figma.com/img/d231/da63/0330da0307bd5fd4566c82a5540e92e7?Expires=1707091200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=J63YbqUJG4~63Q6d5hwEqu3tJAI~012Z3wt3kH03TzaxbPJV4dw-ICasQIcTcQ0CtXSIODocBY7-mJoDxKOdvk~qxLK9~Ouxq5GxPxHrwv6UkMN2TaYWEsi9JCTnTbVOVHQTpzLamoqryU62-W-0H4Noh5W1DQFu1oIqmeFk7Pjldr~RsrNx4aByu~Kim87HDgzZfUVxf3n1F8ONO6iIVJ~5O8IWTJI7HEvjAs9D3hs0uC20cwBq43JH-Cv0d6HE9eHELQ5Rdu1MEWFb9-Slv5q9NKLQaZ-3WNl6gbHB4~9txFsm8fOMBa7qNkonJyUVEzxWMdAL4uRtRaKHFDIlVQ__'
                    ),
                    fit: BoxFit.cover,
                    height: 50,
                    width: 50,
                  ),
                ),
              ],
            ),
         body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 15,right: 10),
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
        ));
      },
    );

  }
}
