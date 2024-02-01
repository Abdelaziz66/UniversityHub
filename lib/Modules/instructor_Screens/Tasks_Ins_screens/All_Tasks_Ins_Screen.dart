import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:university_hup/Shared/Cubit/App_cubit.dart';
import 'package:university_hup/Shared/Cubit/App_state.dart';

import '../../../Shared/Component/component.dart';
import '../../../Shared/Cons_widget.dart';
import '../Courses_Screens/all_Lectures_Screen.dart';
import 'Add_Quiz_Ins_Screen.dart';

class All_Tasks_ins_Screen extends StatelessWidget {
  const All_Tasks_ins_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit,App_state>(
        listener: (context,state){},
        builder: (context,state){
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              title: Text('Quizes Screen'),
              actions: [
                TextButton(
                onPressed: (){
                  navigateTo(context, Add_Quiz_Ins_Screen());
                },
                child: Text
                  ('Add',
                style: TextStyle(
                  color: Colors.black,
                ),
                ),
              ),]
            ),
            backgroundColor: Colors.transparent,
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child:  ListView.separated(
                itemBuilder:(context,index)=>InkWell(
                    onTap: (){
                     // navigateTo(context,All_Lectures() );
                    },
                    child: Build_Quezes_Ins(context)),
                separatorBuilder: (context,index)=>SizedBox(height: 10,),
                itemCount: 3,
              ),
            ),
          );
        },
    );
  }
}
