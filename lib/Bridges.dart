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


class Bridges extends StatelessWidget {
  Bridges({Key? key}) : super(key: key);
  final List<Cards> CardsList = [
    Cards(num: 1,name: '1. Short Bridges', image: 'short', goal: 'Goal: 3 Sets of 50'),
    Cards(num: 1,name: '2. Straight Bridges', image: 'straight', goal: 'Goal: 3 Sets of 40'),
    Cards(num: 1,name: '3. Raised Straight Bridges', image: 'raised', goal: 'Goal: 2 Sets of 25'),
    Cards(num: 1,name: '4. Head Bridges', image: 'head', goal: 'Goal: 2 Sets of 20'),
    Cards(num: 1,name: '5. Full Bridges', image: 'fullbridge', goal: 'Goal: 2 Sets of 15'),
    Cards(num: 1,name: '6. One-Leg Gecko Bridges', image: 'gecko', goal: 'Goal: 2 Sets of 9'),
    Cards(num: 1,name: '7. Walking Bridges', image: 'walking', goal: 'Goal: 25 Steps'),
    Cards(num: 1,name: '8. Wall-Walking Bridges', image: 'wallwalking', goal: 'Goal: 2 Sets of 9'),
    Cards(num: 1,name: '9. Stand-to-Stand Bridges', image: 'stand', goal: 'Goal: 2 Sets of 20'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Backwhite,
        appBar: AppBar(
          backgroundColor: Backwhite,
          elevation: 0,
          foregroundColor: Colors.black,
          title: Text('PUSH-UPS',
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
