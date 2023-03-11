import 'package:app/colours.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Cards.dart';

class Cards {
  Cards({required this.name, required this.image, required this.goal,required this.num});

  final String name;
  final String image;
  final String goal;
  int num;
}


class Legraises extends StatelessWidget {
  Legraises({Key? key}) : super(key: key);
  final List<Cards> CardsList = [
    Cards(num: 2,name: '1. Knee Tucks', image: 'kneetucks', goal: 'Goal: 3 Sets of 40'),
    Cards(num: 2,name: '2. Knee Raises', image: 'kraise', goal: 'Goal: 3 Sets of 40'),
    Cards(num: 2,name: '3. Bent Leg Raises', image: 'bleg', goal: 'Goal: 3 Sets of 35'),
    Cards(num: 2,name: '4. Leg Raises', image: 'leg', goal: 'Goal: 2 Sets of 25'),
    Cards(num: 2,name: '5. Hanging Knee Raises', image: 'hangknee', goal: 'Goal: 2 Sets of 20'),
    Cards(num: 2,name: '6. Hanging Bent Knee Raises', image: 'hangbend', goal: 'Goal: 2 Sets of 15'),
    Cards(num: 2,name: '7. Hanging Leg Raises', image: 'hangleg', goal: 'Goal: 2 Sets of 9'),
    Cards(num: 1,name: '8. L Hold', image: 'L', goal: 'Goal: 30 Seconds'),
    Cards(num: 1,name: '9. V Hold', image: 'V', goal: 'Goal: 30 Seconds'),
    Cards(num: 1,name: '10. Hanging V hold', image: 'hangv', goal: 'Goal: 60 Seconds'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Backwhite,
        appBar: AppBar(
          backgroundColor: Backwhite,
          elevation: 0,
          foregroundColor: Colors.black,
          title: Text('LEG RAISES',
              style: GoogleFonts.bebasNeue(
                textStyle: const TextStyle(color: Colors.black54),
              ),
              textScaleFactor: 1.5),
        ),
        body: Padding(
            padding: const EdgeInsets.all(15),
            child: ListView.builder(
              itemBuilder: (listViewContext, index) {
                return Mycards(
                    name: CardsList[index].name,
                    num: CardsList[index].num,

                    image: CardsList[index].image,
                    goal: CardsList[index].goal);
              },
              itemCount: CardsList.length,
            )));
  }
}
