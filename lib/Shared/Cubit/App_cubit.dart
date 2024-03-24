import 'dart:async';
import 'dart:convert';
//import 'dart:html';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:intl/intl.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:university_hup/Models/All_News/AllNewsModel.dart';
import 'package:university_hup/Models/INS_Model/INS_course_model.dart';
import 'package:university_hup/Models/INS_Model/currentinfo_ins_model.dart';
import 'package:university_hup/Models/STU_Model/CourseModel/STU_Course_Assign_Model.dart';
import 'package:university_hup/Models/STU_Model/CourseModel/Stu_All_Courses_Model.dart';
import 'package:university_hup/Models/STU_Model/CourseModel/Stu_Course_MaterialModel.dart';
import 'package:university_hup/Models/STU_Model/CourseModel/Stu_Course_Quiz_Model.dart';
import 'package:university_hup/Models/STU_Model/User_Model/STU_Login_Model.dart';
import 'package:university_hup/Modules/Navigation_Screens/Calendar_Screen.dart';
import 'package:university_hup/Modules/Navigation_Screens/Course_Screen.dart';
import 'package:university_hup/Modules/Navigation_Screens/Dashboard_Screen.dart';
import 'package:university_hup/Modules/Navigation_Screens/News_Screen.dart';

import 'package:university_hup/Modules/Navigation_Screens/Profile_Screen.dart';
import 'package:university_hup/Modules/Student/Student_Notification/Assignments_Screen.dart';
import 'package:university_hup/Modules/Student/Student_Notification/Ongoing_Screen.dart';
import 'package:university_hup/Modules/Student/Student_Notification/Quizzes_Screen.dart';
import 'package:university_hup/Modules/Student/Student_Notification/UpcomingCourse_Screen.dart';
import 'package:university_hup/Shared/constant.dart';
import 'package:university_hup/Shared/remote/DioHelper.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../Models/INS_Model/CourseModel.dart';
import '../../Models/INS_Model/INS_Assign_Model.dart';
import '../../Models/STU_Model/Calender_Model/CalenderMode.dart';
import '../../Models/STU_Model/CourseModel/Stu_Course_Grades_model.dart';
import '../../Models/STU_Model/User_Model/CurrentStudentInfoModel.dart';

import '../../Modules/Student/Student_Quizzes/STU_Quiz_Ques.dart';
import '../Cons_widget.dart';
import 'App_state.dart';

class App_cubit extends Cubit<App_state> {
  App_cubit() : super(App_ini_state());
  static App_cubit get(context) => BlocProvider.of(context);

// Abdelaziz  --------------------------------------------------------------------

  int Nav_Bar_index = 0;
  void Nav_Bar_Function({required int index}) {
    if (index == 2) {
      if(rol=='Student'){
        if(stuAllCoursesModel.length == 0){
          StuGetAllCourses(
            token: token,
          );

        }
      }else{
        if(ins_Courses_Model.length == 0){
          INS_GetAllCourses_Function( token: token,);
        }

      }


    } else if (index == 4) {
      // GetCurrentStudenInfo();
    }
    else if(index == 1){
      // print('News_Table_________________________________________');
      // print(newsmodel.length);
      // print('-----------------------------------------------------');
      // newsmodel.forEach((element) {
      //   print(element.userName);
      // });
      // print('__________________________________________________________________________________');
    }
    Nav_Bar_index = index;
    emit(Nav_Bar_state());
  }


  int more = 2;
  void addmore() {
    if (more == 4) {
    } else {
      more++;
    }

    emit(Defulte_state());
  }

  void minusmore() {
    if (more == 2) {
    } else {
      more--;
    }

    emit(Defulte_state());
  }

  int Nav_HomeBar_index = 0;
  void nav_home_bar_Function({required int index}) {
    Nav_HomeBar_index = index;
    emit(Nav_HomeBar_state());
  }

