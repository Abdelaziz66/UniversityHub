import 'package:day_night_time_picker/lib/daynight_timepicker.dart';
import 'package:day_night_time_picker/lib/state/time.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:university_hup/Modules/Instructor/Instructor_Quizzes/INS_Quiz_Ques.dart';

import 'package:university_hup/Shared/Component/component.dart';
import 'package:university_hup/Shared/Cons_widget.dart';
import 'package:university_hup/Shared/Cubit/App_cubit.dart';
import 'package:university_hup/Shared/Cubit/App_state.dart';
import 'package:university_hup/Shared/constant.dart';






class INS_Quizes_Ques_Sceen extends StatefulWidget {
  const INS_Quizes_Ques_Sceen({super.key});



  @override
  State<INS_Quizes_Ques_Sceen> createState() => _STU_Quizes_Ques_ScreenState();
}

class _STU_Quizes_Ques_ScreenState extends State<INS_Quizes_Ques_Sceen> {
  bool islast = false;
  bool ismiddle =false;
  int _index = 0;
  String? quiz_ask= '';
  var boardcontroller = PageController();
  var stepcontroller=ScrollController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit,App_state>(
      listener: (context,state){},
      builder: (context,state){
        App_cubit cubit =App_cubit.get(context);
        Time _time = Time(hour: 11, minute: 30, second: 20);
        return Scaffold(
          body: SafeArea(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30,),
                defaultAppbar(context:context),
                const SizedBox(height: 30,),
                Expanded(
                  child: Stepper(
                    currentStep: _index,
                    type: StepperType.vertical,
                    connectorColor: MaterialStateProperty.all(Colors.blue),
                    physics: BouncingScrollPhysics(),

                    elevation: 0,
                    connectorThickness: 3,
                    // stepIconBuilder: (stepIndex, stepState) => Container(
                    //   color: Colors.green,
                    //   height: 40,
                    //   width: 40,
                    // ),
                    controller:stepcontroller ,
                    controlsBuilder: (context, details) =>  Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: (){
                              details.onStepContinue!();



                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:BorderRadius.circular(12),
                                color: Colors.blue,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 15),
                                child: Text('Next',style: TextStyle(fontSize: 20,color: Colors.white),),
                              ),
                            ),
                          ),
                          SizedBox(width: 15,),
                          GestureDetector(
                            onTap: (){
                              details.onStepCancel!();
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:BorderRadius.circular(12),
                                color: Colors.blueGrey.withOpacity(.2),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 15),
                                child: Text('Back',style: TextStyle(fontSize: 20,color: Colors.black),),
                              ),
                            ),
                          ),


                        ],
                      ),
                    ),




                    onStepCancel: () {
                      if (_index > 0) {
                        setState(() {
                          _index -= 1;
                        });
                      }
                    },
                    onStepContinue: () {
                      if (_index == 2) {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => INS_Quizes_Ques_Screen(),));
                      }
                     else if (_index <= 0||_index<2) {
                        setState(() {
                          _index += 1;
                        });
                      }
                    },
                    onStepTapped: (int index) {
                      setState(() {
                        _index = index;
                      });
                    },


                    steps: [
                      Step(
                        isActive: _index >=0,
                        state:_index>=0?StepState.complete: StepState.disabled,
                        title:  Text('Name and location',style: TextStyle(fontSize: 23,fontWeight: FontWeight.w800),) ,
                        content: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Column(
                            children: [
                              GlassBoxWithBorder_Gradiant2(
                                  widget:Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 3.0,horizontal: 8),
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
                                              // SizedBox(width: 60,),
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
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 3.0,horizontal: 8),
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
                                              // SizedBox(width: 60,),
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
                              GlassBoxWithBorder_Gradiant2(
                                  widget: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Container(
                                      height: 150,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 3),
                                            child: Text('You can add notic ?',maxLines: 2,style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ),),
                                          ),

                                          Expanded(
                                            child: GestureDetector(
                                              onTap: (){

                                              },
                                              child: Container(
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

                                                    keyboardType: TextInputType.text,
                                                    onFieldSubmitted: (value) {
                                                      print(value);
                                                    },
                                                    onChanged: (value) {
                                                      print(value);
                                                    },
                                                    // validator: (value) {
                                                    //   if (value!.isEmpty) {
                                                    //     return 'Folder name can\'t be empty';
                                                    //   }
                                                    //   return null;
                                                    // },
                                                    // toolbarOptions:
                                                    //     ToolbarOptions(paste: true, copy: true),
                                                    cursorColor: c1,
                                                    style: const TextStyle(
                                                      fontSize: 20,
                                                    ),
                                                    decoration: InputDecoration(
                                                      prefixIcon: Column(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          SizedBox(height: 15,),
                                                          FaIcon(
                                                            FontAwesomeIcons.circleExclamation,
                                                            color: c1,
                                                            size: 25,
                                                          ),
                                                        ],
                                                      ),
                                                      hintText: 'Description',
                                                      border: InputBorder.none,
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


                            ],
                          ),
                        ),

                      ),

                      Step(
                          isActive: _index >=1,
                          state:_index>=1?StepState.complete: StepState.disabled,
                        title:  Text('Timing and points',style: TextStyle(fontSize: 23,fontWeight: FontWeight.w800),) ,

                        content: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Column(
                            children: [
                              Container(
                                height: 190,
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: GlassBoxWithBorder_Gradiant2(
                                          widget: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Expanded(
                                                  child: Text('What about points ?',maxLines: 2,style: TextStyle(
                                                    fontSize: 17,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w500,
                                                  ),),
                                                ),
                                                SizedBox(width: 15,),
                                                Expanded(
                                                  child: GestureDetector(
                                                    onTap: (){

                                                    },
                                                    child: Container(


                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(20),
                                                        color: Colors.blueGrey.withOpacity(.1),
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
                                          BorderWidth: 0,
                                          BorderColor: Colors.black,

                                          color: Colors.white.withOpacity(.2),
                                          borderRadius: 20,
                                          x: 0,
                                          y: 0),
                                    ),
                                    SizedBox(height: 15,),
                                    Expanded(
                                      flex: 1,
                                      child: GlassBoxWithBorder_Gradiant2(
                                          widget: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [

                                                Expanded(
                                                  child: Text('Quize Time',maxLines: 2,style: TextStyle(
                                                    fontSize: 17,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w500,
                                                  ),),
                                                ),
                                                SizedBox(width: 15,),
                                                Expanded(
                                                  flex: 1,
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
                                                      child: Center(
                                                        child: Text('10 minutes',style: TextStyle(
                                                          fontSize: 22,
                                                          color: Colors.black,
                                                          fontWeight: FontWeight.w700,
                                                        ),),
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
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 15,),
                              Container(
                                height: 190,
                                child: Expanded(
                                  flex:2,
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


                                                  Text('Determine Time',maxLines: 2,style: TextStyle(
                                                    fontSize: 17,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w500,
                                                  ),),
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
                              ),


                            ],
                          ),
                        )

                      ),

                      Step(
                        isActive: _index ==2,
                        state:_index==2?StepState.complete: StepState.disabled,
                        title:  Text('Questions',style: TextStyle(fontSize: 23,fontWeight: FontWeight.w800),) ,


                        content:
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: GlassBoxWithBorder_Gradiant2(
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
                        ),
                      ),


                    ],
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


