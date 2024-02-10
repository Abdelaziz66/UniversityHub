import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:university_hup/Modules/LandScape_Screens/LandScape_1_Screen.dart';

import 'Layout/Switch_Screen.dart';
import 'Shared/Cubit/App_cubit.dart';
import 'Shared/Cubit/App_state.dart';
import 'Shared/Cubit/bloc_observed.dart';
import 'Shared/Style/App_Style.dart';



//comment
// from abdelaziz 31
// git checkout -b zeko-branch
// git pull origin main
// code………
// git add .
// git commit -m 'new commit'
// git push origin zeko-branch

// from alfy

void main() {
  // new branch
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.transparent, // navigation bar color
    statusBarColor: Colors.transparent, // status bar color
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarIconBrightness: Brightness.dark,

  ));
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(

          create: (context) => App_cubit(),

        ),
      ],
      child: BlocConsumer<App_cubit, App_state>(
          listener: (context, state) => () {},
          builder: (context, state) {
            App_cubit cubit = App_cubit.get(context);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: Light_Theme,
              darkTheme: Dark_Theme,
              themeMode: ThemeMode.light,

// home:StartWidget,
              home:  LandScape_1(),
            );
          }),
    );
  }
}

