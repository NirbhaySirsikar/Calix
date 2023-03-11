import 'package:app/colours.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';


class Mycards extends StatelessWidget{
  Mycards(
      {required this.name, required this.image,required this.goal,required this.num});
  final String name;
  final String image;
  final String goal;
  final int num;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
      return Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          height: 380,
          decoration:const BoxDecoration(
              color: Backwhite,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: Offset(5, 5),
                    spreadRadius: 0),
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 6,
                  offset: Offset(-5, -5),
                  spreadRadius: 0,
                ),
              ]),
          clipBehavior: Clip.antiAlias,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,
                      style: GoogleFonts.acme(
                        textStyle: const TextStyle(color: Colors.black,),
                      ),
                      textScaleFactor: 1.7,textAlign: TextAlign.left),

                  const SizedBox(height: 10.0),
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 230,
                      // aspectRatio: 1/1,
                      viewportFraction: 0.9,
                      enableInfiniteScroll: true,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayAnimationDuration: const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                    ),
                    items: [1,num==1?1:num==2?2:2,num==1?1:num==2?1:3,num==1?1:num==2?2:4].map((i) => ClipRRect(
                        borderRadius: BorderRadius.circular(0),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            Image.asset(num==1?('assets/images/'+image+'$i'+'.gif'):('assets/images/'+image+'$i'+'.jpeg'),
                              width: 400,
                              height: 400,
                            )
                          ],
                        )))
                        .toList(),
                  ),
                  const SizedBox(height: 12.0),

                  Text(goal,style: GoogleFonts.montserrat(textStyle: const TextStyle(color: Colors.black54 ),),textScaleFactor: 1.5,)
                ]),
          ),
        ),

      );
  }
}
