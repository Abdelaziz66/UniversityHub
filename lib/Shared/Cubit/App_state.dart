import 'package:university_hup/Models/All_News/AllNewsModel.dart';
import 'package:university_hup/Models/STU_Model/CourseModel/STU_Course_Assign_Model.dart';
import 'package:university_hup/Models/STU_Model/CourseModel/Stu_All_Courses_Model.dart';
import 'package:university_hup/Models/STU_Model/CourseModel/Stu_Course_MaterialModel.dart';
import 'package:university_hup/Models/STU_Model/CourseModel/Stu_Course_Quiz_Model.dart';
import 'package:university_hup/Models/STU_Model/User_Model/STU_Login_Model.dart';



abstract class App_state {}

class App_ini_state extends App_state{}

// Abdelaziz  --------------------------------------------------------------------

class Nav_Bar_state extends App_state{}

class D_E_state extends App_state{}

class Defulte_state extends App_state{}


class Switch_stud_ins_state extends App_state{}

class Switch_stud_ins_bool_state extends App_state{}

class Nav_HomeBar_state extends App_state{}

class stateforDrawer extends App_state{}



// alfy  --------------------------------------------------------------------
//instructor cources state :
class ChangeBottomSheet_State extends App_state{}
class ChangeListVisible_State extends App_state{}

class AddFile_Loading_State extends App_state{}
class AddFile_Success_State extends App_state{}
class AddFile_Error_State extends App_state{}

class AddNewFile_Loading_State extends App_state{}
class AddNewFile_Success_State extends App_state{}
class AddNewFile_Error_State extends App_state{}

class ShowFile_Loading_State extends App_state{}
class ShowFile_Success_State extends App_state{}
class ShowFile_Error_State extends App_state{}

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
  List<STU_Course_Assign_Model> assignmodel=[];


  Stu_Get_Course_Assign_SuccessState(this.assignmodel);

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


