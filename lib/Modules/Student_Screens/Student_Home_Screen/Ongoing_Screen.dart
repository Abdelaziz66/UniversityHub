import 'package:flutter/material.dart';
import 'package:university_hup/Shared/Component/component.dart';


class Ongoing_Screen extends StatelessWidget {
  const Ongoing_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Padding(
        padding:  EdgeInsets.all(15),
        child: ListView.separated(
          itemBuilder: (context, index) => OngoingCourse_Card(),
          separatorBuilder: (context, index) => Container(
            height: 15,
            color: Colors.transparent,
          ),
          itemCount: 10,
        ),
      ),
    );
  }
}
