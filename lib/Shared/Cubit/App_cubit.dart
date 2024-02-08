import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:open_file/open_file.dart';
import 'package:university_hup/Modules/Navigation_Screens/Chat_Screen.dart';
import 'package:university_hup/Modules/Navigation_Screens/Home_Screen.dart';
import 'package:university_hup/Modules/Navigation_Screens/Lecture_Screen.dart';
import 'package:university_hup/Modules/Navigation_Screens/Profile_Screen.dart';
import 'package:university_hup/Modules/Navigation_Screens/Task_Screen.dart';
import 'package:university_hup/Modules/Student_Screens/Student_Home_Screen/Assignments_Screen.dart';
import 'package:university_hup/Modules/Student_Screens/Student_Home_Screen/Ongoing_Screen.dart';
import 'package:university_hup/Modules/Student_Screens/Student_Home_Screen/Quizzes_Screen.dart';
import 'package:university_hup/Modules/Student_Screens/Student_Home_Screen/UpcomingCourse_Screen.dart';
import 'package:university_hup/Shared/constant.dart';
import '../../Modules/Student_Screens/Student_Courses_Screen/STU_Lecture_Screens/STU_lectures_Screen.dart';
import '../../Modules/Student_Screens/Student_Tasks_screen/Student_Tasks_Screen.dart';
import '../../Modules/instructor_Screens/Courses_Screens/All_Ionstructor_Materials.dart';
import '../../Modules/instructor_Screens/Tasks_Ins_screens/All_Tasks_Ins_Screen.dart';
import 'App_state.dart';

class App_cubit extends Cubit<App_state> {
  App_cubit() : super(App_ini_state());
  static App_cubit get(context) => BlocProvider.of(context);



// Abdelaziz  --------------------------------------------------------------------
  int Nav_HomeBar_index=0;
  void nav_home_bar_Function({required int index}){
    Nav_HomeBar_index=index;
    emit(Nav_HomeBar_state());
  }

