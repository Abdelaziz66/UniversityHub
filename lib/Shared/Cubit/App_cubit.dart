import 'dart:async';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:open_file/open_file.dart';
import 'package:university_hup/Models/All_News/AllNewsModel.dart';
import 'package:university_hup/Models/STU_Model/CourseModel/STU_Course_Assign_Model.dart';
import 'package:university_hup/Models/STU_Model/CourseModel/Stu_All_Courses_Model.dart';
import 'package:university_hup/Models/STU_Model/CourseModel/Stu_Course_MaterialModel.dart';
import 'package:university_hup/Models/STU_Model/CourseModel/Stu_Course_Quiz_Model.dart';
import 'package:university_hup/Models/STU_Model/User_Model/STU_Login_Model.dart';
import 'package:university_hup/Modules/Navigation_Screens/Calendar_Screen.dart';
import 'package:university_hup/Modules/Navigation_Screens/Course_Screen.dart';
import 'package:university_hup/Modules/Navigation_Screens/Dashboard_Screen.dart';
import 'package:university_hup/Modules/Navigation_Screens/Home_Screen.dart';

import 'package:university_hup/Modules/Navigation_Screens/Profile_Screen.dart';
import 'package:university_hup/Modules/Student/Student_Notification/Assignments_Screen.dart';
import 'package:university_hup/Modules/Student/Student_Notification/Ongoing_Screen.dart';
import 'package:university_hup/Modules/Student/Student_Notification/Quizzes_Screen.dart';
import 'package:university_hup/Modules/Student/Student_Notification/UpcomingCourse_Screen.dart';
import 'package:university_hup/Shared/constant.dart';
import 'package:university_hup/Shared/remote/DioHelper.dart';
import '../../Models/STU_Model/User_Model/CurrentStudentInfoModel.dart';

import 'App_state.dart';

class App_cubit extends Cubit<App_state> {
  App_cubit() : super(App_ini_state());
  static App_cubit get(context) => BlocProvider.of(context);



// Abdelaziz  --------------------------------------------------------------------

  int more=2;
  void addmore(){
    if(more==4){

    }else{
      more++;
    }

    emit(Defulte_state());
  }
  void minusmore(){
    if(more==2){

    }else{
      more--;
    }

    emit(Defulte_state());
  }
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


  List<Widget> Nav_Bar_Items_List(){
    return[
      const Dashboard_Screen(),
     const Home_screen(),
      STU_Lecture_Screen(),
      const Calendar_screen(),
       const Profile_screen()
  ];}

