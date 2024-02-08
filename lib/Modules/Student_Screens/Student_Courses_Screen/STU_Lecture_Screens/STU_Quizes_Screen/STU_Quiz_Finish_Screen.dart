import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:university_hup/Shared/Cons_widget.dart';

import '../../../../../Layout/LayoutScreen.dart';
import '../../../../../Shared/Cubit/App_cubit.dart';
import '../../../../../Shared/Cubit/App_state.dart';
import 'STU_Quizes_Screen.dart';

class STU_Quiz_Finish_Screen extends StatelessWidget {
  const STU_Quiz_Finish_Screen({Key? key}) : super(key: key);

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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 50,),
                    Text('Finished!',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35
                    ),),
                    Text(' Answers have been sent successfully',
                      style: TextStyle(
                          fontSize: 15
                      ),),
                    SizedBox(height: 50,),

                    Image.network('https://s3-alpha-sig.figma.com/img/dfec/7876/8dd4134b098a4eb8da362dde296c50c1?Expires=1707696000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=QD4eyQ8M4si-f4FWF~m4UZi8svPVszAT5xefdVx1wSZliax6I-Ar1d289sYPHCBW52I1NALXHCvUNt9JgzVScRx4-69LLZ~g4OVhP0w8NNFXZbHi55B-uSATdPq6DQC-BuQcErezjOvsr~WOREqy-qBATKrQdGKGRo0qpOQ-OZwxODZLX-mjwISo~v9rkow2yks3F20bbV5~u6S5ug1chWt67n8VHRYkc4xn90ocuVJehP97SSrOev0cBIXwluZLFTxl50GLhPD1LCnuLib3CLq8MQRSIeMNLK86hEXwxl972LWCNnf7Qxg0hXb3QGHZf33hfL3gHa5rkYOUGimIWQ__'),
                    Spacer(),
                    Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child:
                        TextButton(
                          onPressed: (){
                            NavigateAndFinish(context, Layout_Screen());
                          },
                          child: Text('Finished',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25
                            ),
                          
                          ),
                        ),
                      ),
                    ) ,
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
