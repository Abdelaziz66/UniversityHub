import 'package:flutter/material.dart';
import '../../../../../core/functions/app_bar.dart';

class NewsBody extends StatelessWidget {
  const NewsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 30,),
            DefaultAppBar(
                text: "currentCourseName",
                context:context),
            const SizedBox(height: 30,),
          ],
        ),

      ),
    );
  }
}