  List N_HomeScreen = [
    const Ongoing_Screen(),
    const Assignments_Screen(),
    const Quizzes_Screen(),
    const UpcomingCourse_Screen(),
  ];
  List N_HomeScreen_Text = [
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
  List N_HomeScreen_Icon = [
    CircleAvatar(
      radius: 22,
      backgroundColor: Colors.white.withOpacity(.5),
      child: FaIcon(
        FontAwesomeIcons.bookBookmark,
        color: c1,
        size: 25,
      ),
    ),
    CircleAvatar(
      radius: 22,
      backgroundColor: Colors.white.withOpacity(.5),
      child: FaIcon(
        FontAwesomeIcons.penClip,
        color: c1,
        size: 25,
      ),
    ),
    CircleAvatar(
      radius: 22,
      backgroundColor: Colors.white.withOpacity(.5),
      child: FaIcon(
        FontAwesomeIcons.featherPointed,
        color: c1,
        size: 25,
      ),
    ),
    CircleAvatar(
      radius: 22,
      backgroundColor: Colors.white.withOpacity(.5),
      child: FaIcon(
        FontAwesomeIcons.book,
        color: c1,
        size: 25,
      ),
    ),
  ];

  int? D_value = 0;
  void SetState_G() {
    emit(stateforDrawer());
  }

// Navigation Bar Start Here >>>>>>>>>>>>>>>>>>>>>>>>>>>>

  bool? isStudent = true;
  void switch_isStudent_Fun({required bool is_studentvalue}) {
    isStudent = is_studentvalue;
    emit(Switch_stud_ins_bool_state());
  }

  List<Widget> Nav_Bar_Items_List() {
    return [

      const Dashboard_Screen(),
       Home_screen(),
      STU_Lecture_Screen(),
       Calendar_screen(),
      const Profile_screen(),
    ];
  }




  //-------floating action visibility -----------------
  bool visiblity=false;
  FaIcon? floatIcon= FaIcon(FontAwesomeIcons.plus);
  void ChangeVisibility({
    bool? isShow,
    FaIcon? icon,
}){
    visiblity=isShow!;
    floatIcon=icon;

    emit(ChangeFloatingVisibility_State());
  }



// Navigation Bar End Here >>>>>>>>>>>>>>>>>>>>>>>>>>>>
// Doctor And Engineer Start Here >>>>>>>>>>>>>>>>>>>>>>>>>>>>

  bool DE = true;
  void D_E_Function({required bool de}) {
    DE = de;
    print(DE);
    emit(D_E_state());
  }

  bool switch_quiz = true;
  void switch_quiz_Function({required bool s}) {
    switch_quiz = s;
    emit(D_E_state());
  }

// ALFY  --------------------------------------------------------------------
//instructor by alfy:
  bool isBottomSheetShown = false;
  IconData fabIcon = Icons.add;

  /*------------------------------------------------------------*/
  List<Widget> items = [
    Row(
      children: [
        TextButton(
            onPressed: () {},
            child: const Text(
              'Edit',
              style: TextStyle(fontSize: 12),
            )),
        const Icon(Icons.edit, size: 16),
      ],
    ),
    Row(
      children: [
        TextButton(
            onPressed: () {},
            child: const Text(
              'material name 1',
              style: TextStyle(fontSize: 12),
            )),
        const Icon(
          CupertinoIcons.delete,
          size: 16,
        ),
      ],
    ),
  ];
  Widget? Material_More_selectedItem;

  void ChangeBottomSheetState({
    required bool isShow,
    required IconData icon,
  }) {
    isBottomSheetShown = isShow;
    fabIcon = icon;
    emit(ChangeBottomSheet_State());
  }

  void change_more_list_visible(Widget? newValue) {
    Material_More_selectedItem = newValue!;
    emit(ChangeListVisible_State());
  }

  /*-------------------add lecture screen-------------------*/
  List<PlatformFile> all_files_List = [];
  void pickFile() async {
    emit(AddFile_Loading_State());
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowMultiple: false,
      allowedExtensions: ['png', 'cdr', 'psd', 'jpeg', 'png', 'pdf'],
    );
    if (result != null) {
      all_files_List = result.files; //Adding all files to all_files list
          emit(AddFile_Success_State());
    } else {
      emit(AddFile_Error_State());
    }
  }
  //
  // void add_NewFile_To_FIles_List() async {
  //   emit(AddNewFile_Loading_State());
  //   FilePickerResult? result = await FilePicker.platform.pickFiles(
  //     type: FileType.custom,
  //     allowMultiple: true,
  //     allowedExtensions: ['png', 'cdr', 'psd', 'jpeg', 'png', 'pdf'],
  //   );
  //   if (result != null) {
  //     result.files.forEach((element) {
  //       all_files_List.add(element);
  //     });
  //     emit(AddNewFile_Success_State());
  //   } else {
  //     // User canceled the picker
  //     emit(AddNewFile_Error_State());
  //   }
  // }

  void openFile_Fun({File? file,String? filePath}) {
    emit(ShowFile_Loading_State());
    print('file path : $filePath');
    OpenFile.open(file?.path??filePath).then((value) {
      emit(ShowFile_Success_State());
    }).catchError((error) {
      print('opening file error${error}');
      emit(ShowFile_Error_State());
    });
  }


//   static Future<void> openURL(String url) async {
//     final Uri _url = Uri.parse(url);
//
//     print('ss $_url');
// print(url);
//    // bool iscanLaunchUrl = await canLaunchUrl(_url);
//
//     //if (iscanLaunchUrl) {
//       print('ssdd $_url');
//       await launchUrl(_url).then((value) {
//         print('success');
//       }).catchError((error){
//         print('ddddddddddddddddddddd');
//         print(error);
//         print('Could not launch $url');
//       });
//   //  } else {
//
//  //   }
//   }


  String pathPDF = "";

//https://cse.unl.edu/~cbourke/ComputerScienceOne.pdf

   Future<void> loadPDF({
    required networkfile,
}) async {
     emit(DownloadFile_Loading_State());
      var dir = await getApplicationDocumentsDirectory();
      print(dir);
      String filePath = "${dir.path}/${networkfile.split('/').last}";
      print('from cubit:$networkfile');
      // Download file using Dio
       Dio_Helper.DownloadFile(
           networkfilePath:networkfile,
           localfilePath:filePath,token: token ).then((value) {
        print('dddd${value.data}');
        pathPDF = filePath;
        emit(DownloadFile_Success_State());

        openFile_Fun(filePath: pathPDF);
      }).catchError((error){
        print(error);
        emit(DownloadFile_Error_State());
      });


  }





  // Future<File> createFileOfPdfUrl() async {
  //
  //   createFileOfPdfUrl().then((f) {
  //     pathPDF = f.path;
  //     print(pathPDF);
  //   });
  //   final url = "http://africau.edu/images/default/sample.pdf";
  //   final filename = url.substring(url.lastIndexOf("/") + 1);
  //   var request = await Dio().get(url);
  //   var response = await request.close();
  //   String dir = (await getApplicationDocumentsDirectory()).path;
  //
  //   File file = new File('$dir/$filename');
  //   file.writeAsBytes(request.)
  //   var bytes = await consolidateHttpClientResponseBytes(response);
  //
  //   await file.writeAsBytes(bytes);
  //
  //   return file;
  // }


  /*-------------add quiz --------------*/

  final List<String> materil_for_quiz = [
    'Material name 1',
    'Material name 2',
    'Material name 3',
    'Material name 4',
    'Material name 5',
  ];

  String? selectedValue;
  void selected_item_quiz(String value) {
    selectedValue = value;
    emit(select_item_add_quiz_State());
  }

  int hours = 0;
  int minutes = 0;
  int seconds = 0;
  late Timer timer;

