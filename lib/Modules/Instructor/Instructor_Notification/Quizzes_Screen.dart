import 'package:flutter/material.dart';
import 'package:university_hup/Shared/Component/component.dart';


class Quizzes_Screen extends StatelessWidget {
  const Quizzes_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Padding(
        padding:  const EdgeInsets.all(15),
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) => Quizzes_Card(),
          separatorBuilder: (context, index) => Container(
            height: 15,
            color: Colors.transparent,
          ),
          itemCount: 2,
        ),
      ),
    );
  }
}