  int Nav_Bar_index = 0;
  void Nav_Bar_Function({required int index}) {
    if (index==2){
      StuGetAllCourses(
        token:Tokenn,
      );
    }
    else if(index==4){
      GetCurrentStudenInfo();
    }
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

bool switch_quiz=true;
  void switch_quiz_Function({required bool s}){
    switch_quiz=s;
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
  List<bool> stu_Quiz_IsComplete = [false,false,true];
  List<bool> stu_Quiz_isStart = [true,false,true];

  List<String> stu_Quiz_Ques_lis=[
    'What is Parallel Computing?',
    'What are the main challenges in Parallel Programming?',
    'Compare and Contrast Shared Memory and Distributed Memory Models?',
    'Explain the concept of Race Conditions and how they can be mitigated?',
    'Compare and Contrast Shared Memory and Distributed Memory Models?'];

  final List<String> stu_Quiz_Ques_options = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];
  String quizAnswerSelected = '';
  void Quiz_Select_answer(selectedOption){
    this.quizAnswerSelected=selectedOption;
    emit(Change_Quiz_Answer_State());
  }
  //----------------------Grades--------------------------
List <int> stuAllGrades=[10,30,50,45,35];
//----------------------------------------------------------


//------------API ------------------------------------
  String ?Tokenn;
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
      Tokenn=stu_login_Model?.token;
      print('TOKENN:${Tokenn}');
      emit(STU_LoginSuccessState(stu_login_Model!));
    }).catchError((Error){
      print(Error.toString());
      emit(STU_LoginErrorState(Error.toString()));
    });
  }

  CurrentStudentInfoModel? studentInfoModel;
  void GetCurrentStudenInfo (
  //  required token,
  ) {
    if(studentInfoModel==null) {
      emit(Get_STU_Info_LoadingState());
      Dio_Helper.GetData(
        url: STU_INFO,
        token: Tokenn,
      ).then((value) {
        if (value.statusCode == 200) {
          print('get Student inf true');
          studentInfoModel = CurrentStudentInfoModel.fromJson(value.data);
          print(studentInfoModel?.facultyName);
          emit(Get_STU_Info_SuccessState());
        }
      }).catchError((error) {
        emit(Get_STU_Info_ErrorState(error.toString()));
        print(error.toString());
      });
    }
  }





  //------------------------Get all news ---------------------
  List<GetAllNewsModel> allNewsModel=[];

  void GetAllNews (){
    if(allNewsModel.isEmpty) {
      emit(Get_All_NewsLoadingState());
      Dio_Helper.GetData(url: NEWS).then((value) {
        if (value.statusCode == 200) {
          print('git news success');
          List Json = value.data;
          for (var element in Json) {
            allNewsModel.add(GetAllNewsModel.fromJson(element));
          }
          emit(Get_All_NewsSuccessState(allNewsModel));
        }
        allNewsModel.forEach((element) {
          print('content 1------------: ${element.content}');
        });
      }).catchError((error) {
        emit(Get_All_NewsErrorState(error.toString()));

        print(error.toString());
      });
    }
  }


  List<Stu_GetAllCoursesModel> stuAllCoursesModel=[];

  void StuGetAllCourses ({
    required token,
}) {
    if(stuAllCoursesModel.length==0) {
      emit(Stu_Get_All_Courses_LoadingState());
    Dio_Helper.GetData(
      url: STU_COURSES,
      token: Tokenn,
    ).then((value) {
      if (value.statusCode == 200) {
        print('get course true');
        List Json = value.data;
        for (var element in Json) {
          stuAllCoursesModel.add(Stu_GetAllCoursesModel.fromJson(element));
        }
        emit(Stu_Get_All_Courses_SuccessState(stuAllCoursesModel));
      }
      stuAllCoursesModel.forEach((element) {
        print('name------- ${element.name}');
      });
    }).catchError((error) {
      emit(Stu_Get_All_Courses_ErrorState(error.toString()));
      print(error.toString());
    });
  }
  }

  String? currentCourseName;
  String? currentCycleId;
  bool isCycleIdChange=false;

 // String? cycleId;
  List<GetCourseMaterialsModel> stuCoursesMatrialModel=[];
  List<GetCourseMaterialsModel> stuLECTUREModel=[];
  List<GetCourseMaterialsModel> stuLABModel=[];
  bool? isLec;

  void StuGetCourseMaterials (
    //required token,
   // required cycleId,
  ) {
    print('sdsds ${isCycleIdChange}');
    if (stuCoursesMatrialModel.isEmpty || isCycleIdChange==true){
      emit(Stu_Get_Course_Material_LoadingState());
    Dio_Helper.GetData(
      url: 'Students/CurrentCourseMaterial?CycleId=${currentCycleId}',
      //STU_COURSE_MATERIAL,
      token: Tokenn,
    ).then((value) {
      if (value.statusCode == 200) {

        print('get course material true');
        List Json = value.data;
        for (var element in Json) {
          stuCoursesMatrialModel.add(GetCourseMaterialsModel.fromJson(element));
        }
        emit(Stu_Get_Course_Material_SuccessState(stuCoursesMatrialModel));
      }
      stuCoursesMatrialModel.forEach((element) {
        if (element.type == 'Lecture') {
            stuLECTUREModel.add(element);
        }
        else if (element.type == 'Lab') {
            stuLABModel.add(element);
          }
      });
      print('lectures:');
      stuLECTUREModel.forEach((element) {
        print(element.type);
      });
      print('Labs:');
      stuLABModel.forEach((element) {
        print(element.type);
      });
    }).catchError((error) {
      emit(Stu_Get_Course_Material_ErrorState(error.toString()));
      print(error.toString());
    });
  }
    isCycleIdChange=false;

  }
  //----------------------STU assign -----------------

 String ? assignName;
  List<STU_Course_Assign_Model> stuCoursesAssignModel=[];
  void StuGetCourseAssign (
    //required token,
   // required cycleId,
  ){
   // stuCoursesAssignModel=[];
     if(stuCoursesAssignModel.isEmpty || isCycleIdChange==true) {
       emit(Stu_Get_Course_Assign_LoadingState());
       Dio_Helper.GetData(
         url: 'Students/CurrentCourseTasks?CycleId=${currentCycleId}',
         //STU_COURSE_MATERIAL,
         token: Tokenn,
       ).then((value) {
         if (value.statusCode == 200) {
           print(value.data);
           List Json = value.data;
           //  for (var element in  Json) {
           Json.forEach((element) {
             stuCoursesAssignModel.add(
                 STU_Course_Assign_Model.fromJson(element));
           });
           print('get course Assign true');
           emit(Stu_Get_Course_Assign_SuccessState(stuCoursesAssignModel));
         }
         stuCoursesAssignModel.forEach((element) {
           print('task name------- ${element.taskName}');
         });
       }).catchError((error) {
         emit(Stu_Get_Course_Assign_ErrorState(error.toString()));
         print(error.toString());
       });
     }
     isCycleIdChange=false;

  }



  // String? cycleId;

  List<STU_Quiz_Model> stuCoursesQuizlModel=[];
  void StuGetCourseQuiz (
 //   required token,
//    required cycleId,
  ) {
    if (stuCoursesQuizlModel.isEmpty|| isCycleIdChange==true) {
      emit(Stu_Get_Course_Quiz_LoadingState());
      Dio_Helper.GetData(
        url: 'Students/CurrentCourseQuizzes?cycleId=${currentCycleId}',
        //STU_COURSE_MATERIAL,
        token: Tokenn,
      ).then((value) {
        if (value.statusCode == 200) {
          print('get course Quiz true');
          List Json = value.data;
          for (var element in Json) {
            stuCoursesQuizlModel.add(STU_Quiz_Model.fromJson(element));
          }
          emit(Stu_Get_Course_Quiz_SuccessState(stuCoursesQuizlModel));
        }
        stuCoursesQuizlModel.forEach((element) {
          print('Quiz title------- ${element.title}');
        });
      }).catchError((error) {
        emit(Stu_Get_Course_Quiz_ErrorState(error.toString()));
        print(error.toString());
      });
    }
    isCycleIdChange=false;

  }
 // List<GetQuizDataModel> quizlDataModel=[];
  List<Questions> questionModel=[];
 // List<Answers> answersModel=[];
  String?currentQuizId;
  void StuGetQuizDataById ({
    required qIndex,
    required token,
//    required cycleId,
  }){
   // quizlDataModel=[];
   // answersModel=[];
    if(questionModel.isEmpty) {
      emit(Stu_Get_Quiz_Data_LoadingState());
      Dio_Helper.GetData(
        url: 'Students/Quiz?quizId=${currentQuizId}',
        //STU_COURSE_MATERIAL,
        token: Tokenn,
      ).then((value) {
        if (value.statusCode == 200) {
          print('get course Quiz true');
          List ques = value.data['questions'];
          for (var element in ques) {
            questionModel.add(Questions.fromJson(element));
          }

          // List<Map<String,dynamic>> answer =value.data['questions']['answers'];
          // for (var element in answer) {
          //   answersModel.add(Answers.fromJson(element['answers']));
          // }

          emit(Stu_Get_Quiz_Data_SuccessState());
        }
        questionModel.forEach((element) {
          print('Quiz ques------- ${element.text}');
        });
        // answersModel.forEach((element) {
        //   print('Quiz answers------- ${element.text}');
        // });

      }).catchError((error) {
        emit(Stu_Get_Quiz_Data_ErrorState(error.toString()));
        print(error.toString());
      });
    }
  }