  String _formatTime() {
    String formattedHours = DateFormat('HH').format(DateTime(0, 0, 0, hours));
    String formattedMinutes =
        DateFormat('mm').format(DateTime(0, 0, 0, 0, minutes));
    String formattedSeconds =
        DateFormat('ss').format(DateTime(0, 0, 0, 0, 0, seconds));

    return '$formattedHours:$formattedMinutes:$formattedSeconds';
  }

  // Future<File> saveFile_Fun(PlatformFile file)async{
  //   final appStorage= await getApplicationDocumentsDirectory();
  //   final newFIle=File('${appStorage.path}/${file.name}');
  //   return File(file.path!).copy(newFIle.path);
  // }

/*switch betwean assignment pending or completed*/

  bool pend = true;
  void pend_Complete_Function({required bool pe}) {
    pend = pe;
    print(pend);
    emit(pend_complete_state());
  }

//--------STU  Upload assignment -------------------
  List<File> all_assign_files_List = [];
  File? assignFile;
  void pick_assign_File() async {
    emit(AddFile_Assign_Loading_State());

    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowMultiple: false,
      allowedExtensions: ['png', 'cdr', 'psd', 'jpeg', 'png', 'pdf'],
    );
    if (result != null) {
      result.files.forEach((element) {
        all_assign_files_List.add(File(element.path!));
      });
      emit(AddFile_Assign_Success_State());
    } else {
      emit(AddFile_Assign_Error_State());
    }
  }

  void Add_NewFile_To_Assign_List() async {
    emit(AddNewFile_Assign_Loading_State());
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowMultiple: true,
      allowedExtensions: ['png', 'cdr', 'psd', 'jpeg', 'png', 'pdf'],
    );
    if (result != null) {
      result.files.forEach((element) {
        all_assign_files_List.add(File(element.path!));
      });
      emit(AddNewFile_Assign_Success_State());
    } else {
      // User canceled the picker
      emit(AddNewFile_Assign_Error_State());
    }
  }

  //-----------------STU Quizzes------------
  List<bool> stu_Quiz_IsComplete = [false, false, true];
  List<bool> stu_Quiz_isStart = [true, false, true];

  List<String> stu_Quiz_Ques_lis = [
    'What is Parallel Computing?',
    'What are the main challenges in Parallel Programming?',
    'Compare and Contrast Shared Memory and Distributed Memory Models?',
    'Explain the concept of Race Conditions and how they can be mitigated?',
    'Compare and Contrast Shared Memory and Distributed Memory Models?'
  ];

  final List<String> stu_Quiz_Ques_options = [
    'Option 1',
    'Option 2',
    'Option 3',
    'Option 4'
  ];
  //String quizAnswerSelected = '';
  void Quiz_Select_answer(index, value) {
    allquizAnswers![index] = value;
    //quizAnswerSelected=value;
    emit(Change_Quiz_Answer_State());
  }

  //----------------------Grades--------------------------
  List<int> stuAllGrades = [10, 30, 50, 45, 35];
//----------------------------------------------------------

