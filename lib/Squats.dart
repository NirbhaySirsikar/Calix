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


class Squats extends StatelessWidget {
  Squats({Key? key}) : super(key: key);
  final List<Cards> CardsList = [
    Cards(num: 2,name: '1. Jackknife', image: 'jack', goal: 'Goal: 3 Sets of 35'),
    Cards(num: 2,name: '2. Assisted Squats', image: 'assist', goal: 'Goal: 3 Sets of 30'),
    Cards(num: 2,name: '3. Half Squats', image: 'half', goal: 'Goal: 2 Sets of 35'),
    Cards(num: 2,name: '4. Full Squats', image: 'squats', goal: 'Goal: 2 Sets of 50'),
    Cards(num: 2,name: '5. Narrow Squats', image: 'narrows', goal: 'Goal: 2 Sets of 25'),
    Cards(num: 2,name: '6. Side-Staggered Squats', image: 'sidestags', goal: 'Goal: 2 Sets of 20 '),
    Cards(num: 4,name: '7. Staggered Squats', image: 'stags', goal: 'Goal: 2 Sets of 20 '),
    Cards(num: 2,name: '8. Assisted One-Leg Squats', image: 'assistone', goal: 'Goal: 2 Sets of 9 '),
    Cards(num: 2,name: '9. One-Leg Chair Squats', image: 'onechair', goal: 'Goal: 2 Sets of 9 '),
    Cards(num: 2,name: '10. One-Leg Squats', image: 'oneleg', goal: 'Goal: 2 Sets of 20 '),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Backwhite,
        appBar: AppBar(
          backgroundColor: Backwhite,
          elevation: 0,
          foregroundColor: Colors.black,
          title: Text('SQUATS',
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
                    image: CardsList[index].image,
                    num: CardsList[index].num,

                    goal: CardsList[index].goal);
              },
              itemCount: CardsList.length,
            )));
  }
}
