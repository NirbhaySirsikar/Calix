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


class Pullups extends StatelessWidget {
  Pullups({Key? key}) : super(key: key);
  final List<Cards> CardsList = [
    Cards(num: 2,name: '1. Wall Pullups', image: 'wallpull', goal: 'Goal: 3 Sets of 50'),
    Cards(num: 2,name: '2. Horizontal Pullups (Chest Height)', image: 'horpullchest', goal: 'Goal: 3 Sets of 30'),
    Cards(num: 2,name: '3. Horizontal Pullups (Hip Height)', image: 'horpullhip', goal: 'Goal: 3 Sets of 25'),
    Cards(num: 2,name: '4. Jackknife Pullups', image: 'jackpull', goal: 'Goal: 3 Sets of 25'),
    Cards(num: 2,name: '5. Full Pullups/Chinups', image: 'chin', goal: 'Goal: 2 Sets of 12'),
    Cards(num: 2,name: '6. Narrow Pullups', image: 'narrowpull', goal: 'Goal: 2 Sets of 9'),
    Cards(num: 2,name: '7. One-Hand Pullups', image: 'onehand', goal: 'Goal: 2 Sets of 9'),
    Cards(num: 4,name: '8. Archer Pullups', image: 'archerpull', goal: 'Goal: 2 Sets of 7'),
    Cards(num: 2,name: '9. One-Arm Pullups', image: 'onearm', goal: 'Goal: 2 Sets of 20'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Backwhite,
        appBar: AppBar(
          backgroundColor: Backwhite,
          elevation: 0,
          foregroundColor: Colors.black,
          title: Text('PULL-UPS',
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
