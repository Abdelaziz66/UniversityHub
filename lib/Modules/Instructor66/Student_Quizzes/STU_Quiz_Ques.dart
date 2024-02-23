import 'package:day_night_time_picker/lib/daynight_timepicker.dart';
import 'package:day_night_time_picker/lib/state/time.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:university_hup/Modules/Instructor66/Student_Quizzes/STU_Quiz_Finish_Screen.dart';
import 'package:university_hup/Modules/Student/Student_Quizzes/STU_Quiz_Finish_Screen.dart';
import 'package:university_hup/Shared/Component/component.dart';
import 'package:university_hup/Shared/Cons_widget.dart';
import 'package:university_hup/Shared/Cubit/App_cubit.dart';
import 'package:university_hup/Shared/Cubit/App_state.dart';
import 'package:university_hup/Shared/constant.dart';

class INS_Quizes_Ques_Screen extends StatefulWidget {
   INS_Quizes_Ques_Screen({super.key});

  @override
  State<INS_Quizes_Ques_Screen> createState() => _STU_Quizes_Ques_ScreenState();
}

class _STU_Quizes_Ques_ScreenState extends State<INS_Quizes_Ques_Screen> {
  bool islast = false;
  bool ismiddle = false;
  String? quiz_ask= '';

  var boardcontroller = PageController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit, App_state>(
      listener: (context, state) {},
      builder: (context, state) {
        App_cubit cubit = App_cubit.get(context);
        Time _time = Time(hour: 11, minute: 30, second: 20);
        return Scaffold(
          // appBar: AppBar(
          //   title: Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         SizedBox(
          //           height: 10,
          //         ),
          //         Text(
          //           'Material name',
          //           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          //         ),
          //         // Text('instructor name',
          //         //   style: TextStyle(
          //         //     color: Colors.grey[600],
          //         //       fontWeight: FontWeight.w400,
          //         //       fontSize: 15
          //         //   ),
          //         // ),
          //       ],
          //     ),
          //   ),
          //   actions: [
          //     Padding(
          //       padding: const EdgeInsets.all(12.0),
          //       child: Image(
          //         image: NetworkImage(
          //             'https://s3-alpha-sig.figma.com/img/07b3/a7c9/c2125e7477b092a6b41eee3cbb5627cd?Expires=1708300800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=LSFzhb5MX20bm5v9pG3n1Lqu5K91VfFaQWA08MV3tZIr-uKjGcByqUBbmljKxlpoEMBhMNd0BPeNgR4EYO~5vCLiHPHXmElMRDj6uXz86SLBMiP~g9p53YydDzfpLmcGZqaN9-ji1169FinyPbjn1Z2h3EBaLuV-Yvxw-eC9KsLuPIloT73yerWbs7kKpOrkjKlLfqZiuZVNgA~7w6QuAYyFEs6T8Ng6LkhhVNUucnBwrquNsuxqNmuQUvvk-6N~7uBKQUw-slravD9XxeGtLp0gJINLfsiC1ZCrGNhl8YZoUdwqPuSPfJdHt~kZhsZpWbdtivJRMcjyF5ZwSQKm-Q__'
          //
          //              //   'https://s3-alpha-sig.figma.com/img/d231/da63/0330da0307bd5fd4566c82a5540e92e7?Expires=1707091200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=J63YbqUJG4~63Q6d5hwEqu3tJAI~012Z3wt3kH03TzaxbPJV4dw-ICasQIcTcQ0CtXSIODocBY7-mJoDxKOdvk~qxLK9~Ouxq5GxPxHrwv6UkMN2TaYWEsi9JCTnTbVOVHQTpzLamoqryU62-W-0H4Noh5W1DQFu1oIqmeFk7Pjldr~RsrNx4aByu~Kim87HDgzZfUVxf3n1F8ONO6iIVJ~5O8IWTJI7HEvjAs9D3hs0uC20cwBq43JH-Cv0d6HE9eHELQ5Rdu1MEWFb9-Slv5q9NKLQaZ-3WNl6gbHB4~9txFsm8fOMBa7qNkonJyUVEzxWMdAL4uRtRaKHFDIlVQ__'
          //         ),
          //         fit: BoxFit.cover,
          //         height: 50,
          //         width: 50,
          //       ),
          //     ),
          //   ],
          // ),

          body: SafeArea(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                defaultAppbar(context: context),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          SizedBox(height: 10,),
                          GlassBoxWithBorder_Gradiant2(
                              widget:Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 12),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [


                                          Expanded(
                                            child: Text('name of quize which students can see it.',maxLines: 2,style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ),),
                                          ),
                                          SizedBox(width: 60,),
                                          // Icon(Icons.add_chart,size: 30,),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      height: 70,
                                      decoration: BoxDecoration(
                                        // border: Border.all(color: Colors.white),
                                        borderRadius: BorderRadius.circular(18),
                                        color: Colors.blueGrey.withOpacity(.1),
                                      ),
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.symmetric(horizontal: 8.0),
                                        child: TextFormField(

                                          keyboardType: TextInputType.text,
                                          onFieldSubmitted: (value) {
                                            print(value);
                                          },
                                          onChanged: (value) {
                                            print(value);
                                          },
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return 'Title can\'t be empty';
                                            }
                                            return null;
                                          },
                                          // toolbarOptions:
                                          //     ToolbarOptions(paste: true, copy: true),
                                          cursorColor: c1,
                                          style: const TextStyle(
                                            fontSize: 20,
                                          ),
                                          decoration: InputDecoration(
                                            prefixIcon: Icon(
                                              Icons.drive_file_rename_outline,
                                              color: c1,
                                              size: 30,
                                            ),
                                            hintText: 'Quiz Title',
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              BorderWidth: 0,
                              BorderColor: Colors.black,

                              color: Colors.white.withOpacity(.2),
                              borderRadius: 20,
                              x: 0,
                              y: 0),
                          SizedBox(height: 15,),
                          GlassBoxWithBorder_Gradiant2(
                              widget:Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 12),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [


                                          Expanded(
                                            child: Text('Folder contain quize result for all student, only you can see that.',maxLines: 2,style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ),),
                                          ),
                                          SizedBox(width: 60,),
                                          // Icon(Icons.add_chart,size: 30,),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      height: 70,
                                      decoration: BoxDecoration(
                                        // border: Border.all(color: Colors.white),
                                        borderRadius: BorderRadius.circular(18),
                                        color: Colors.blueGrey.withOpacity(.1),
                                      ),
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.symmetric(horizontal: 8.0),
                                        child: TextFormField(

                                          keyboardType: TextInputType.text,
                                          onFieldSubmitted: (value) {
                                            print(value);
                                          },
                                          onChanged: (value) {
                                            print(value);
                                          },
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return 'Folder name can\'t be empty';
                                            }
                                            return null;
                                          },
                                          // toolbarOptions:
                                          //     ToolbarOptions(paste: true, copy: true),
                                          cursorColor: c1,
                                          style: const TextStyle(
                                            fontSize: 20,
                                          ),
                                          decoration: InputDecoration(
                                            prefixIcon: Icon(
                                              Icons.folder_open,
                                              color: c1,
                                              size: 30,
                                            ),
                                            hintText: 'Folder name',
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              BorderWidth: 0,
                              BorderColor: Colors.black,

                              color: Colors.white.withOpacity(.2),
                              borderRadius: 20,
                              x: 0,
                              y: 0),
                          SizedBox(height: 15,),
                          Container(
                            height: 190,
                            child: Row(
                              children: [
                                Expanded(
                                  child: GlassBoxWithBorder_Gradiant2(
                                      widget: Container(

                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [


                                                  Expanded(
                                                    child: Text('What about points ?',maxLines: 2,style: TextStyle(
                                                      fontSize: 20,
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.w600,
                                                    ),),
                                                  ),
                                                  Icon(Icons.add_chart,size: 30,),
                                                ],
                                              ),
                                              SizedBox(height: 10,),
                                              Expanded(
                                                child: GestureDetector(
                                                  onTap: (){

                                                  },
                                                  child: Container(


                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(20),
                                                      color: Colors.teal.withOpacity(.5),
                                                    ),
                                                    child:Container(
                                                      alignment: Alignment.center,

                                                      decoration: BoxDecoration(
                                                        // border: Border.all(color: Colors.white),
                                                        borderRadius: BorderRadius.circular(18),
                                                        color: Colors.blueGrey.withOpacity(.1),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                        const EdgeInsets.symmetric(horizontal: 8.0),
                                                        child: TextFormField(

                                                          keyboardType: TextInputType.number,
                                                          onFieldSubmitted: (value) {
                                                            print(value);
                                                          },
                                                          onChanged: (value) {
                                                            print(value);
                                                          },
                                                          validator: (value) {
                                                            if (value!.isEmpty) {
                                                              return 'Folder name can\'t be empty';
                                                            }
                                                            return null;
                                                          },
                                                          // toolbarOptions:
                                                          //     ToolbarOptions(paste: true, copy: true),
                                                          cursorColor: c1,
                                                          style: const TextStyle(
                                                            fontSize: 20,
                                                          ),
                                                          decoration: InputDecoration(
                                                            prefixIcon: Icon(
                                                              Icons. add_chart,
                                                              color: c1,
                                                              size: 30,
                                                            ),
                                                            hintText: 'Points',
                                                            border: InputBorder.none,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),




                                            ],

                                          ),
                                        ),
                                      ),
                                      BorderWidth: 0,
                                      BorderColor: Colors.black,

                                      color: Colors.white.withOpacity(.2),
                                      borderRadius: 20,
                                      x: 0,
                                      y: 0),
                                ),
                                SizedBox(width: 15,),
                                Expanded(
                                  child: GlassBoxWithBorder_Gradiant2(
                                      widget: Container(

                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Spacer(),

                                                  Text('Determine Time',style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w600,
                                                  ),),
                                                  Spacer(),
                                                  FaIcon(FontAwesomeIcons.clock,size: 20,),
                                                ],
                                              ),
                                              SizedBox(height: 10,),
                                              Expanded(
                                                child: GestureDetector(
                                                  onTap: (){
                                                    Navigator.of(context).push(
                                                      showPicker(
                                                        context: context,
                                                        value: _time,
                                                        sunrise: TimeOfDay(hour: 6, minute: 0), // optional
                                                        sunset: TimeOfDay(hour: 18, minute: 0), // optional
                                                        duskSpanInMinutes: 120, // optional
                                                        onChange: (value){},

                                                      ),
                                                    );
                                                  },
                                                  child: Container(


                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(20),
                                                      color: Colors.teal.withOpacity(.5),
                                                    ),
                                                    child: Column(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Text('Start',style: TextStyle(
                                                          fontSize: 22,
                                                          color: Colors.black,
                                                          fontWeight: FontWeight.w700,
                                                        ),),
                                                        Row(
                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          children: [
                                                            Text('8',style: TextStyle(
                                                              fontSize: 20,
                                                              color: Colors.black,
                                                              fontWeight: FontWeight.w600,
                                                            ),),
                                                            Text(' PM',style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.black,
                                                              fontWeight: FontWeight.w600,
                                                            ),),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 10,),
                                              Expanded(
                                                child: GestureDetector(
                                                  onTap: (){
                                                    Navigator.of(context).push(
                                                      showPicker(
                                                        context: context,
                                                        value: _time,
                                                        sunrise: TimeOfDay(hour: 6, minute: 0), // optional
                                                        sunset: TimeOfDay(hour: 18, minute: 0), // optional
                                                        duskSpanInMinutes: 120, // optional
                                                        onChange: (value){},

                                                      ),
                                                    );
                                                  },
                                                  child: Container(


                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(20),
                                                      color: Colors.red.withOpacity(.5),
                                                    ),
                                                    child: Column(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Text('End',style: TextStyle(
                                                          fontSize: 22,
                                                          color: Colors.black,
                                                          fontWeight: FontWeight.w700,
                                                        ),),
                                                        Row(
                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          children: [
                                                            Text('10',style: TextStyle(
                                                              fontSize: 20,
                                                              color: Colors.black,
                                                              fontWeight: FontWeight.w600,
                                                            ),),
                                                            Text(' PM',style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors.black,
                                                              fontWeight: FontWeight.w600,
                                                            ),),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),



                                            ],

                                          ),
                                        ),
                                      ),
                                      BorderWidth: 0,
                                      BorderColor: Colors.black,

                                      color: Colors.white.withOpacity(.2),
                                      borderRadius: 20,
                                      x: 0,
                                      y: 0),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 15,),
                          GlassBoxWithBorder_Gradiant2(
                              widget:Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 12),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [


                                          Expanded(
                                            child: Text('Upload existing Quize or Make MCQ quistions ?',maxLines: 2,style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ),),
                                          ),
                                          SizedBox(width: 60,),
                                          // Icon(Icons.add_chart,size: 30,),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [

                                        Expanded(
                                          child: RadioListTile(
                                            selectedTileColor: Colors.blue,
                                            //
                                            activeColor: Colors.blue,
                                            title: Text(
                                              'Upload',
                                              style: const TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            contentPadding: EdgeInsets.all(0),


                                            value:  'Upload',
                                            groupValue: quiz_ask,
                                            onChanged: (value) {
                                              setState(() {
                                                quiz_ask=value;

                                              });


                                            },
                                          ),
                                        ),


                                        Expanded(
                                          child: RadioListTile(
                                            selectedTileColor: Colors.blue,
                                            // tileColor: Colors.blue,
                                            // hoverColor: Colors.blue,
                                            activeColor: Colors.blue,
                                            title: Text(
                                              'Make',
                                              style:  TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            contentPadding: EdgeInsets.all(0),



                                            value: 'Make',
                                            groupValue: quiz_ask,
                                            onChanged: (value) {
                                              setState(() {
                                                quiz_ask=value;
                                              });



                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              BorderWidth: 0,
                              BorderColor: Colors.black,

                              color: Colors.white.withOpacity(.2),
                              borderRadius: 20,
                              x: 0,
                              y: 0),

                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Default_Button(
                    containerWidth: double.infinity,
                    containerHeight: 50,
                    onPressed: () {

                      navigateTo(context, const INS_Quiz_Finish_Screen());
                      // submit;

                    },
                    text:'Next',
                  ),
                ),

              ],
            ),
          ),
        );
      },
    );
  }
}
