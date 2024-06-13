import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:university_hup/Shared/Component/component.dart';
import 'package:university_hup/Shared/Cons_widget.dart';
import 'package:university_hup/Shared/Cubit/App_cubit.dart';
import 'package:university_hup/Shared/Cubit/App_state.dart';

class INS_task_result_Screen extends StatelessWidget {
   INS_task_result_Screen({required this.taskid,super.key});
  String taskid;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit, App_state>(
      listener: (context, state) {},
      builder: (context, state) {
        App_cubit cubit=App_cubit.get(context);

        return DefaultTabController(
          length: 2, // Number of tabs
          initialIndex: cubit.Tab_Bar_1_index,
          child: Scaffold(
            body: SafeArea(
              child: Column(
                children: [
                  const SizedBox(height: 30,),
                  defaultAppbar(context:context),
                  const SizedBox(height: 30,),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              FaIcon(FontAwesomeIcons.solidUser,color: Colors.teal,size: 18,),
                              SizedBox(width: 15,),
                              Container(
                                  child: Text(
                                    'Student name',
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        ?.copyWith(
                                      color: Colors.teal,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  )),
                              Spacer(),
                              // Container(
                              //     child: Text(
                              //       'Upload at',
                              //       textAlign: TextAlign.center,
                              //       style: Theme.of(context)
                              //           .textTheme
                              //           .subtitle1
                              //           ?.copyWith(
                              //         color: Colors.teal,
                              //         fontSize: 15,
                              //         fontWeight: FontWeight.w900,
                              //       ),
                              //     )),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Container(
                            height: 2,
                            color: Colors.teal,
                            width: double.infinity,

                          ),
                          SizedBox(height: 20,),

                          Container(
                            height: 150,
                            child: ListView.separated(
                              itemBuilder:(context,index)=> showSTU_UploadeTask(
                                taskid: taskid,


                                  index: index+1,
                                  context: context,
                                  stuAssign: cubit.studentUplodeTaskModel[index]
                              ),
                              separatorBuilder: (context,index)=>  Container(
                                height: 1,
                                color: Colors.teal,
                                width: double.infinity,

                              ),
                              itemCount: App_cubit.get(context).studentUplodeTaskModel.length,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),



                ],
              ),
            ),

          ),
        );
      },
    );
}}
