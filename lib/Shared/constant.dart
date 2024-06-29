import 'package:day_night_time_picker/lib/state/time.dart';
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
Time time = Time(hour: 11, minute: 30, second: 0);

//-----------------End  points for Student ---------------
String LOGIN='Account/login';
String NEWS ='News';
String STU_COURSES='Students/CurrentCourcesInfo';
String STU_INFO='Students/GetStudentInfo';
String SUBMITQUIZ='Students/quiz/submit';
//String STU_COURSE_MATERIAL='Students/CurrentCourseMaterial?CycleId=${App_cubit().cycleId}';
String ADDEVENT='Calendar';
String GETCALENDER='Calendar/GetAllCalendar';
//-----------------End  points for Instructor  ---------------
String INS_INFO='Instructor/GetInstructorInfo';
String INS_COURSES='Instructor/CurrentCoursesInfo';
String INS_AllStudent='Instructor/GetAllStudentsEnrolledInAcourse?CycleId=';
String INS_Gradeforstudent='Instructor/GetGradesForCurrentCourseForAstudent?';


//--------Reset pass---------------
String RESET_PASS='Account/UpdatePassword';
String UPDATE_PHOTO='Account/update Photo';


// String Token='';


String? rol;
String? token;
bool? landscape;
Widget? StartWidget;
String? skip;


