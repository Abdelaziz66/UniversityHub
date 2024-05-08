import 'package:university_hup/Models/All_News/AllNewsModel.dart';
import 'package:university_hup/Models/INS_Model/INS_course_model.dart';
import 'package:university_hup/Models/STU_Model/CourseModel/STU_Course_Assign_Model.dart';
import 'package:university_hup/Models/STU_Model/CourseModel/AllCourcesAdapterModel/Stu_All_Courses_Model.dart';
import 'package:university_hup/Models/STU_Model/CourseModel/materialAdabter/Stu_Course_MaterialModel.dart';
import 'package:university_hup/Models/STU_Model/CourseModel/Stu_Course_Quiz_Model.dart';
import 'package:university_hup/Models/STU_Model/User_Model/STU_Login_Model.dart';



abstract class App_state {}

class App_ini_state extends App_state{}

// Abdelaziz  --------------------------------------------------------------------

class Nav_Bar_state extends App_state{}
class Tab_Bar_state extends App_state{}

class D_E_state extends App_state{}

class Defulte_state extends App_state{}


class Switch_stud_ins_state extends App_state{}

class Switch_stud_ins_bool_state extends App_state{}

class Nav_HomeBar_state extends App_state{}

class stateforDrawer extends App_state{}

class makeListNullState extends App_state{}



// alfy  --------------------------------------------------------------------
//instructor cources state :
class ChangeBottomSheet_State extends App_state{}
class ChangeListVisible_State extends App_state{}
class ChangeFloatingVisibility_State extends App_state{}





class AddFile_Loading_State extends App_state{}
class AddFile_Success_State extends App_state{}
class AddFile_Error_State extends App_state{}

class AddNewFile_Loading_State extends App_state{}
class AddNewFile_Success_State extends App_state{}
class AddNewFile_Error_State extends App_state{}

class ShowFile_Loading_State extends App_state{}
class ShowFile_Success_State extends App_state{}
class ShowFile_Error_State extends App_state{}


class DownloadFile_Loading_State extends App_state{}
class DownloadFile_Success_State extends App_state{}
class DownloadFile_Error_State extends App_state{}

class select_item_add_quiz_State extends App_state{}


class pend_complete_state extends App_state{}

//-----------------------Assignment Files----------

class AddFile_Assign_Loading_State extends App_state{}
class AddFile_Assign_Success_State extends App_state{}
class AddFile_Assign_Error_State extends App_state{}

class AddNewFile_Assign_Loading_State extends App_state{}
class AddNewFile_Assign_Success_State extends App_state{}
class AddNewFile_Assign_Error_State extends App_state{}

//-----------------STU_Quiz_states-------------
class Change_Quiz_Answer_State extends App_state{}

//-----------------------API---------------------
//Login:
class STU_LoginInitialState extends App_state {}

class STU_LoginLoadingState extends App_state {}

class STU_LoginSuccessState extends App_state {
  final STU_Login_Model loginmodel;

  STU_LoginSuccessState(this.loginmodel);

}

class STU_LoginErrorState extends App_state {
  String? error;
  STU_LoginErrorState(this.error);
}
//--------------Current student info
class Get_STU_Info_LoadingState extends App_state {}

class Get_STU_Info_SuccessState extends App_state {
 // List<GetQuizDataModel> quizDatamodel=[];


  Get_STU_Info_SuccessState();

}

class Get_STU_Info_ErrorState extends App_state {
  String? error;
  Get_STU_Info_ErrorState(this.error);
}




//---------get all news--------------

class Get_All_NewsLoadingState extends App_state {}

class Get_All_NewsSuccessState extends App_state {
  List<GetAllNewsModel> newsmodel=[];


  Get_All_NewsSuccessState(this.newsmodel);

}

class Get_All_NewsErrorState extends App_state {
  String? error;
  Get_All_NewsErrorState(this.error);
}

//------------STU get All courses-----------------
class Stu_Get_All_Courses_LoadingState extends App_state {}

class Stu_Get_All_Courses_SuccessState extends App_state {
  List<Stu_GetAllCoursesModel> coursesmodel=[];


