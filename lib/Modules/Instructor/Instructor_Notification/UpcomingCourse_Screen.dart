import 'package:flutter/material.dart';
import 'package:universityhup/Shared/Component/component.dart';


class UpcomingCourse_Screen extends StatelessWidget {
  const UpcomingCourse_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Padding(
        padding:  const EdgeInsets.all(15),
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) => Upcoming_Courses_Card(),
          separatorBuilder: (context, index) => Container(
            height: 15,
            color: Colors.transparent,
          ),
          itemCount: 1,
        ),
      ),
    );
  }
}
