

import 'dart:ui';

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:rive/rive.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:university_hup/Shared/Component/component.dart';
import 'package:university_hup/Shared/Cubit/App_cubit.dart';
import 'package:university_hup/Shared/Cubit/App_state.dart';
import 'package:university_hup/Shared/constant.dart';


class Dashboard_Screen extends StatelessWidget {
  const Dashboard_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<App_cubit, App_state>(
      listener: (context, state) => {},
      builder: (context, state) {
        App_cubit cubit = App_cubit.get(context);
       List<_PieData> pieData=[
         _PieData('0',2),
         _PieData('0',2),
         _PieData('0',2),
         _PieData('0',2),

       ];
        List<_SalesData> data = [
          _SalesData('Jan', 35),
          _SalesData('Feb', 28),
          _SalesData('Mar', 34),
          _SalesData('Apr', 32),
          _SalesData('May', 40)
        ];
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Column(
                children: [
                  const Spacer(),
                  Container(
                    height: 600,
                    child: const RiveAnimation.asset(
                      "assets/riveassets/shapes.riv",
                    ),
                  ),
                ],
              ),
              Positioned(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
                    child: const SizedBox(),
                  )),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0, vertical: 15),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              rol=='Student'?'Hi, ${cubit.stu_login_Model?.displayName} !':'Hi, Dr Ahmed !',
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style:Theme.of(context).textTheme.bodyText1?.copyWith(
                                                  fontSize: 25
                                              ),

