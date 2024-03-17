import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:university_hup/Shared/Cubit/App_cubit.dart';

// Color c1 =Colors.blue;
// Color? c2 =Colors.black;
// Color? c3 =HexColor('#415A77');
// Color? c4 =HexColor('#778DA9');
// Color? c5 =HexColor('#E0E1DD');

Color c1 =HexColor('#0D1B2A');
Color c2 =HexColor('#1B263B');
Color c3 =HexColor('#415A77');
Color c4 =HexColor('#778DA9');
Color c5 =Colors.white;

Color p1 =HexColor('#3D5CFF');
Color p2 =HexColor('#FFE7EE');
Color p3 =HexColor('#D8FFEF');

Color p4 =HexColor('#6DBBF3');


// Color c1 =Colors.white

String? rol= '';

//-----------------End  points ---------------
String LOGIN='api/Account/login';
String NEWS ='api/News';
String STU_COURSES='api/Students/CurrentCourcesInfo';
String STU_INFO='api/Students/GetStudentInfo';
String SUBMITQUIZ='api/Students/quiz/submit';
//String STU_COURSE_MATERIAL='Students/CurrentCourseMaterial?CycleId=${App_cubit().cycleId}';
String ADDEVENT='api/Calendar';
String GETCALENDER='api/Calendar/GetAllCalendar';


// String Token='';

String? token;
bool? landscape;
Widget? StartWidget;

