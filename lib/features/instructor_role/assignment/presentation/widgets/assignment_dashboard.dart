import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AssignmentDashboard extends StatelessWidget {
  const AssignmentDashboard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          gradient: const RadialGradient(
            radius: 1.1,
            center: Alignment.topRight,
            colors: [
              Colors.blue,
              Colors.indigo
            ],
          ),
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Padding(
          padding: EdgeInsets.all(18.0),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'You are a super warrior !',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 17),
                  ),
                  SizedBox(height: 20),
                  _Done( text: 'Done 4 task today',),
                  SizedBox(
                    height: 8,
                  ),
                  _Done( text: 'Done 10 task yesterday',),
                  SizedBox(
                    height: 8,
                  ),
                  _Done( text: 'Done 100 task last month',),
                ],
              ),
              _Image(),
            ],
          ),
        ),
      ),
    );
  }
}


class _Done extends StatelessWidget {
  const _Done({
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 18,
          width: 18,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(4),
          ),
          child: const Icon(
            FontAwesomeIcons.check,
            size: 14,
            color: Colors.indigo,
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          text,
          style: TextStyle(
              color: Colors.grey[300], fontSize: 14,fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
class _Image extends StatelessWidget {
  const _Image();

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Image(
        height: 120,
        width: 120,
        image: AssetImage('assets/images/R.png'),
      ),
    );
  }
}