import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../constant.dart';





ThemeData Light_Theme = ThemeData(
  drawerTheme: const DrawerThemeData(
    scrimColor: Colors.transparent,
  ),
  bottomSheetTheme: BottomSheetThemeData(
    backgroundColor: Colors.transparent,

  ),

  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.blue,
    foregroundColor: Colors.white,





  ),


  textTheme: TextTheme(

    bodyText1:TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w900,
      color: HexColor('#0D1B2A'),
    ),
    bodyText2:TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w900,
      color: HexColor('#0D1B2A'),
    ),
    subtitle1:TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: c1.withOpacity(.7),
    ),
  ),


);

ThemeData Dark_Theme = ThemeData();