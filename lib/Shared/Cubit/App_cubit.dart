import 'dart:async';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:open_file/open_file.dart';
import 'package:university_hup/Models/All_News/AllNewsModel.dart';
import 'package:university_hup/Models/All_News/AllNewsModel.dart';
import 'package:university_hup/Modules/Instructor/Courses_Screens/All_Ionstructor_Materials.dart';
import 'package:university_hup/Modules/Instructor/Tasks_Ins_screens/All_Tasks_Ins_Screen.dart';
import 'package:university_hup/Modules/Navigation_Screens/Calendar_Screen.dart';
import 'package:university_hup/Modules/Navigation_Screens/Dashboard_Screen.dart';
import 'package:university_hup/Modules/Navigation_Screens/Home_Screen.dart';

import 'package:university_hup/Modules/Navigation_Screens/Profile_Screen.dart';
import 'package:university_hup/Modules/Student/Student_Notification/Assignments_Screen.dart';
import 'package:university_hup/Modules/Student/Student_Notification/Ongoing_Screen.dart';
import 'package:university_hup/Modules/Student/Student_Notification/Quizzes_Screen.dart';
import 'package:university_hup/Modules/Student/Student_Notification/UpcomingCourse_Screen.dart';

import 'package:university_hup/Shared/constant.dart';
import '../../Models/All_News/AllNewsModel.dart';
import '../../Models/STU_Model/User_Model/STU_Login_Model.dart';
import '../../Modules/Navigation_Screens/Course_Screen.dart';


import '../remote/DioHelper.dart';
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

    const Ongoing_Screen(),
    const Assignments_Screen(),
    const Quizzes_Screen(),
    const UpcomingCourse_Screen(),

  ];
  List N_HomeScreen_Text=[

      // 'Ongoing Courses',
      // 'Assignments',
      // 'Quizzes',
      // 'UpcomingCourse',
    const Text(
      'Ongoing Courses',
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
    const Text(
      'Assignments',
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
    const Text(
      'Quizzes',
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
    const Text(
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
      return const STU_Lecture_Screen();
    }else {
      return AllMaterials();
    }
  }

  Widget switch_Tasks_Fun(){
    if(isStudent==true){
      return const All_Tasks_ins_Screen();
    }else {
      return const All_Tasks_ins_Screen();
    }
  }

  List<Widget> Nav_Bar_Items_List(){
    return[
      const Dashboard_Screen(),
     const Home_screen(),
      switch_Courses_Fun(),
      const Calendar_screen(),
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
        TextButton(onPressed: (){}, child: const Text('Edit' ,style: TextStyle(fontSize: 12),)),
        const Icon(Icons.edit,size: 16),
      ],
    ),
    Row(
      children: [
        TextButton(onPressed: (){}, child: const Text('material name 1',
          style: TextStyle(fontSize: 12),
        )),
        const Icon(CupertinoIcons.delete,size: 16,),
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
  //----------------------Grades--------------------------
List <int> stuAllGrades=[10,30,50,45,35];
//----------------------------------------------------------



//------------API ------------------------------------
  STU_Login_Model ?stu_login_Model;
  void UserLogin({
    required String email,
    required String password,
  }){
    emit(STU_LoginLoadingState());
    Dio_Helper.PostData(
        url: LOGIN,
        data:{
          'email':email,
          'password':password,
        }).then((value) {
      stu_login_Model= STU_Login_Model.fromJson(value.data);
      emit(STU_LoginSuccessState(stu_login_Model!));
      print(value.data);
    }).catchError((Error){
      print(Error.toString());
      emit(STU_LoginErrorState(Error.toString()));
    });
  }



  //------------------------Get all news ---------------------
 List<GetAllNewsModel> allNewsModel=[];
void GetAllNews (){
  emit(Get_All_NewsLoadingState());
    Dio_Helper.GetData(url: NEWS).then((value) {
      // allNewsModel.forEach((element) {
      //   allNewsModel.add(GetAllNewsModel.fromJson(value.data));
      // });
      print(value.data);

      // List Json = value.data;
      //
      // for (var element in Json) {
      //    allNewsModel.add(GetAllNewsModel.fromJson(element.data));
      // }


      allNewsModel.forEach((element) {
        print('content 1------------: ${element.content}');
      });
      emit(Get_All_NewsSuccessState(allNewsModel));

    }).catchError((error){
      emit(Get_All_NewsErrorState(error.toString()));

      print(error.toString());
    });
}

}
