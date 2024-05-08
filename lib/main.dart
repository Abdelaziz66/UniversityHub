import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:university_hup/Layout/LayoutScreen.dart';
import 'package:university_hup/Modules/LandScape/LandScape/LandScape_Screen.dart';
import 'package:university_hup/Modules/LandScape/Login/LoginScreen.dart';
import 'package:university_hup/Shared/Cons_widget.dart';
import 'package:university_hup/Shared/Local/Cache_helper.dart';
import 'package:university_hup/Shared/constant.dart';

import 'package:university_hup/Shared/remote/DioHelper.dart';
import 'Models/STU_Model/CourseModel/AllCourcesAdapterModel/Stu_All_Courses_Model.dart';
import 'Models/STU_Model/CourseModel/AllCourcesAdapterModel/coursesAdapter.dart';
import 'Models/STU_Model/CourseModel/materialAdabter/Stu_Course_MaterialModel.dart';
import 'Models/STU_Model/CourseModel/materialAdabter/materialFilesAdapter.dart';
import 'Models/STU_Model/CourseModel/materialAdabter/materialFoldersAdapter.dart';
import 'Shared/Cubit/App_cubit.dart';
import 'Shared/Cubit/App_state.dart';
import 'Shared/Cubit/bloc_observed.dart';
import 'Shared/Local/Hive/HiveConstants.dart';
import 'Shared/Style/App_Style.dart';
import 'package:hive_flutter/hive_flutter.dart';


// from ZEKO

// git checkout -b Serious-Branch
// git pull origin main
// code………
// git add .
// git commit -m 'new commit'
// git push origin Serious-Branch

// https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRc8Lg0kTShpoEbQ-DOZaNTx-Mtenmtsg1VMw&s

//test

// from alfy
// base url https://nabilramadan.bsite.net/api

//-----------


//----------------------

//--------------------

  Future<void> main()  async {



  // new branch
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
    SystemUiOverlay.top,
  ]);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemStatusBarContrastEnforced: false,
      statusBarColor: Colors.transparent, // status bar color
      statusBarIconBrightness: Brightness.dark,

      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white, // navigation bar color
      systemNavigationBarContrastEnforced: false,
      systemNavigationBarDividerColor: Colors.transparent,
    ),
  );

  await CachHelper.init();

  await Hive.initFlutter().then((value) {print('hive initialize');});

  // final appDocumentDir = await getApplicationDocumentsDirectory();
  // Hive.init(appDocumentDir.path);
  // await Hive.deleteBoxFromDisk(HiveConstants.allCoursesBox);
  // await Hive.deleteBoxFromDisk(HiveConstants.lecFoldersBox);
  Hive.registerAdapter(Stu_GetAllCoursesAdapter());
  Hive.registerAdapter(materialFolderAdapter());
  Hive.registerAdapter(materialFilesAdapter());

   await Hive.openBox('allCoursesBox4').then((value){print('allCoursesBox4  box is opened ');}).catchError((error){
     print('allCoursesBox4  box is already opened ');
   });
   await Hive.openBox(HiveConstants.lecFoldersBox).then((value){print('${HiveConstants.lecFoldersBox}  box is opened ');}).catchError((error){
     print('${HiveConstants.lecFoldersBox}   box is already opened ');
   });
   await Hive.openBox(HiveConstants.lecFilesBox).then((value){print('${HiveConstants.lecFilesBox}  box is opened ');}).catchError((error){
     print('${HiveConstants.lecFilesBox}   box is already opened ');
   });

  Bloc.observer = MyBlocObserver();

  token = CachHelper.getData(key: 'token');
  rol= CachHelper.getData(key: 'rol');
  landscape= CachHelper.getData(key: 'landscape');
  if (token == null) {
    if(landscape != null)
      {
        StartWidget = loginscreen();
      }else
        {
          StartWidget = LandScape_Screen();
        }


  }
  else{
    StartWidget=Layout_Screen();
  }

  runApp(const MyApp());

  Dio_Helper.init();
  DioHelper2.initDio();

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
      //MultiBlocProvider(
     // providers: [
        BlocProvider(
          create: (context) => App_cubit()..CreateDateBase()
            ..connection_Function(),
            child:  BlocConsumer<App_cubit, App_state>(
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
                  // App_cubit cubit = App_cubit.get(context);
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
                    home: StartWidget,
                  );
                }),
        );
     // ],
     // child:
   // );
  }
}
