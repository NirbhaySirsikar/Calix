import 'dart:ui';

import 'package:app/colours.dart';
import 'package:flutter/material.dart';
import 'PushUps.dart';
import 'colours.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:blur/blur.dart';
import 'Legraises.dart';
import 'Squats.dart';
import 'Pullups.dart';
import 'package:app/Bridges.dart';
import 'Howto.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  /*
  runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Center( child:Text("Calix")),
          ),
          body: Center(child: Text("Hello"),),
        )
      )
  )
  */

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calix',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(title: 'C    A    L    I    X'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Backwhite,
          elevation: 0,
          foregroundColor: Colors.black,
          title: Center(child: (Text(widget.title))),
        ),
        body:
            Container(
              decoration: const BoxDecoration(color: Backwhite),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 10.0),
                child:
                    GridView.count(
                        mainAxisSpacing: MediaQuery.of(context).size.height/12,
                        crossAxisSpacing: MediaQuery.of(context).size.width/16,
                        crossAxisCount: 2,
                        padding: const EdgeInsets.all(16.0),
                        children: <Widget>[
                          InkWell(
                            onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => PushUps()),);
                            },
                              child: Container(
                                decoration: const BoxDecoration(
                                    // gradient: LinearGradient(
                                    //   begin: Alignment.topRight,
                                    //   end: Alignment.bottomLeft,
                                    //   colors: [
                                    //     Colors.cyanAccent,
                                    //     Colors.pinkAccent,
                                    //   ],
                                    // ),
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                    color: Backwhite,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black12,
                                          blurRadius: 4,
                                          offset: Offset(4, 4),
                                          spreadRadius: 0),
                                      BoxShadow(
                                        color: Colors.white,
                                        blurRadius: 3,
                                        offset: Offset(-4, -4),
                                        spreadRadius: 0,
                                      ),
                                    ]),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text('PUSH-UPS',
                                        style: GoogleFonts.bebasNeue(
                                          textStyle: const TextStyle(color: Colors.black54),
                                        ),
                                        textScaleFactor: 2)
                                  ],
                                ),
                              ),
                            ),

                          InkWell(onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Legraises()),);
                          },
                            child: Container(
                              decoration: const BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                  color: Backwhite,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 4,
                                        offset: Offset(4, 4),
                                        spreadRadius: 0),
                                    BoxShadow(
                                      color: Colors.white,
                                      blurRadius: 3,
                                      offset: Offset(-4, -4),
                                      spreadRadius: 0,
                                    ),
                                  ]),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text('LEG RAISES',
                                      style: GoogleFonts.bebasNeue(
                                        textStyle: const TextStyle(color: Colors.black54),
                                      ),
                                      textScaleFactor: 2),
                                ],
                              ),
                              // Replace
                            ),
                          ),
                          InkWell(onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Squats()),);
                          },
                            child: Container(
                              decoration: const BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                  color: Backwhite,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 4,
                                        offset: Offset(4, 4),
                                        spreadRadius: 0),
                                    BoxShadow(
                                      color: Colors.white,
                                      blurRadius: 3,
                                      offset: Offset(-4, -4),
                                      spreadRadius: 0,
                                    ),
                                  ]),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text('SQUATS',
                                      style: GoogleFonts.bebasNeue(
                                        textStyle: const TextStyle(color: Colors.black54),
                                      ),
                                      textScaleFactor: 2),
                                ],
                              ),
                            ),
                          ),
                          InkWell(onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Pullups()),);
                          },
                            child: Container(
                              decoration: const BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                  color: Backwhite,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 4,
                                        offset: Offset(4, 4),
                                        spreadRadius: 0),
                                    BoxShadow(
                                      color: Colors.white,
                                      blurRadius: 3,
                                      offset: Offset(-4, -4),
                                      spreadRadius: 0,
                                    ),
                                  ]),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text('PULL-UPS',
                                      style: GoogleFonts.bebasNeue(
                                        textStyle: const TextStyle(color: Colors.black54),
                                      ),
                                      textScaleFactor: 2),
                                ],
                              ),
                            ),
                          ),
                          InkWell(onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Bridges()),);
                          },
                            child: Container(
                              decoration: const BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                  color: Backwhite,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 4,
                                        offset: Offset(4, 4),
                                        spreadRadius: 0),
                                    BoxShadow(
                                      color: Colors.white,
                                      blurRadius: 3,
                                      offset: Offset(-4, -4),
                                      spreadRadius: 0,
                                    ),
                                  ]),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text('BRIDGES',
                                      style: GoogleFonts.bebasNeue(
                                        textStyle: const TextStyle(color: Colors.black54),
                                      ),
                                      textScaleFactor: 2),
                                ],
                              ),
                            ),
                          ),
                          InkWell(onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Howto()),);
                          },

                            child: Stack(
                              children:[
                                  Center(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,border: Border.all(width: 5,style: BorderStyle.solid,color: Colors.white),
                                          borderRadius: BorderRadius.all(const Radius.circular(20)),
                                          gradient: const LinearGradient(
                                            begin: Alignment.topRight,
                                            end: Alignment.bottomLeft,
                                            colors: [
                                              Colors.purpleAccent,
                                              Colors.blueAccent,
                                            ],
                                          ),
                                          color: Backwhite,
                                      ),height: 100,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Text('How to use this app?',
                                              style: GoogleFonts.bebasNeue(
                                                textStyle: const TextStyle(color: Colors.white),
                                              ),textAlign: TextAlign.center,
                                              textScaleFactor: 2),
                                        ],
                                      ),
                                    ),
                                  ),
                                Center(
                                  child: Transform(  alignment: FractionalOffset.center,
                                    transform: Matrix4.identity()
                                      ..rotateZ(65 * 3.1415927 / 180),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade200.withOpacity(0.5),
                                          shape: BoxShape.rectangle,
                                          borderRadius: const BorderRadius.all(Radius.circular(20)),
                                        ),
                                    child: ClipRect(
                                        child: BackdropFilter(
                                          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                                          child: Container(
                                            width: 150.0,
                                            height: 100.0,
                                            decoration: BoxDecoration(
                                                color: Colors.grey.shade200.withOpacity(0.5),
                                              shape: BoxShape.rectangle,
                                              border: Border.all(width: 5,style: BorderStyle.solid,color: Colors.grey.shade200.withOpacity(0.5)),
                                              borderRadius: const BorderRadius.all(Radius.circular(20)),
                                            ),
                                            child: Center(
                                              child: Text(
                                                  '',
                                                  style: Theme.of(context).textTheme.headline5
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Text('How to use this app?',
                                      style: GoogleFonts.bebasNeue(
                                        textStyle: const TextStyle(color: Colors.white),
                                      ),textAlign: TextAlign.center,
                                      textScaleFactor: 2,),
                                ),

                              ]),
                            ),
                        ]),

                ),
              ),


        );
  }
}