//------------API ------------------------------------
//   String? Tokenn;
  STU_Login_Model? stu_login_Model;
  void UserLogin({
    required String email,
    required String password,
  }) {
    emit(STU_LoginLoadingState());
    Dio_Helper.PostData(url: LOGIN, data: {
      'email': email,
      'password': password,
    }).then((value) {
      stu_login_Model = STU_Login_Model.fromJson(value.data);
      token= stu_login_Model?.token;
      rol=stu_login_Model?.userRole;
      // print('token:${token}');
      emit(STU_LoginSuccessState(stu_login_Model!));
      if(rol=='Student'){
        GetCurrentStudenInfo();
        GetAllNews();
      }
      else{
        GetCurrentInfo_ins_Function();
        GetAllNews();
      }
    }).catchError((Error) {
      print(Error.toString());
      emit(STU_LoginErrorState(Error.toString()));
    });
  }


  CurrentStudentInfoModel? studentInfoModel;
  Future<void> GetCurrentStudenInfo(
      //  required token,
      ) async {
    emit(Get_STU_Info_LoadingState());
   await Dio_Helper.GetData(
      url: STU_INFO,
      token: token,
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
    InsertToDataBase_User_Table();
  }

  currentinfo_ins_model? instructorInfoModel;
  Future<void> GetCurrentInfo_ins_Function(
      //  required token,
      ) async {
    emit(Get_INS_Info_LoadingState());
    await Dio_Helper.GetData(
      url: INS_INFO,
      token: token,
    ).then((value) {
      if (value.statusCode == 200) {
        print('get Instructor info true');
        instructorInfoModel = currentinfo_ins_model.fromJson(value.data);
        print(instructorInfoModel?.fullName);
        emit(Get_INS_Info_SuccessState());
      }
    }).catchError((error) {
      emit(Get_INS_Info_ErrorState(error.toString()));
      print(error.toString());
    });
    // InsertToDataBase_User_Table();
  }

  //------------------------Get all news ---------------------
  List<GetAllNewsModel> allNewsModel = [];

  Future<void> GetAllNews() async {
    // print('start get news from api ');
    print(allNewsModel.length );
    allNewsModel=[];
    if (allNewsModel.isEmpty) {
      // print('start get news from api -->');
      emit(Get_All_NewsLoadingState());
     await Dio_Helper.GetData(url: NEWS).then((value) {
        if (value.statusCode == 200) {
          // print('git news success');
          List Json = value.data;
          for (var element in Json) {
            allNewsModel.add(GetAllNewsModel.fromJson(element));
          }
          emit(Get_All_NewsSuccessState(allNewsModel));
        }
        allNewsModel.forEach((element) {
          // print('content 1------------: ${element.content}');
        });


      }).catchError((error) {
        emit(Get_All_NewsErrorState(error.toString()));

        print(error.toString());
      });
      InsertToDataBase_News_Table();

    }

  }

  List<Stu_GetAllCoursesModel> stuAllCoursesModel = [];

  void StuGetAllCourses({
    required token,
  }) {
    if (true) {
      emit(Stu_Get_All_Courses_LoadingState());
      Dio_Helper.GetData(
        url: STU_COURSES,
        token: token,
      ).then((value) {
        if (value.statusCode == 200) {
          stuAllCoursesModel = [];
          // print('get course true');
          List Json = value.data;
          for (var element in Json) {
            stuAllCoursesModel.add(Stu_GetAllCoursesModel.fromJson(element));
          }
          emit(Stu_Get_All_Courses_SuccessState(stuAllCoursesModel));

        }
        InsertToDataBase_Course_Table();
        // stuAllCoursesModel.forEach((element) {
        //   print('name------- ${element.name}');
        // });

      }).catchError((error) {
        emit(Stu_Get_All_Courses_ErrorState(error.toString()));
        print(error.toString());
      });
    }
  }

  List<INS_Course_Model> ins_Courses_Model = [];

  void INS_GetAllCourses_Function({
    required token,
  }) {
    if (true) {
      emit(INS_Get_All_Courses_LoadingState());
      Dio_Helper.GetData(
        url: INS_COURSES,
        token: token,
      ).then((value) {
        if (value.statusCode == 200) {
          ins_Courses_Model = [];
          // print('get course true');
          List Json = value.data;
          for (var element in Json) {
            ins_Courses_Model.add(INS_Course_Model.fromJson(element));
          }
          emit(INS_Get_All_Courses_SuccessState(ins_Courses_Model));

        }
        InsertToDataBase_Course_Table();
        // stuAllCoursesModel.forEach((element) {
        //   print('name------- ${element.name}');
        // });
      }).catchError((error) {
        emit(INS_Get_All_Courses_ErrorState(error.toString()));
        print(error.toString());
      });
    }
  }

  String? currentCourseName;
  String? currentCycleId;
  bool isCycleIdChange = false;

  // String? cycleId;
  List<GetCourseMaterialsModel> stuCoursesMatrialModel = [];
  List<GetCourseMaterialsModel> stuLECTUREModel = [];
  List<GetCourseMaterialsModel> stuLABModel = [];
  bool? isLec;

  List<InsAllLecFoldersModel> insAllLecFoldersModel = [];
  List<InsAllLecFoldersModel> insLECTUREModel = [];
  List<InsAllLecFoldersModel> insLABModel = [];

  void GetCourseMaterials() {
        if(rol=='Student') {
          if (stuCoursesMatrialModel.isEmpty || isCycleIdChange == true) {
            emit(Stu_Get_Course_Material_LoadingState());
            Dio_Helper.GetData(
              url: 'Students/CurrentCourseMaterial?CycleId=CS101FALL2024',
              //STU_COURSE_MATERIAL,
              token: token,
            ).then((value) {
              if (value.statusCode == 200) {
                print('get course material true');
                List Json = value.data;
                for (var element in Json) {
                  stuCoursesMatrialModel
                      .add(GetCourseMaterialsModel.fromJson(element));
                }
                emit(Stu_Get_Course_Material_SuccessState(
                    stuCoursesMatrialModel));
              }
              stuCoursesMatrialModel.forEach((element) {
                if (element.type == 'Lecture') {
                  stuLECTUREModel.add(element);
                } else if (element.type == 'Lab') {
                  stuLABModel.add(element);
                }
              }
              );
              print('lectures:');
              stuLECTUREModel.forEach((element) {
                print(element.lectureId);
              });
              print('Labs:');
              stuLABModel.forEach((element) {
                print(element.lectureId);
              });
            }).catchError((error) {
              emit(Stu_Get_Course_Material_ErrorState(error.toString()));
              print(error.toString());
            });
          }
          isCycleIdChange = false;
        }else {
          if (insAllLecFoldersModel.isEmpty || isCycleIdChange == true) {
            emit(Ins_Get_All_Lec_Folders_LoadingState());
            Dio_Helper.GetData(
              url: 'Instructor/CurrentCourseMaterial?CycleId=$currentCycleId',
              token: token, //'eyJhbGciOiJodHRwOi8vd3d3LnczLm9yZy8yMDAxLzA0L3htbGRzaWctbW9yZSNobWFjLXNoYTI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9naXZlbm5hbWUiOiJzYXJhIHNoZWhhYiIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL2VtYWlsYWRkcmVzcyI6IlNhcmFAZ21haWwuY29tIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy9yb2xlIjoiRG9jdG9yIiwiZXhwIjoxNzEwOTc3Njc4LCJpc3MiOiJodHRwczovL2xvY2FsaG9zdDo3Mjg2IiwiYXVkIjoiTXlTZWN1cmVkQXBpVXNlcnMifQ.7A0lYXtifSOCqyvjMhYfB3yjivRSyW57Ri_M8dlqN0w',
            ).then((value) {
              if (value.statusCode == 200) {
                insAllLecFoldersModel = [];
                // print('get course true');
                List Json = value.data;
                for (var element in Json) {
                  insAllLecFoldersModel.add(
                      InsAllLecFoldersModel.fromJson(element));
                }
                emit(Ins_Get_All_Lec_Folders_SuccessState());
              }
              //  InsertToDataBase_Course_Table();
              insAllLecFoldersModel.forEach((element) {
                if (element.type == 'Lecture') {
                  insLECTUREModel.add(element);
                } else if (element.type == 'Lab') {
                  insLABModel.add(element);
                }
              }
              );
              insAllLecFoldersModel.forEach((element) {
                print('name------- ${element.lectureName}');
              });
            }).catchError((error) {
              emit(Ins_Get_All_Lec_Folders_ErrorState());
              print(error.toString());
            });
          }
          isCycleIdChange = false;
        }
  }

  List<GetCourseMaterialFileModel> stuCoursesMatrialFileModel = [];
  List<InsLecFilesModel> insCoursesMatrialFileModel = [];
  // List<GetCourseMaterialsModel> stuLECTUREModel=[];
  // List<GetCourseMaterialsModel> stuLABModel=[];

  void StuGetCourseMaterialFiles({
    //required token,
    required lecId,
  }) {
    if(rol=='Studen'){
    stuCoursesMatrialFileModel = [];
    // print('lecId=${lecId}');
    //if (stuCoursesMatrialModel.isEmpty || isCycleIdChange==true){
    emit(Stu_Get_Course_Material_File_LoadingState());
    Dio_Helper.GetData(
      url: 'Students/Getfilesoflecture?lectureId=${lecId}',
      //STU_COURSE_MATERIAL,
      token: token,
    ).then((value) {
      if (value.statusCode == 200) {
        print('get course material File true');
        List Json = value.data;
        for (var element in Json) {
          stuCoursesMatrialFileModel
              .add(GetCourseMaterialFileModel.fromJson(element));
        }
        emit(Stu_Get_Course_Material_File_SuccessState());
      }
      print(stuCoursesMatrialFileModel.length);
      print('Files:');
      stuCoursesMatrialFileModel.forEach((element) {
        print(element.fileName);
      });
    }).catchError((error) {
      emit(Stu_Get_Course_Material_File_ErrorState(error.toString()));
      print(error.toString());
    });
    //}
    //isCycleIdChange=false;
  }else{
      insCoursesMatrialFileModel = [];
      // print('lecId=${lecId}');
      //if (stuCoursesMatrialModel.isEmpty || isCycleIdChange==true){
      emit(Stu_Get_Course_Material_File_LoadingState());
      Dio_Helper.GetData(
        url: 'Instructor/Getfilesoflecture?lectureId=${lecId}',
        //STU_COURSE_MATERIAL,
        token: token,
      ).then((value) {
        if (value.statusCode == 200) {
          print('get course material File true');
          List Json = value.data;
          for (var element in Json) {
            insCoursesMatrialFileModel
                .add(InsLecFilesModel.fromJson(element));
          }
          emit(Stu_Get_Course_Material_File_SuccessState());
        }
        print(insCoursesMatrialFileModel.length);
        print('Files:');
        insCoursesMatrialFileModel.forEach((element) {
          print(element.filePath);
        });
      }).catchError((error) {
        emit(Stu_Get_Course_Material_File_ErrorState(error.toString()));
        print(error.toString());
      });
    }

  }


  //------------ins upload file ---------------
 // File? insfile;
  String? folderId;
  void insuploadLecFile({
    required String fileName,
}) {
    // print('All files-------------- ${all_assign_files_List}');
    print('task id : ${taskId}');
    print('All files-------------- ${all_assign_files_List}');
    all_assign_files_List=[];
    emit(Stu_Submit_Task_LoadingState());
    Dio_Helper.PostListFileData(
        token: token,
        url: 'Instructor/UploadLectureFile?lectureId=$folderId&file_Name=$fileName',
        files: all_assign_files_List
    )
        .then((value) {
      if (value.statusCode == 200) {
        print('post assign true');
        //   print(value.data);
        String json = value.data;
        print(json);
        flutterToast(msg: json, backColor: Colors.blue);
        emit(Stu_Submit_Task_SuccessState());
      }
    }).catchError((Error) {
      print(Error.toString());
      flutterToast(
          msg: 'Error to upload your file , please try again',
          backColor: Colors.blue);

      emit(Stu_Submit_Task_ErrorState(Error.toString()));
    });
  }

  //----------------------STU assign -----------------

  String? assignName;
  String? taskId;
  List<STU_Course_Assign_Model> stuCoursesAssignModel = [];
  List<STU_Course_Assign_Model> insCoursesAssignModel = [];
  void StuGetCourseAssign(
      //required token,
      // required cycleId,
      ) {
    // stuCoursesAssignModel=[];
    if(rol=='Student') {
      if (stuCoursesAssignModel.isEmpty || isCycleIdChange == true) {
        emit(Stu_Get_Course_Assign_LoadingState());
        Dio_Helper.GetData(
          url: 'Students/CurrentCourseTasks?CycleId=${currentCycleId}',
          //STU_COURSE_MATERIAL,
          token: token,
        ).then((value) {
          if (value.statusCode == 200) {
            print(value.data);
            List Json = value.data;
            //  for (var element in  Json) {
            Json.forEach((element) {
              stuCoursesAssignModel
                  .add(STU_Course_Assign_Model.fromJson(element));
            });
            print('get course Assign true');
            emit(Stu_Get_Course_Assign_SuccessState());
          }
          stuCoursesAssignModel.forEach((element) {
            print('task name------- ${element.taskName}');
          });
        }).catchError((error) {
          emit(Stu_Get_Course_Assign_ErrorState(error.toString()));
          print(error.toString());
        });
      }
    }else
      {
        emit(Stu_Get_Course_Assign_LoadingState());
        Dio_Helper.GetData(
          url: 'Instructor/GetCurrentCourseTasks?cycleId=${currentCycleId}',
          //STU_COURSE_MATERIAL,
          token: token,
        ).then((value) {
          if (value.statusCode == 200) {
            print(value.data);
            List Json = value.data;
            //  for (var element in  Json) {
            Json.forEach((element) {
              insCoursesAssignModel
                  .add(STU_Course_Assign_Model.fromJson(element));
            });
            print('get course Assign true');
            emit(Stu_Get_Course_Assign_SuccessState());
          }
          insCoursesAssignModel.forEach((element) {
            print('task name------- ${element.taskName}');
          });
        }).catchError((error) {
          emit(Stu_Get_Course_Assign_ErrorState(error.toString()));
          print(error.toString());
        });
      }
    isCycleIdChange = false;

  }

  //-----------get task ddta---------------
  GetTaskDataModel? stuAssignDataModel;
  void StuGetAssignData() {
    print('task id:::${taskId}');
//    if(stuCoursesAssignModel.isEmpty || isCycleIdChange==true) {
    emit(Stu_Get_Course_Assign_Data_LoadingState());
    Dio_Helper.GetData(
      url: 'Students/GetAssignment?taskId=${taskId}',
      token: token,
    ).then((value) {
      if (value.statusCode == 200) {
        stuAssignDataModel = GetTaskDataModel.fromJson(value.data);
        print('get course Assign true');
        emit(Stu_Get_Course_Assign_Data_SuccessState());
      }
      print('task name------- ${stuAssignDataModel?.filePath}');
    }).catchError((error) {
      emit(Stu_Get_Course_Assign_Data_ErrorState(error.toString()));
      print(error.toString());
    });
    //}
    // isCycleIdChange=false;
  }

  //-------------------------submit Task-----------------
 // File? file;
  void SumitTask() {
    // print('All files-------------- ${all_assign_files_List}');
    print('task id : ${taskId}');
    print('All files-------------- ${all_assign_files_List}');
    emit(Stu_Submit_Task_LoadingState());
    Dio_Helper.PostListFileData(
            token: token,
            url: 'Students/File/Upload?taskid=${taskId}',
            files: all_assign_files_List)
        .then((value) {
      if (value.statusCode == 200) {
        print('post assign true');
        //   print(value.data);
        String json = value.data;
        print(json);
        flutterToast(msg: '$json', backColor: Colors.blue);
        emit(Stu_Submit_Task_SuccessState());
      }
    }).catchError((Error) {
      print(Error.toString());
      flutterToast(
          msg: 'Error to upload you task , please try again',
          backColor: Colors.blue);

      emit(Stu_Submit_Task_ErrorState(Error.toString()));
    });
  }

//-------------Quiz------------------------------

  List<STU_Quiz_Model> stuCoursesQuizlModel = [];
  void StuGetCourseQuiz() {
    if (stuCoursesQuizlModel.isEmpty || isCycleIdChange == true) {
      emit(Stu_Get_Course_Quiz_LoadingState());
      Dio_Helper.GetData(
        url: 'Students/CurrentCourseQuizzes?cycleId=${currentCycleId}',
        //STU_COURSE_MATERIAL,
        token: token,
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
    isCycleIdChange = false;
  }

  List<Questions> questionModel = [];

  List<String>? allquizAnswers;

  String? currentQuizId;
  void StuGetQuizDataById() {
    emit(Stu_Get_Quiz_Data_LoadingState());
    Dio_Helper.GetData(
      url: 'Students/Quiz?quizId=${currentQuizId}',
      //STU_COURSE_MATERIAL,
      token: token,
    ).then((value) {
      if (value.statusCode == 200) {
        print('get course Quiz true');
        List ques = value.data['questions'];
        for (var element in ques) {
          questionModel.add(Questions.fromJson(element));
        }

        allquizAnswers = List<String>.generate(
          questionModel.length,
          (index) => '',
        );
        emit(Stu_Get_Quiz_Data_SuccessState());
      }
      questionModel.forEach((element) {
        print('Quiz ques------- ${element.text}');
      });
    }).catchError((error) {
      emit(Stu_Get_Quiz_Data_ErrorState(error.toString()));
      print(error.toString());
    });
    questionModel = [];
  }

  List<Map<String, dynamic>> submitQuizAnswers = [];
  int? quizResult = 0;
  List<Map<String, dynamic>> QuizAnswersResponse = [];
  void SumitQuiz() {
    QuizAnswersResponse = [];
    emit(Stu_Submit_Quiz_LoadingState());

    for (int i = 0; i < questionModel.length; i++) {
      submitQuizAnswers.add(
          {'questionId': questionModel[i].id, 'answerId': allquizAnswers![i]});
    }
    emit(Stu_Assign_Quiz_Answer_SuccessState());
    Dio_Helper.PostData(token: token, url: SUBMITQUIZ, data: {
      'quizId': currentQuizId,
      'answers': submitQuizAnswers,
    }).then((value) {
      if (value.statusCode == 200) {
        print('submit Quiz true');
        List json = value.data;

        for (var element in json) {
          print(element.values);
          QuizAnswersResponse.add({'${element.keys}': element.values});
        }
        for (var item in QuizAnswersResponse) {
          if (item.values.toString() == '((true))') {
            quizResult = quizResult! + 1;
          }
        }
        print('quiz result :${quizResult}');
        emit(Stu_Submit_Quiz_SuccessState());
      }
    }).catchError((Error) {
      print(Error.toString());
      emit(Stu_Submit_Quiz_ErrorState(Error.toString()));
    });
  }

  //-------------STU get all grades for current course------------

  List<GetCourseGradesModel> courseGradesModel = [];

  void GetStuCourseGrade() {
    // courseGradesModel=[];
    if (courseGradesModel.isEmpty || isCycleIdChange == true) {
      emit(Stu_Get_Course_Grades_LoadingState());
      Dio_Helper.GetData(
        url: 'Students/GetAllGradesForCurrentCourse?courseId=${currentCycleId}',
        token: token,
      ).then((value) {
        if (value.statusCode == 200) {
          List Json = value.data;
          for (var element in Json) {
            courseGradesModel.add(GetCourseGradesModel.fromJson(element));
          }
          print('Get course grades successful');
          print((courseGradesModel.length));
          courseGradesModel.forEach((element) {
            print(element.title);
          });
          emit(Stu_Get_Course_Grades_SuccessState());
        }
      }).catchError((error) {
        print(error);
        emit(Stu_Get_Course_Grades_ErrorState(error));
      });
      // courseGradesModel=[];
    }
    isCycleIdChange = false;
  }
  //---------------Calender here ----------------


  void AddEventToCalender({
    required startDate,
    required endDate,
    required eventBody,
}) {
    print(' start ${startDate.toString()}');
    print('end $endDate');
    emit(Stu_Add_Event_LoadingState());
    Dio_Helper.PostData(token: token, url: ADDEVENT, data: {
      'startDate': startDate.toString(),//'2024-03-28T04:12:00.000'
      'endDate': endDate.toString(),
      'body': eventBody,
    }).then((value) {
      if (value.statusCode == 200) {
        print('Add Event true');
        String json = value.data;

        print(json);
        flutterToast(msg: '${json}', backColor: Colors.green);
        emit(Stu_Add_Event_SuccessState());
      }
    }).catchError((Error) {
      print(Error.toString());
      emit(Stu_Add_Event_ErrorState(Error.toString()));
    });
  }



//---------Get All Events ------------------
  List<GetAllCalenderEvents>getAllCalenderEvents=[];
  void GetStuCalenderEvents() {
    // courseGradesModel=[];
      emit(Stu_Get_Calener_Events_LoadingState());
      Dio_Helper.GetData(
        url: GETCALENDER,
        token: token,
      ).then((value) {
        if (value.statusCode == 200) {
          List Json = value.data;
          for (var element in Json) {
            getAllCalenderEvents.add(GetAllCalenderEvents.fromJson(element));
          }
          print('Get Calender event successful');
          print((courseGradesModel.length));
          getAllCalenderEvents.forEach((element) {
            print(element.body);
          });
          emit(Stu_Get_Calener_Events_SuccessState());
        }
      }).catchError((error) {
        print(error);
        emit(Stu_Get_Calener_Events_ErrorState(error));
      });
      // courseGradesModel=[];

  }


  List<GetCalenderDayEventModel>getAllCalenderDayEvent=[];
  void GetStuCalenderDayEvent(
   // required start,
   // required end,
      ) {
    getAllCalenderDayEvent=[];
    print('start date :::::::$selctedDay');
    print('eeeeeeee:::::${endDate}');
    // courseGradesModel=[];
    emit(Stu_Get_Calener_Day_Events_LoadingState());
    Dio_Helper.GetData(
      url: 'Calendar/GetByStartAndEnd?start=$selctedDay&end=$endDate',
      token: token,
    ).then((value) {
      if (value.statusCode == 200) {
        List Json = value.data;
        print(Json);
        for (var element in Json) {
          getAllCalenderDayEvent.add(GetCalenderDayEventModel.fromJson(element));
        }
        print('Get Calender Day events successful');
        print((getAllCalenderDayEvent.length));
        getAllCalenderDayEvent.forEach((element) {
          print('event ${element.body}');
        });
        emit(Stu_Get_Calener_Day_Events_SuccessState());
      }
    }).catchError((error) {
      print(error);
      emit(Stu_Get_Calener_Day_Events_ErrorState(error));
    });
    // courseGradesModel=[];

  }
//-----------change selected index--------
  int selectedIndex=0;
  void changeSelectedIndex_Calender(int index){
    selectedIndex=index;
    emit(ChangeCalenderIndexState());
  }


  DateTime focusDay=DateTime.now();
  DateTime selctedDay=DateTime.now();
  String? endDate;
  void SelectCalnderDay({
    required DateTime focusday ,
    required DateTime selectedday ,
}){
    focusDay=focusday;
    selctedDay=selectedday;
    endDate=DateFormat('yyyy-MM-${selctedDay.day+1}THH:mm:ss.SSS').format(selectedday);
    print('end date::::::#$endDate');
    emit(ChangeCalenderDayState());
  }

  //CalendarFormat? calenderFormat;
  bool isMonthFormat=false;
  void changeCalenderFormat()async{
     isMonthFormat =!isMonthFormat;
    emit(ChangeCalenderFormatState());
  }


  String ?startTime;
  String ?endTime;
  // void ChangeStartAndEndDate(){
  //   startTime='${DateFormat("yyyy-MM-dd").format(selctedDay)}'
  // }



  //------------------------INSTRUCTOR----------------
  //--------------------------------------------------
  //--------------------------------------------------


  // void insGetAllLecFolders({
  //   required token,
  // }) {
  //   if (true) {
  //     emit(Ins_Get_All_Lec_Folders_LoadingState());
  //     Dio_Helper.GetData(
  //       url: STU_COURSES,
  //       token: 'eyJhbGciOiJodHRwOi8vd3d3LnczLm9yZy8yMDAxLzA0L3htbGRzaWctbW9yZSNobWFjLXNoYTI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9naXZlbm5hbWUiOiJzYXJhIHNoZWhhYiIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL2VtYWlsYWRkcmVzcyI6IlNhcmFAZ21haWwuY29tIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy9yb2xlIjoiRG9jdG9yIiwiZXhwIjoxNzEwOTc3Njc4LCJpc3MiOiJodHRwczovL2xvY2FsaG9zdDo3Mjg2IiwiYXVkIjoiTXlTZWN1cmVkQXBpVXNlcnMifQ.7A0lYXtifSOCqyvjMhYfB3yjivRSyW57Ri_M8dlqN0w',
  //     ).then((value) {
  //       if (value.statusCode == 200) {
  //         insAllLecFoldersModel = [];
  //         // print('get course true');
  //         List Json = value.data;
  //         for (var element in Json) {
  //           insAllLecFoldersModel.add(InsAllLecFoldersModel.fromJson(element));
  //         }
  //
  //
  //         emit(Ins_Get_All_Lec_Folders_SuccessState());
  //       }
  //     //  InsertToDataBase_Course_Table();
  //       insAllLecFoldersModel.forEach((element) {
  //         print('name------- ${element.lectureName}');
  //       });
  //
  //     }).catchError((error) {
  //       emit(Ins_Get_All_Lec_Folders_ErrorState());
  //       print(error.toString());
  //     });
  //   }
  // }












// connection here ------------------------------------------------------------

  // Future<bool> connenction =  InternetConnectionChecker().hasConnection;


  Database? database;
  String? User_Table = 'User';
  String? News_Table = 'News';
  String? Course_Table = 'Course';


  void CreateDateBase() async {
    database = await openDatabase(
      'Local_DB.db',
      version: 1,
      onCreate: (database, version) async {
        print('_____________________________________________________________________________');
        print('database created');
        await database
            .execute('CREATE TABLE User(userId TEXT,fullName TEXT,email TEXT,'
                'phone TEXT,imagePath TEXT,academicId TEXT,'
                'departmentName TEXT,facultyName TEXT,universityName TEXT,level INTEGER)')
            .catchError((error) {
          print('error when created user table ${error.toString()}');
        });
        print('_____________________________________________________________________________');
        emit(CreateTable_state());
        await database
            .execute('CREATE TABLE News(newsId TEXT,content TEXT,filePath TEXT,'
                'facultyId TEXT,createdAt TEXT,userId TEXT,'
                'userName TEXT)')
            .catchError((error) {
          print('error when created News table ${error.toString()}');
        });
        print('_____________________________________________________________________________');
        await database
            .execute('CREATE TABLE Course(cycleId TEXT,name TEXT,hours INTEGER,'
            'imagePath TEXT,instructorFullName TEXT)')
            .catchError((error) {
          print('error when created Course table ${error.toString()}');
        });

        print('_____________________________________________________________________________');
        emit(CreateTable_state());
      },
      onOpen: (database) async {
        print('________________Start Get Data ________________ ');

        GetFromDataBase(database, User_Table!);
        GetFromDataBase(database, News_Table!);
        GetFromDataBase(database, Course_Table!);

      },
    );

    emit(CreateDateBase_state());
  }

  Future InsertToDataBase_User_Table() async {

    if(studentInfoModel!=null){
      print('Start Insert into User table _________________________________');
      await database?.rawDelete('DELETE FROM User').then((value) {
        database?.transaction((txn) async {
          await txn.rawInsert(
              'INSERT INTO User(userId,fullName,email,phone,imagePath,academicId,departmentName,facultyName,universityName,level)'
                  'VALUES("${studentInfoModel!.userId}","${studentInfoModel!.fullName}",'
                  '"${studentInfoModel!.email}","${studentInfoModel!.phone}",'
                  '"${studentInfoModel!.imagePath}","${studentInfoModel!.academicId}",'
                  '"${studentInfoModel!.departmentName}","${studentInfoModel!.facultyName}",'
                  '"${studentInfoModel!.universityName}","${studentInfoModel!.level}")');
        });
        emit(InsertToDataBase_state());
        GetFromDataBase(database,'User');
      });

    }

  }

  Future InsertToDataBase_News_Table() async {
    if(true){
      // print('Start Insert into News table _________________________________');
      await database?.rawDelete('DELETE FROM News').then((value) {
        allNewsModel.forEach((element) {
          database?.transaction((txn) async {
            await txn.rawInsert(
                'INSERT INTO News(newsId,content,filePath,facultyId,createdAt,userId,userName)'
                    'VALUES(${element.newsId},"${element.content}","${element.filePath}","${element.facultyId}","${element.createdAt}","${element.userId}","${element.userName}")');

          });
        });
        emit(InsertToDataBase_state());
        GetFromDataBase(database,'News');
      });

    }


  }

  Future InsertToDataBase_Course_Table() async {
    if(true){
      // print('Start Insert into News table _________________________________');
      await database?.rawDelete('DELETE FROM Course').then((value) {
        stuAllCoursesModel.forEach((element) {
          database?.transaction((txn) async {
            await txn.rawInsert(
                'INSERT INTO Course(cycleId,name,hours,imagePath,instructorFullName)'
                    'VALUES("${element.cycleId}","${element.name}","${element.hours}","${element.imagePath}","${element.instructorFullName}")');


          }).catchError((onError){print(onError.toString());});
          print('${element.cycleId}');
          print('///////////////////////////////////////////////////');
        });

        emit(InsertToDataBase_state());
        GetFromDataBase(database,'Course');
      });

    }


  }

  CurrentStudentInfoModel usermodel= CurrentStudentInfoModel();
  List<GetAllNewsModel> newsmodel=[];
  List<Stu_GetAllCoursesModel>coursemodel=[];
  void GetFromDataBase(database, String tablename) {
    database?.rawQuery('SELECT * FROM $tablename').then((value) {
      if (tablename == User_Table) {
        usermodel= CurrentStudentInfoModel();
        usermodel = CurrentStudentInfoModel.fromJson(value[0]);
      }
      else if(tablename == News_Table){
        newsmodel=[];
        value.forEach((element) {
          newsmodel.add(GetAllNewsModel.fromJson(element));
        });

      }
      else if(tablename == Course_Table){
        coursemodel=[];
        value.forEach((element) {
          coursemodel.add(Stu_GetAllCoursesModel.fromJson(element));
        });
        // print('Course_from get_________________________________________');
        // // print(value);
        // print('-----------------------------------------------------');
        // print(stuAllCoursesModel.length);
        // print(coursemodel.length);
        // coursemodel.forEach((element) {
        //   print(element.name);
        // });
        // print('__________________________________________________________________________________');
      }
    }).catchError((onError){print(onError.toString());});
    emit(GetFromDataBase_state());
  }

  bool connnection=true;
  Future<void> connection_Function() async {
    InternetConnectionChecker().onStatusChange.listen((state) {
      switch (state) {
        case InternetConnectionStatus.connected:
          print('********************************************');
          print('internet connected! :)');
          print('********************************************');
          if(token != null){
            print('********************************************');
            print('GetUserInfo & News & Course After Connected :)');
            print('********************************************');
            if(rol=='Student'){
              GetCurrentStudenInfo();
              StuGetAllCourses(token: token);
              GetAllNews();
            }else{
              GetCurrentInfo_ins_Function();
              INS_GetAllCourses_Function(token: token);
              GetAllNews();
            }



          }

          connnection=true;
          emit(Connection_success_State());
          break;

        case InternetConnectionStatus.disconnected:
          print('********************************************');
          print('No internet :( ');
          print('********************************************');
          connnection=false;
          emit(Connection_failed_State());
          break;
      }
    });
  }



}
