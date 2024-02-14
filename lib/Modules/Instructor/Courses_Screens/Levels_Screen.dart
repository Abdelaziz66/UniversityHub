import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../Shared/Component/component.dart';
import '../../../Shared/Cons_widget.dart';
import '../../../Shared/Cubit/App_cubit.dart';
import '../../../Shared/Cubit/App_state.dart';
import 'All_Ionstructor_Materials.dart';

class CourcesScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<App_cubit,App_state>(
          listener: (context,state){},
          builder: (context,state){
            return Scaffold(
              appBar: AppBar(),
              body: Column(
                children: [
                Expanded(
                  child: ListView.builder(
                      itemBuilder:(context,index)=>InkWell(
                          onTap: (){
                            navigateTo(context,AllMaterials() );
                          },
                          child: BuildLevelsWidget()),
                      itemCount: 4,
                  ),
                ),
                ],
              ),
            );
          },

      );

  }
}