  Stu_Get_All_Courses_SuccessState(this.coursesmodel);

}

class Stu_Get_All_Courses_ErrorState extends App_state {
  String? error;
  Stu_Get_All_Courses_ErrorState(this.error);
}
//------------STU get All materials-----------------

class Stu_Get_Course_Material_LoadingState extends App_state {}

class Stu_Get_Course_Material_SuccessState extends App_state {
  List<GetCourseMaterialsModel> coursesmodel=[];


  Stu_Get_Course_Material_SuccessState(this.coursesmodel);

}

class Stu_Get_Course_Material_ErrorState extends App_state {
  String? error;
  Stu_Get_Course_Material_ErrorState(this.error);
}

//-----------------get course material files----------
class Stu_Get_Course_Material_File_LoadingState extends App_state {}

class Stu_Get_Course_Material_File_SuccessState extends App_state {


  Stu_Get_Course_Material_File_SuccessState();

}

class Stu_Get_Course_Material_File_ErrorState extends App_state {
  String? error;
  Stu_Get_Course_Material_File_ErrorState(this.error);
}

//-----------------------stu get course Assign-----

class Stu_Get_Course_Assign_LoadingState extends App_state {}

class Stu_Get_Course_Assign_SuccessState extends App_state {


  Stu_Get_Course_Assign_SuccessState();

}

class Stu_Get_Course_Assign_ErrorState extends App_state {
  String? error;
  Stu_Get_Course_Assign_ErrorState(this.error);
}


//-----------get task data ------------



class Stu_Get_Course_Assign_Data_LoadingState extends App_state {}

class Stu_Get_Course_Assign_Data_SuccessState extends App_state {
//  List<STU_Course_Assign_Model> assignmodel=[];


  Stu_Get_Course_Assign_Data_SuccessState();

}

class Stu_Get_Course_Assign_Data_ErrorState extends App_state {
  String? error;
  Stu_Get_Course_Assign_Data_ErrorState(this.error);
}


//-------------------------subit task--------------


class Stu_Submit_Task_LoadingState extends App_state {}

class Stu_Submit_Task_SuccessState extends App_state {
  //List<GetQuizDataModel> quizDatamodel=[];


  Stu_Submit_Task_SuccessState();

}

class Stu_Submit_Task_ErrorState extends App_state {
  String? error;
  Stu_Submit_Task_ErrorState(this.error);
}


//--------------Course Quiz data-------------

class Stu_Get_Course_Quiz_LoadingState extends App_state {}

class Stu_Get_Course_Quiz_SuccessState extends App_state {
  List<STU_Quiz_Model> quizmodel=[];
  Stu_Get_Course_Quiz_SuccessState(this.quizmodel);
}

class Stu_Get_Course_Quiz_ErrorState extends App_state {
  String? error;
  Stu_Get_Course_Quiz_ErrorState(this.error);
}

//----------------quiz data----------
class Stu_Get_Quiz_Data_LoadingState extends App_state {}

class Stu_Get_Quiz_Data_SuccessState extends App_state {


  Stu_Get_Quiz_Data_SuccessState();

}

class Stu_Get_Quiz_Data_ErrorState extends App_state {
  String? error;
  Stu_Get_Quiz_Data_ErrorState(this.error);
}
//---------submit Quiz-------
class Stu_Submit_Quiz_LoadingState extends App_state {}

class Stu_Assign_Quiz_Answer_SuccessState extends App_state {}


class Stu_Submit_Quiz_SuccessState extends App_state {
  //List<GetQuizDataModel> quizDatamodel=[];


  Stu_Submit_Quiz_SuccessState();

}

class Stu_Submit_Quiz_ErrorState extends App_state {
  String? error;
  Stu_Submit_Quiz_ErrorState(this.error);
}

//--------------get stu course grades -----------

class Stu_Get_Course_Grades_LoadingState extends App_state {}

class Stu_Get_Course_Grades_SuccessState extends App_state {
  Stu_Get_Course_Grades_SuccessState();

}

