import 'package:flutter/material.dart';
import 'package:helping_hand/cinestarsPage.dart';
import 'package:helping_hand/photographyPage.dart';
import 'package:helping_hand/hackathonPage.dart';
import 'package:helping_hand/pollutionEventPage.dart';
import 'package:helping_hand/treasureHuntPage.dart';

class events extends StatelessWidget {
  const events({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
            child: Text(
              'Events',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Pacifico',
                fontSize: 40.0,
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Card(
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0)),
                          elevation: 5.0,
                          child: Ink.image(
                            image: AssetImage('images/cinestar.jpg'),
                            width: 180,
                            height: 180,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => cinestar()));
                              },
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          // width: 170,
                          color: Colors.black.withOpacity(0.6),
                          child: Center(
                              child: Text(
                            '  Registration Open  ',
                            style: TextStyle(
                                fontFamily: 'Pacifico',
                                fontSize: 20,
                                color: Colors.white),
                          )),
                        )
                      ],
                    ),
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Card(
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0)),
                          elevation: 5.0,
                          child: Ink.image(
                            image: AssetImage('images/treasureHunt.jpg'),
                            width: 180,
                            height: 180,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            treasureHunt()));
                              },
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          // width: 170,
                          color: Colors.black.withOpacity(0.6),
                          child: Center(
                              child: Text(
                            '  Registration Close  ',
                            style: TextStyle(
                                fontFamily: 'Pacifico',
                                fontSize: 20,
                                color: Colors.white),
                          )),
                        )
                      ],
                    ),
                  ],
                ),


                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Card(
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0)),
                          elevation: 5.0,
                          child: Ink.image(
                            image: AssetImage('images/pollutionEvent.jpg'),
                            width: 180,
                            height: 180,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            pollution()));
                              },
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          // width: 170,
                          color: Colors.black.withOpacity(0.6),
                          child: Center(
                              child: Text(
                                '  Registration Open  ',
                                style: TextStyle(
                                    fontFamily: 'Pacifico',
                                    fontSize: 20,
                                    color: Colors.white),
                              )),
                        )
                      ],
                    ),
                  ],
                ),


                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Card(
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0)),
                          elevation: 5.0,
                          child: Ink.image(
                            image: AssetImage('images/photography.jpg'),
                            width: 180,
                            height: 180,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            photography()));
                              },
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          // width: 170,
                          color: Colors.white.withOpacity(0.6),
                          child: Center(
                              child: Text(
                                '  Registration Close  ',
                                style: TextStyle(
                                    fontFamily: 'Pacifico',
                                    fontSize: 20,
                                    color: Colors.black),
                              )),
                        )
                      ],
                    ),
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Card(
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0)),
                          elevation: 5.0,
                          child: Ink.image(
                            image: AssetImage('images/hackathon.jpg'),
                            width: 180,
                            height: 180,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => hackathon()));
                              },
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          // width: 170,
                          color: Colors.white.withOpacity(0.6),
                          child: Center(
                              child: Text(
                                '  Registration Close  ',
                                style: TextStyle(
                                    fontFamily: 'Pacifico',
                                    fontSize: 20,
                                    color: Colors.black),
                              )),
                        )
                      ],
                    ),
                  ],
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
