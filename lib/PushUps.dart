import 'package:app/colours.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Cards.dart';

class Cards {
  Cards({required this.name, required this.image, required this.goal,required this.num});

  final String name;
  final String image;
  final String goal;
  int num;
}

class PushUps extends StatelessWidget {
  PushUps({Key? key}) : super(key: key);
  final List<Cards> CardsList = [
    Cards(name: '1. Wall Pushups', image: 'wallpushup', goal: 'Goal: 3 Sets of 50',num: 2),
    Cards(num: 2,name: '2. Incline Pushups', image: 'incline', goal: 'Goal: 3 Sets of 40'),
    Cards(num: 2,name: '3. Knee Pushups', image: 'knee', goal: 'Goal: 2 Sets of 25'),
    Cards(num: 2,name: '4. Full Pushups', image: 'full', goal: 'Goal: 2 Sets of 25'),
    Cards(num: 2,name: '5. Narrow Pushups', image: 'narrow', goal: 'Goal: 2 Sets of 20'),
    Cards(num: 4,name: '6. Side-Staggered Pushups', image: 'sidestaggered', goal: 'Goal: 2 Sets of 15'),
    Cards(num: 4,name: '7. Archer Pushups', image: 'archerpushups', goal: 'Goal: 2 Sets of 9'),
    Cards(num: 4,name: '8. Sliding One-Arm Pushups', image: 'slidingonearmpushups', goal: 'Goal: 2 Sets of 9'),
    Cards(num: 4,name: '9. One-Arm Pushups', image: 'onearmpushups', goal: 'Goal: 2 Sets of 9'),
    Cards(num: 4,name: '10. One-Arm Pushups (Feet together)', image: 'onearmfeet', goal: 'Goal: 2 Sets of 20'),
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
