import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:university_hup/Shared/Cubit/App_cubit.dart';
import 'package:university_hup/Shared/Cubit/App_state.dart';

import '../../../../../Shared/Component/component.dart';

class STU_Quizes_Ques_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit,App_state>(
      listener: (context,state){},
      builder: (context,state){
        App_cubit cubit =App_cubit.get(context);
        return SafeArea(
          child:  Scaffold(
            appBar: AppBar(
              title: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Material name',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    // Text('instructor name',
                    //   style: TextStyle(
                    //     color: Colors.grey[600],
                    //       fontWeight: FontWeight.w400,
                    //       fontSize: 15
                    //   ),
                    // ),
                  ],
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image(
                    image: NetworkImage(
                        'https://s3-alpha-sig.figma.com/img/d231/da63/0330da0307bd5fd4566c82a5540e92e7?Expires=1707091200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=J63YbqUJG4~63Q6d5hwEqu3tJAI~012Z3wt3kH03TzaxbPJV4dw-ICasQIcTcQ0CtXSIODocBY7-mJoDxKOdvk~qxLK9~Ouxq5GxPxHrwv6UkMN2TaYWEsi9JCTnTbVOVHQTpzLamoqryU62-W-0H4Noh5W1DQFu1oIqmeFk7Pjldr~RsrNx4aByu~Kim87HDgzZfUVxf3n1F8ONO6iIVJ~5O8IWTJI7HEvjAs9D3hs0uC20cwBq43JH-Cv0d6HE9eHELQ5Rdu1MEWFb9-Slv5q9NKLQaZ-3WNl6gbHB4~9txFsm8fOMBa7qNkonJyUVEzxWMdAL4uRtRaKHFDIlVQ__'
                    ),
                    fit: BoxFit.cover,
                    height: 50,
                    width: 50,
                  ),
                ),
              ],
            ),

            body: Padding(
              padding: const EdgeInsets.only(top: 40.0,right: 20,left: 20),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('Quiz ',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('1',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue
                          ),
                        ),
                        Spacer(),
                        Icon(FontAwesomeIcons.clock,size: 20,),
                        SizedBox(width: 5,),
                        Text('1:25 ',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.red
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 25,),
                    Container(height: 3,
                    width: double.infinity,
                    color: Colors.grey[300],
                    ),
                    SizedBox(height: 25,),
                    Text('Question1 : ',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                    ),
                    SizedBox(height: 25,),
                    Container(width: double.infinity,
                    padding: EdgeInsetsDirectional.all(12),
                    height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.blue),
                      ),
                      child: Text('Officia illo aut nemo sequi dignissimos fugiat. '
                          'Nam ut commodi sit. Voluptatem ?',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                    ),
                    SizedBox(height: 30.0),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: cubit.stu_Quiz_Ques_options.length,
                      itemBuilder: (context, index) {
                        return RadioListTile(
                          selectedTileColor:Colors.blue,
                          title: Text(cubit.stu_Quiz_Ques_options[index],
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                          value: cubit.stu_Quiz_Ques_options[index],
                          groupValue: cubit.selectedOption,
                          onChanged: (value) {
                            cubit.Quiz_Select_answer(value) ;
                            },
                        );
                      },
                    ),
                    SizedBox(height: 70.0),
                    TextButton(onPressed: (){}, child:
                    Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text('Next',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25
                          ),

                        ),
                      ),
                    ) ,                    )
                  ],
                ),
              ),

            ),


          ),

        );
      },
    );
  }
}