                                              // TextStyle(
                                              //   fontWeight: FontWeight.w700,
                                              //   fontSize: 25,
                                              //   color: Colors.black,
                                              // ),
                                            ),
                                            Text(
                                              'Your Dashboard.',
                                              style:Theme.of(context).textTheme.subtitle1?.copyWith(

                                              ),


                                              // TextStyle(
                                              //   // fontWeight: FontWeight.w800,
                                              //
                                              //   fontSize: 18,
                                              //   fontWeight: FontWeight.w500,
                                              //   color: c1,
                                              // ),
                                            ),
                                          ],
                                        ),
                                      ),
                                     SizedBox(width: 15,),
                                      Container(
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: const Stack(
                                          alignment:
                                          AlignmentDirectional.bottomEnd,
                                          children: [
                                            CircleAvatar(
                                              radius: 50,
                                              backgroundColor: Colors.blue,
                                              backgroundImage: AssetImage(
                                                  'assets/images/avatar1.png'),
                                            ),
                                            Padding(
                                              padding:
                                              EdgeInsets.all(7.0),
                                              child: CircleAvatar(
                                                radius: 8,
                                                backgroundColor: Colors.green,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Expanded(
                          child: GlassBoxWithBorder_Gradiant2(
                              widget: Container(
                                width: double.infinity,
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    children: [

                                      Expanded(
                                        child: ConditionalBuilder(
                                            condition: true,
                                            builder: (context) => Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    child: Padding(
                                                      padding: const EdgeInsets.only(right: 10.0,top: 15,bottom: 15,left: 10),
                                                      child: Text(
                                                        // 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.',
                                                        'Congratulations, you have completed your registration ! Lets start your learning journey next.',

                                                        maxLines: 6,
                                                        overflow: TextOverflow.ellipsis,
                                                        style: TextStyle(
                                                          fontWeight: FontWeight.w500,
                                                          fontSize: 13,
                                                          color: c1.withOpacity(1),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            fallback: (context) => const SizedBox(
                                              height: 0,
                                            )),
                                      ),

                                      Expanded(
                                        child: ConditionalBuilder(
                                            condition: true,
                                            builder: (context) => Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 0, right: 0.0, top: 0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(20),
                                                  color: Colors.deepPurple[200],
                                                  image: const DecorationImage(
                                                    image: AssetImage(
                                                      'assets/images/g7.png',
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            fallback: (context) => const SizedBox(
                                              height: 0,
                                            )),
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
                        SizedBox(height: 15,),
                        Expanded(
                          child: GlassBoxWithBorder_Gradiant2(
                              widget: Container(
                                width: double.infinity,
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    child: SfCartesianChart(
                                        primaryXAxis: CategoryAxis(),
                                        // Chart title
                                        title: ChartTitle(text: 'Your Activity'),
                                        // Enable legend
                                        legend: Legend(isVisible: true),
                                        // Enable tooltip
                                        tooltipBehavior: TooltipBehavior(enable: true),
                                        series: <CartesianSeries<_SalesData, String>>[
                                          LineSeries<_SalesData, String>(
                                            color: Colors.teal,
                                              markerSettings:MarkerSettings(color: Colors.cyan,width: 0,height: 0,isVisible: true) ,
                                              dataSource: data,
                                              xValueMapper: (_SalesData sales, _) => sales.year,
                                              yValueMapper: (_SalesData sales, _) => sales.sales,
                                              name: 'Active',
                                              // Enable data label
                                              dataLabelSettings: DataLabelSettings(isVisible: true))
                                        ]),
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

                        SizedBox(height: 15,),
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: GlassBoxWithBorder_Gradiant2(
                                    widget: Container(
                                      width: double.infinity,
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Container(
                                          child:SfCircularChart(


                                              title: ChartTitle(text: 'Great !'),
                                              legend: Legend(isVisible: true),
                                              series: <PieSeries<_PieData, String>>[
                                                PieSeries<_PieData, String>(

                                                    explode: true,
                                                    explodeIndex: 0,
                                                    dataSource: pieData,
                                                    xValueMapper: (_PieData data, _) => data.xData,
                                                    yValueMapper: (_PieData data, _) => data.yData,
                                                    dataLabelMapper: (_PieData data, _) => data.text,
                                                    dataLabelSettings: DataLabelSettings(isVisible: true)),
                                              ]
                                          ),
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
                                      width: double.infinity,
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Container(
                                          child: SfCartesianChart(
                                              primaryXAxis: CategoryAxis(),
                                              // Chart title
                                              title: ChartTitle(text: 'Your Activity'),
                                              // Enable legend
                                              legend: Legend(isVisible: false),
                                              // Enable tooltip
                                              tooltipBehavior: TooltipBehavior(enable: true),
                                              series: <CartesianSeries<_SalesData, String>>[
                                                LineSeries<_SalesData, String>(
                                                    color: Colors.teal,
                                                    markerSettings:MarkerSettings(color: Colors.cyan,width: 0,height: 0,isVisible: true) ,
                                                    dataSource: data,
                                                    xValueMapper: (_SalesData sales, _) => sales.year,
                                                    yValueMapper: (_SalesData sales, _) => sales.sales,
                                                    name: 'Active',
                                                    // Enable data label
                                                    dataLabelSettings: DataLabelSettings(isVisible: true))
                                              ]),
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
                        // SizedBox(height: 15,),
                        // Expanded(
                        //   child: Row(
                        //     children: [
                        //       Expanded(
                        //         child: GlassBoxWithBorder_Gradiant2(
                        //             widget: Container(
                        //               width: double.infinity,
                        //               child: Padding(
                        //                 padding: const EdgeInsets.all(10.0),
                        //                 child: Container(
                        //                   child: SfCartesianChart(
                        //                       primaryXAxis: CategoryAxis(),
                        //                       // Chart title
                        //                       title: ChartTitle(text: 'Your Activity'),
                        //                       // Enable legend
                        //                       legend: Legend(isVisible: false),
                        //                       // Enable tooltip
                        //                       tooltipBehavior: TooltipBehavior(enable: true),
                        //                       series: <CartesianSeries<_SalesData, String>>[
                        //                         LineSeries<_SalesData, String>(
                        //                             color: Colors.teal,
                        //                             markerSettings:MarkerSettings(color: Colors.cyan,width: 0,height: 0,isVisible: true) ,
                        //                             dataSource: data,
                        //                             xValueMapper: (_SalesData sales, _) => sales.year,
                        //                             yValueMapper: (_SalesData sales, _) => sales.sales,
                        //                             name: 'Active',
                        //                             // Enable data label
                        //                             dataLabelSettings: DataLabelSettings(isVisible: true))
                        //                       ]),
                        //                 ),
                        //               ),
                        //             ),
                        //             BorderWidth: 0,
                        //             BorderColor: Colors.black,
                        //
                        //             color: Colors.white.withOpacity(.2),
                        //             borderRadius: 20,
                        //             x: 0,
                        //             y: 0),
                        //       ),
                        //       SizedBox(width: 15,),
                        //       Expanded(
                        //         child: GlassBoxWithBorder_Gradiant2(
                        //             widget: Container(
                        //               width: double.infinity,
                        //               child: Padding(
                        //                 padding: const EdgeInsets.all(10.0),
                        //                 child: Container(
                        //                   child:SfCircularChart(
                        //
                        //
                        //                       title: ChartTitle(text: 'Great !'),
                        //                       legend: Legend(isVisible: true),
                        //                       series: <PieSeries<_PieData, String>>[
                        //                         PieSeries<_PieData, String>(
                        //
                        //                             explode: true,
                        //                             explodeIndex: 0,
                        //                             dataSource: pieData,
                        //                             xValueMapper: (_PieData data, _) => data.xData,
                        //                             yValueMapper: (_PieData data, _) => data.yData,
                        //                             dataLabelMapper: (_PieData data, _) => data.text,
                        //                             dataLabelSettings: DataLabelSettings(isVisible: true)),
                        //                       ]
                        //                   ),
                        //                 ),
                        //               ),
                        //             ),
                        //             BorderWidth: 0,
                        //             BorderColor: Colors.black,
                        //
                        //             color: Colors.white.withOpacity(.2),
                        //             borderRadius: 20,
                        //             x: 0,
                        //             y: 0),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        SizedBox(height: 55,),

                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}

class _PieData {
  _PieData(this.xData, this.yData, [this.text]);
  final String xData;
  final num yData;
  String? text;
}