List<Map<String,dynamic>>submitQuizAnswers=[];


  List<Map<String,dynamic>>QuizAnswersResponse=[];

  //List<SubmitQuizModel>? submitQuizModel;
  void SumitQuiz(
  //  required quizId,
  //  required List<Map<String,dynamic>>answers,
)
  {
    QuizAnswersResponse=[];
    emit(Stu_Submit_Quiz_LoadingState());
    Dio_Helper.PostData(
      token: Tokenn,
        url: SUBMITQUIZ,
        data:{
          'quizId':currentQuizId,
          'answers':submitQuizAnswers,
        }).then((value) {
      if (value.statusCode == 200) {
        print('get course Quiz true');
     //   print(value.data);
        List json = value.data;


        for (var element in json) {
          QuizAnswersResponse.add({
            '${element.keys}': element.values
          });
        };

        QuizAnswersResponse.forEach((element) {
          print(element.keys);
          print(element.values);
        });


        // for (var element in json) {
        //   QuizAnswersResponse.add({
        //     '${element.keys}':element.values
        //   });
        // };


        // submitQuizModel= SubmitQuizModel.fromJson(value.data);
        //  print(submitQuizModel?.Q1);
        //  print(submitQuizModel?.Q2);
        //  print(submitQuizModel?.Q3);
        //  print(submitQuizModel?.Q4);
        emit(Stu_Submit_Quiz_SuccessState());
      }}).catchError((Error){
      print(Error.toString());
      emit(Stu_Submit_Quiz_ErrorState(Error.toString()));
    });
  }





}

