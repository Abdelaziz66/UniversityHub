import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

// Color c1 =Colors.blue;
// Color? c2 =Colors.black;
// Color? c3 =HexColor('#415A77');
// Color? c4 =HexColor('#778DA9');
// Color? c5 =HexColor('#E0E1DD');

Color c1 =HexColor('#0D1B2A');
Color c2 =HexColor('#1B263B');
Color c3 =HexColor('#415A77');
Color c4 =HexColor('#778DA9');
Color c5 =Colors.white;

Color p1 =HexColor('#3D5CFF');
Color p2 =HexColor('#FFE7EE');
Color p3 =HexColor('#D8FFEF');
var scafoldkey = GlobalKey<ScaffoldState>();


// Color c1 =Colors.white

Widget constant_Size()=> Column(

  children: [
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // List Item  ___________________________
        Text(
          'Parallel Programming',
          style: TextStyle(
              fontWeight: FontWeight.w700, color: c1, fontSize: 17),
        ),
        SizedBox(height: 1),
        // padding:
        // const EdgeInsets.only(bottom: 14, right: 30.0, top: 14, left: 30),
        Text(
          'DR : Amr Masoud',
          style: TextStyle(
              fontWeight: FontWeight.w400, color: c1, fontSize: 14),
        ),
        FaIcon(
          FontAwesomeIcons.circleRight,
          color: Colors.teal,
          size: 30,
        ),
        // 3nwaeeeeen ___________________________
        Text(
          'Upcoming Course',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),

      ],
    ),
  ],
);