  List N_HomeScreen=[
    Ongoing_Screen(),
    Assignments_Screen(),
    Quizzes_Screen(),
    UpcomingCourse_Screen(),

  ];
  List N_HomeScreen_Text=[

      // 'Ongoing Courses',
      // 'Assignments',
      // 'Quizzes',
      // 'UpcomingCourse',
    Text(
      'Ongoing Courses',
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
    Text(
      'Assignments',
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
    Text(
      'Quizzes',
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
    Text(
      'Upcoming Course',
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),


  ];
  List N_HomeScreen_Icon=[
    CircleAvatar(
      radius: 22,
      backgroundColor: Colors.white.withOpacity(.5),
      child: FaIcon(
        FontAwesomeIcons.bookBookmark,
        color:c1,
        size: 25,
      ),
    ),
    CircleAvatar(
      radius: 22,
      backgroundColor: Colors.white.withOpacity(.5),
      child: FaIcon(
        FontAwesomeIcons.penClip,
        color:c1,
        size: 25,
      ),
    ),
    CircleAvatar(
      radius: 22,
      backgroundColor: Colors.white.withOpacity(.5),
      child: FaIcon(
        FontAwesomeIcons.featherPointed,
        color:c1,
        size: 25,
      ),
    ),
    CircleAvatar(
      radius: 22,
      backgroundColor: Colors.white.withOpacity(.5),
      child: FaIcon(
        FontAwesomeIcons.book,
        color:c1,
        size: 25,
      ),
    ),
  ];

  int? D_value=0;
  void SetState_G(){
    emit(stateforDrawer());
  }


// Navigation Bar Start Here >>>>>>>>>>>>>>>>>>>>>>>>>>>>


  bool? isStudent=true;
  void switch_isStudent_Fun({required bool is_studentvalue}){
    isStudent=is_studentvalue;
    emit(Switch_stud_ins_bool_state());
  }

  Widget switch_Courses_Fun(){

    if(isStudent==true){
      return STU_Lecture_Screen();
    }else {
      return AllMaterials();
    }
  }

  Widget switch_Tasks_Fun(){
    if(isStudent==true){
      return All_Tasks_Student_Screen();
    }else {
      return All_Tasks_ins_Screen();
    }
  }

  List<Widget> Nav_Bar_Items_List(){
    return[
     Home_screen(),
      switch_Courses_Fun(),
      const Chat_screen(),
      Task_screen(),
      const Profile_screen()
  ];}

  int Nav_Bar_index = 0;
  void Nav_Bar_Function({required int index}) {
    Nav_Bar_index=index;
    emit(Nav_Bar_state());
  }

// Navigation Bar End Here >>>>>>>>>>>>>>>>>>>>>>>>>>>>
// Doctor And Engineer Start Here >>>>>>>>>>>>>>>>>>>>>>>>>>>>

  bool DE=true;
  void D_E_Function({required bool de}){
    DE=de;
    print(DE);
    emit(D_E_state());
  }





// ALFY  --------------------------------------------------------------------
//instructor by alfy:
  bool isBottomSheetShown=false;
  IconData fabIcon = Icons.add;




  /*------------------------------------------------------------*/
  List<Widget> items = [
    Row(
      children: [
        TextButton(onPressed: (){}, child: Text('Edit' ,style: TextStyle(fontSize: 12),)),
        Icon(Icons.edit,size: 16),
      ],
    ),
    Row(
      children: [
        TextButton(onPressed: (){}, child: Text('material name 1',
          style: TextStyle(fontSize: 12),
        )),
        Icon(CupertinoIcons.delete,size: 16,),
      ],
    ),
  ];
  Widget? Material_More_selectedItem;




  void ChangeBottomSheetState(
      {
        required bool isShow,
        required IconData icon,
      }
      ){
    isBottomSheetShown=isShow;
    fabIcon = icon;
    emit(ChangeBottomSheet_State());
  }



  void change_more_list_visible(Widget? newValue){
    Material_More_selectedItem = newValue!;
    emit(ChangeListVisible_State());
  }

  /*-------------------add lecture screen-------------------*/
  List<PlatformFile>all_files_List=[];
  void pickFile() async{
    emit(AddFile_Loading_State());
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowMultiple: true,
      allowedExtensions: ['png', 'cdr', 'psd','jpeg', 'png','pdf'],
    );
    if(result != null) {
      all_files_List=result.files;    //Adding all files to all_files list
      emit(AddFile_Success_State());
    } else {
      // User canceled the picker
      emit(AddFile_Error_State());
    }
  }

  void add_NewFile_To_FIles_List()async{
    emit(AddNewFile_Loading_State());
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowMultiple: true,
      allowedExtensions: ['png', 'cdr', 'psd','jpeg', 'png','pdf'],
    );
    if(result != null) {
      result.files.forEach((element) {
        all_files_List.add(element);
      });
      emit(AddNewFile_Success_State());
    } else {
      // User canceled the picker
      emit(AddNewFile_Error_State());
    }
  }

  void openFile_Fun(PlatformFile file){
    emit(ShowFile_Loading_State());
    OpenFile.open(file.path).then((value) {
      emit(ShowFile_Success_State());
    }).catchError((error){
      print('opening file error${error}');
      emit(ShowFile_Error_State());
    });
  }



  /*-------------add quiz --------------*/



  final List<String> materil_for_quiz = [
    'Material name 1',
    'Material name 2',
    'Material name 3',
    'Material name 4',
    'Material name 5',
  ];

  String? selectedValue;
  void selected_item_quiz (String value) {
    selectedValue = value;
    emit(select_item_add_quiz_State());
  }


  int hours = 0;
  int minutes = 0;
  int seconds = 0;
  late Timer timer;

  String _formatTime() {
    String formattedHours = DateFormat('HH').format(DateTime(0, 0, 0, hours));
    String formattedMinutes = DateFormat('mm').format(DateTime(0, 0, 0, 0, minutes));
    String formattedSeconds = DateFormat('ss').format(DateTime(0, 0, 0, 0, 0, seconds));

    return '$formattedHours:$formattedMinutes:$formattedSeconds';
  }


  // Future<File> saveFile_Fun(PlatformFile file)async{
  //   final appStorage= await getApplicationDocumentsDirectory();
  //   final newFIle=File('${appStorage.path}/${file.name}');
  //   return File(file.path!).copy(newFIle.path);
  // }



/*switch betwean assignment pending or completed*/

  bool pend=true;
  void pend_Complete_Function({required bool pe}){
    pend=pe;
    print(pend);
    emit(pend_complete_state());
  }



//--------STU  Upload assignment -------------------
  List<PlatformFile>all_assign_files_List=[];
  void pick_assign_File() async{
    emit(AddFile_Assign_Loading_State());
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowMultiple: true,
      allowedExtensions: ['png', 'cdr', 'psd','jpeg', 'png','pdf'],
    );
    if(result != null) {
      all_assign_files_List=result.files;    //Adding all files to all_files list
      emit(AddFile_Assign_Success_State());
    } else {
      // User canceled the picker
      emit(AddFile_Assign_Error_State());
    }
  }

  void add_Assign_NewFile_To_FIles_List()async{
    emit(AddNewFile_Assign_Loading_State());
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowMultiple: true,
      allowedExtensions: ['png', 'cdr', 'psd','jpeg', 'png','pdf'],
    );
    if(result != null) {
      result.files.forEach((element) {
        all_assign_files_List.add(element);
      });
      emit(AddNewFile_Assign_Success_State());
    } else {
      // User canceled the picker
      emit(AddNewFile_Assign_Error_State());
    }
  }



  //-----------------STU Quizzes------------
  List<bool> stu_Quiz_State = [false,false,true];
  List<bool> stu_Quiz_isStart = [true,false,true];

  List<String> stu_Quiz_Ques_lis=[
    'What is Parallel Computing?',
    'What are the main challenges in Parallel Programming?',
    'Compare and Contrast Shared Memory and Distributed Memory Models?',
    'Explain the concept of Race Conditions and how they can be mitigated?',
    'Compare and Contrast Shared Memory and Distributed Memory Models?'];

  final List<String> stu_Quiz_Ques_options = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];
  String selectedOption = '';
  void Quiz_Select_answer(selectedOption){
    this.selectedOption=selectedOption;
    emit(Change_Quiz_Answer_State());
  }


}
