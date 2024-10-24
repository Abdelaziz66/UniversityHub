import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manager/cubit/material_cubit.dart';
import 'file_grid_view.dart';

class FileBuilder extends StatelessWidget {
  const FileBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MaterialCubit,MaterialsState>(builder: (context,state)
    {
        if(state is GetAllFilesSuccessState){
        return FileGridView(
      context1: context, files: state.files,
      );}else if(state is GetAllFilesErrorState){
        return Center(child: Text(state.error));
      }else{
        return const Center(child: CircularProgressIndicator());
      }
    }
    );

  }
}