class Stu_Get_Course_Grades_ErrorState extends App_state {
  String? error;
  Stu_Get_Course_Grades_ErrorState(this.error);
}
//------------------Calender----------------
class Stu_Add_Event_LoadingState extends App_state {}

class Stu_Add_Event_Answer_SuccessState extends App_state {}

class Stu_Add_Event_SuccessState extends App_state {
  //List<GetQuizDataModel> quizDatamodel=[];
  Stu_Add_Event_SuccessState();
}

class Stu_Add_Event_ErrorState extends App_state {
  String? error;
  Stu_Add_Event_ErrorState(this.error);
}

//------------Get calender event--------
class Stu_Get_Calener_Events_LoadingState extends App_state {}

class Stu_Get_Calener_Events_SuccessState extends App_state {
  Stu_Get_Calener_Events_SuccessState();

}

class Stu_Get_Calener_Events_ErrorState extends App_state {
  String? error;
  Stu_Get_Calener_Events_ErrorState(this.error);
}
// -----get event by start  date ------------
class Stu_Get_Calener_Day_Events_LoadingState extends App_state {}

class Stu_Get_Calener_Day_Events_SuccessState extends App_state {
  Stu_Get_Calener_Day_Events_SuccessState();

}

class Stu_Get_Calener_Day_Events_ErrorState extends App_state {
  String? error;
  Stu_Get_Calener_Day_Events_ErrorState(this.error);

}
class ChangeCalenderIndexState extends App_state {}
class ChangeCalenderDayState extends App_state {}
class ChangeCalenderFormatState extends App_state {}

//---------------INSTRUCTOR------------
//------------------------------------
//--------------------------------
class Ins_Get_All_Lec_Folders_LoadingState extends App_state {}

class Ins_Get_All_Lec_Folders_SuccessState extends App_state {
  Ins_Get_All_Lec_Folders_SuccessState();
}
class Ins_Get_All_Lec_Folders_ErrorState extends App_state {}


class Ins_Get_STU_upload_Assign_LoadingState extends App_state {}

class Ins_Get_STU_upload_Assign_SuccessState extends App_state {
  Ins_Get_STU_upload_Assign_SuccessState();
}
class Ins_Get_STU_upload_Assign_ErrorState extends App_state {}


//----------update assign---------------
class Ins_update_Assign_LoadingState extends App_state {}

class Ins_update_Assign_SuccessState extends App_state {
  Ins_update_Assign_SuccessState();
}
class Ins_update_Assign_ErrorState extends App_state {}

//----------delete assign---------------
class Ins_delete_Assign_LoadingState extends App_state {}

class Ins_delete_Assign_SuccessState extends App_state {

}
class Ins_delete_Assign_ErrorState extends App_state {}

//----------add new task--------------------
class Ins_Add_Assign_LoadingState extends App_state {}

class Ins_Add_Assign_SuccessState extends App_state {
  Ins_Add_Assign_SuccessState();
}
class Ins_Add_Assign_ErrorState extends App_state {}

//----------add new Folder--------------------
class Ins_Add_Folder_LoadingState extends App_state {}

class Ins_Add_Folder_SuccessState extends App_state {
  Ins_Add_Folder_SuccessState();
}
class Ins_Add_Folder_ErrorState extends App_state {}

//----------------update folder -------------

class Ins_Update_Folder_LoadingState extends App_state {}

class Ins_Update_Folder_SuccessState extends App_state {
  Ins_Update_Folder_SuccessState();
}
class Ins_Update_Folder_ErrorState extends App_state {}



//-------------delete folder-------------
class Ins_Delete_Folder_LoadingState extends App_state {}

class Ins_Delete_Folder_SuccessState extends App_state {
  Ins_Delete_Folder_SuccessState();
}
class Ins_Delete_Folder_ErrorState extends App_state {}

//------------add file---------------------

class Ins_Add_File_LoadingState extends App_state {}

class Ins_Add_File_SuccessState extends App_state {
  Ins_Add_File_SuccessState();
}
class Ins_Add_File_ErrorState extends App_state {}




