import 'package:app/colours.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Cards.dart';

class Howto extends StatelessWidget {
  const Howto({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Backwhite,
        appBar: AppBar(
          backgroundColor: Backwhite,
          elevation: 0,
          foregroundColor: Colors.black,
          title: Text('How to use this app:',
              style: GoogleFonts.bebasNeue(
                textStyle: const TextStyle(color: Colors.black54),
              ),
              textScaleFactor: 1.5),
        ),
        body: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Text('1. Pick 5 Exercises that work the entire body: Pushups Pullups Leg Lifts Squats Bridges.\n',style: GoogleFonts.gudea(textStyle: TextStyle(color: Colors.black54),), textScaleFactor: 1.5),
                Text('2. Find a version of this exercise that you can do safely and pain-free. Move to harder variations as you master them.\n',style: GoogleFonts.gudea(textStyle: TextStyle(color: Colors.black54),), textScaleFactor: 1.5),
                Text('3.Schedule these exercises into a weekly routine.\n',style: GoogleFonts.gudea(textStyle: TextStyle(color: Colors.black54),), textScaleFactor: 1.5),
                Text('\n\n\nEnjoy using my app :)',style: GoogleFonts.gudea(textStyle: TextStyle(color: Colors.black54),), textScaleFactor: 1.5),
              ],
            )
        )
    );}
}
