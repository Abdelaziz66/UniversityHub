import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:university_hup/Shared/Cons_widget.dart';

import '../../../../../Shared/Component/component.dart';
import '../../../../../Shared/Cubit/App_cubit.dart';
import '../../../../../Shared/Cubit/App_state.dart';
import '../../../../../Shared/constant.dart';
import '../../../../instructor_Screens/Courses_Screens/Material_content_sec_or_lec.dart';
import 'STU_Show_Lecs_or_Lab_screen.dart';

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
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
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
                        'https://s3-alpha-sig.figma.com/img/07b3/a7c9/c2125e7477b092a6b41eee3cbb5627cd?Expires=1708300800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=LSFzhb5MX20bm5v9pG3n1Lqu5K91VfFaQWA08MV3tZIr-uKjGcByqUBbmljKxlpoEMBhMNd0BPeNgR4EYO~5vCLiHPHXmElMRDj6uXz86SLBMiP~g9p53YydDzfpLmcGZqaN9-ji1169FinyPbjn1Z2h3EBaLuV-Yvxw-eC9KsLuPIloT73yerWbs7kKpOrkjKlLfqZiuZVNgA~7w6QuAYyFEs6T8Ng6LkhhVNUucnBwrquNsuxqNmuQUvvk-6N~7uBKQUw-slravD9XxeGtLp0gJINLfsiC1ZCrGNhl8YZoUdwqPuSPfJdHt~kZhsZpWbdtivJRMcjyF5ZwSQKm-Q__'),
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
                  padding: const EdgeInsets.only(left: 10, top: 15, right: 10),
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
                            color: cubit.DE ? c2 : Colors.grey.withOpacity(.3),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Text(
                                'Lectures',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: cubit.DE ? c5 : c1,
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
                            color: cubit.DE ? Colors.grey.withOpacity(.3) : c2,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Text(
                                'Labs',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: cubit.DE ? c1 : c5,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ConditionalBuilder(
                  condition: cubit.DE,
                  builder: (context) => Expanded(
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2, childAspectRatio: 2.5),
                      itemBuilder: (context, index) => InkWell(
                          onTap: () {
                            navigateTo(context, STU_Show_Material_Lec_Or_Sec());
                          },
                          child: Matrial_C(
                            index: index,
                          )),
                      scrollDirection: Axis.vertical,
                      itemCount: 7,
                    ),
                  ),
                  fallback: (context) => Expanded(
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2, childAspectRatio: 2.5),
                      itemBuilder: (context, index) => InkWell(
                          onTap: () {
                            navigateTo(context, STU_Show_Material_Lec_Or_Sec());
                          },
                          child: Matrial_C(index: index)),
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
