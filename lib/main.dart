import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:university_hup/Modules/LandScape/LandScape/LandScape_Screen.dart';
import 'package:university_hup/Shared/Cons_widget.dart';

import 'package:university_hup/Shared/remote/DioHelper.dart';
import 'Shared/Cubit/App_cubit.dart';
import 'Shared/Cubit/App_state.dart';
import 'Shared/Cubit/bloc_observed.dart';
import 'Shared/Style/App_Style.dart';

// from ZEKO

// git checkout -b Serious-Branch
// git pull origin main
// code………
// git add .
// git commit -m 'new commit'
// git push origin Serious-Branch

//test

// from alfy
// base url https://nabilramadan.bsite.net/api

void main() {
  // new branch
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
    SystemUiOverlay.top,
  ]);
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemStatusBarContrastEnforced: false,
      statusBarColor: Colors.transparent, // status bar color
      statusBarIconBrightness: Brightness.dark,

      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white, // navigation bar color
      systemNavigationBarContrastEnforced: false,
      systemNavigationBarDividerColor: Colors.transparent,
    ),
  );

  Bloc.observer = MyBlocObserver();

  runApp(const MyApp());

  Dio_Helper.init();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => App_cubit()..CreateDateBase()
            ..connection_Function()
            ..GetAllNews(),
        ),
      ],
      child: BlocConsumer<App_cubit, App_state>(
          listener: (context, state) => () {
                // InternetConnectionChecker().onStatusChange.listen((state) {
                //   switch (state) {
                //     case InternetConnectionStatus.connected:
                //       print('********************************************');
                //       print('internet connected! :)');
                //       print('********************************************');
                //
                //       break;
                //
                //     case InternetConnectionStatus.disconnected:
                //       print('********************************************');
                //       print('No internet :( ');
                //       print('********************************************');
                //
                //       break;
                //   }
                // });


                // if (state is Connection_success_State)
                //   {
                //     print(
                //         '******************* from main *************************'),
                //     print('internet connected! :)'),
                //     print(
                //         '******************* from main *************************'),
                //     flutterToast(
                //       msg: 'Connected',
                //       backColor: Colors.teal,
                //     ),
                //   },
                // if (state is Connection_failed_State)
                //   {
                //     print(
                //         '******************* from main *************************'),
                //     print('internet disconnected! :)'),
                //     print(
                //         '******************* from main *************************'),
                //     flutterToast(
                //       msg: 'Disconnected',
                //       backColor: Colors.red,
                //     ),
                //   }
              },
          builder: (context, state) {
            App_cubit cubit = App_cubit.get(context);
            if (state is Connection_success_State) {
              // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              //   content: Text('Connected'),backgroundColor:Colors.teal ,width: 50,
              //   action: SnackBarAction(label: 'Connected',onPressed: (){},backgroundColor: Colors.teal,
              //     textColor: Colors.black,
              //   ),
              //   onVisible: (){},
              //
              // ));

              flutterToast(
                msg: 'Connected',
                backColor: Colors.teal,
              );
            }
            if (state is Connection_failed_State) {
              // SnackBar(content: Text('Disconnected'),backgroundColor: Colors.red,);
              flutterToast(
                msg: 'Disconnected',
                backColor: Colors.red,
              );
            }
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: Light_Theme,
              darkTheme: Dark_Theme,
              themeMode: ThemeMode.light,

// home:StartWidget,
              home: LandScape_Screen(),
            );
          }),
    );
  }
}