//------------Instructor State-----------------
class Get_INS_Info_LoadingState extends App_state {}

class Get_INS_Info_SuccessState extends App_state {
  // List<GetQuizDataModel> quizDatamodel=[];


  Get_INS_Info_SuccessState();

}

class Get_INS_Info_ErrorState extends App_state {
  String? error;
  Get_INS_Info_ErrorState(this.error);
}
//------------STU get All courses-----------------
class INS_Get_All_Courses_LoadingState extends App_state {}

class INS_Get_All_Courses_SuccessState extends App_state {
  List<INS_Course_Model> ins_Courses_Model=[];


  INS_Get_All_Courses_SuccessState(this.ins_Courses_Model);

}

class INS_Get_All_Courses_ErrorState extends App_state {
  String? error;
  INS_Get_All_Courses_ErrorState(this.error);
}


class INS_AllStudent_LoadingState extends App_state {
}
class INS_AllStudent_SuccessState extends App_state {
}

class INS_AllStudent_ErrorState extends App_state {
}


class INS_GradeforStudent_LoadingState extends App_state {
}
class INS_GradeforStudent_SuccessState extends App_state {
}

class INS_GradeforStudent_ErrorState extends App_state {
}



class CreateQuiz_LoadingState extends App_state {
}
class CreateQuiz_SuccessState extends App_state {
}

class CreateQuiz_ErrorState extends App_state {
}


//-----------------Connection---------
class Connection_success_State extends App_state {


}

class Connection_failed_State extends App_state {
}
//------------Offline State-----------------


class CreateDateBase_state extends App_state{}
class CreateTable_state extends App_state{}
class InsertToDataBase_state extends App_state{}
class UpdateDataBase_state extends App_state{}
class GetFromDataBase_state extends App_state{}
class DeleteFromDataBase_state extends App_state{}
class UpdataDataBase2_state extends App_state{}
class UpdataDataBase3_state extends App_state{}



//--------------------------HIVE States--------------------------


class Stu_Add_AllCourses_To_Hive_LoadingState extends App_state {}

class Stu_Add_AllCourses_To_Hive_SuccessState extends App_state {}

class Stu_Add_AllCourses_To_Hive_ErrorState extends App_state {
  String? error;
  Stu_Add_AllCourses_To_Hive_ErrorState(this.error);
}

class Stu_Get_AllCourses_From_Hive_LoadingState extends App_state {}

class Stu_Get_AllCourses_From_Hive_SuccessState extends App_state {}

class Stu_Get_AllCourses_From_Hive_ErrorState extends App_state {
  Stu_Get_AllCourses_From_Hive_ErrorState();
}

//-----------------store lec folders using HIVE -------------------

class Stu_Add_Course_Folders_To_Hive_LoadingState extends App_state {}

class Stu_Add_Course_Folders_To_Hive_SuccessState extends App_state {}

class Stu_Add_Course_Folders_To_Hive_ErrorState extends App_state {
  Stu_Add_Course_Folders_To_Hive_ErrorState();
}

//-----------------------------------------------

class Stu_Get_lec_Folders_From_Hive_LoadingState extends App_state {}

class Stu_Get_lec_Folders_From_Hive_SuccessState extends App_state {}

class Stu_Get_lec_Folders_From_Hive_ErrorState extends App_state {
  Stu_Get_lec_Folders_From_Hive_ErrorState();
}

//------------------store files to HIVE ------------------

class Stu_Add_Course_Files_To_Hive_LoadingState extends App_state {}

class Stu_Add_Course_Files_To_Hive_SuccessState extends App_state {}

class Stu_Add_Course_Files_To_Hive_ErrorState extends App_state {
  Stu_Add_Course_Files_To_Hive_ErrorState();
}

//-----------------------------------------------

class Stu_Get_lec_Files_From_Hive_LoadingState extends App_state {}

class Stu_Get_lec_Files_From_Hive_SuccessState extends App_state {}

class Stu_Get_lec_Files_From_Hive_ErrorState extends App_state {
  Stu_Get_lec_Files_From_Hive_ErrorState();
}
