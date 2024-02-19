

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
                    filter: ImageFilter.blur(sigmaX: 120, sigmaY: 120),
                    child: const SizedBox(),
                  )),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Expanded(
                          child: GlassBox(
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
                                                      padding: const EdgeInsets.only(right: 30.0),
                                                      child: Text(
                                                        // 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.',
                                                        'Congratulations, you have completed your registration ! Lets start your learning journey next.',
                                                        maxLines: 8,
                                                        overflow: TextOverflow.ellipsis,
                                                        style: TextStyle(
                                                          fontWeight: FontWeight.w700,
                                                          fontSize: 15,
                                                          color: c1,
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
                                                  // image: const DecorationImage(
                                                  //   image: NetworkImage(
                                                  //     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2PacFBpXBfSh1aCipOEs5Wd0lJqAeBXbx2w&usqp=CAU',
                                                  //   ),
                                                  //   fit: BoxFit.cover,
                                                  // ),
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
                              color: Colors.black.withOpacity(.15),
                              borderRadius: 20,
                              x: 50,
                              y: 50),
                        ),
                        SizedBox(height: 15,),
                        Expanded(
                          child: GlassBox(
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
                              color: Colors.black.withOpacity(.15),
                              borderRadius: 20,
                              x: 50,
                              y: 50),
                        ),

                        SizedBox(height: 15,),
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.blue.withOpacity(.3),
                                  ),

                                ),
                              ),
                              SizedBox(width: 15,),
                              Expanded(
                                child: GlassBox(
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
                                    color: Colors.black.withOpacity(.15),
                                    borderRadius: 20,
                                    x: 50,
                                    y: 50),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15,),
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.blue.withOpacity(.3),
                                  ),

                                ),
                              ),
                              SizedBox(width: 15,),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.blue.withOpacity(.3),
                                  ),

                                ),
                              ),
                            ],
                          ),
                        ),
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