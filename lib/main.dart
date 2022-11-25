import 'package:flutter/material.dart';
import 'package:helping_hand/food.dart';
import 'package:helping_hand/eventsPage.dart';
import 'package:helping_hand/complainPage.dart';
import 'package:helping_hand/suggestionPage.dart';
import 'package:helping_hand/lostfound.dart';
import 'package:helping_hand/stationaryPage.dart';
import 'package:helping_hand/splashPage.dart';

void main() {
  runApp(const home());
}

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash()
    );
  }
}

class MyhomePage extends StatelessWidget {
  const MyhomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'Home',
            style: TextStyle(
              fontFamily: 'Pacifico',
              color: Colors.white,
              // fontWeight: FontWeight.bold,
              fontSize: 40,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
            child: functions()
        ),
      ),
    );
  }
}



class functions extends StatefulWidget {
  const functions({Key? key}) : super(key: key);

  @override
  State<functions> createState() => _functionsState();
}

class _functionsState extends State<functions> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(height: 10,),
        Card(
          clipBehavior: Clip.antiAlias,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          elevation: 5,
          shadowColor: Colors.blue.shade50,
          child: Stack(
            alignment: Alignment(-0.5, 0.0),
            children: [
              Ink.image(
                image: AssetImage('images/food.jpg'),
                height: 200,
                // colorFilter: ColorFilter.mode(Colors.black, BlendMode.color),
                child: InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>foodPage()));

                }),
                fit: BoxFit.cover,
              ),
              Text(
                'FooD',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico'),
              ),
            ],
          ),
        ),
        SizedBox(height: 10,),
        Card(
          clipBehavior: Clip.antiAlias,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          elevation: 5,
          shadowColor: Colors.blue.shade50,
          child: Stack(
            alignment: Alignment(-0.7, 0.0),
            children: [
              Ink.image(
                image: AssetImage('images/stationery.jpg'),
                height: 200,
                // colorFilter: ColorFilter.mode(Colors.black, BlendMode.color),
                child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>StationeryPage()));
                    }
                ),
                fit: BoxFit.cover,
              ),
              Text(
                'StationerY',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico'),
              ),
            ],
          ),
        ),
        SizedBox(height: 10,),
        Card(
          clipBehavior: Clip.antiAlias,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          elevation: 5,
          shadowColor: Colors.blue.shade50,
          child: Stack(
            alignment: Alignment(-0.5, 0.0),
            children: [
              Ink.image(
                image: AssetImage('images/events.jpg'),
                height: 200,
                // colorFilter: ColorFilter.mode(Colors.black, BlendMode.color),
                child: InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>events()));
                }),
                fit: BoxFit.cover,
              ),
              Text(
                'EventS',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico'),
              ),
            ],
          ),
        ),
        SizedBox(height: 10,),
        Card(
          clipBehavior: Clip.antiAlias,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          elevation: 5,
          shadowColor: Colors.blue.shade50,
          child: Stack(
            alignment: Alignment(-0.8,0.0),
            children: [
              Ink.image(
                image: AssetImage('images/LandF.jpg'),
                height: 200,
                // colorFilter: ColorFilter.mode(Colors.black, BlendMode.color),
                child: InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>lostfound()));
                }),
                fit: BoxFit.cover,
              ),
              Text(
                'Lost & FounD',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico'),
              ),
            ],
          ),
        ),
        SizedBox(height: 10,),
        Card(
          clipBehavior: Clip.antiAlias,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          elevation: 5,
          shadowColor: Colors.blue.shade50,
          child: Stack(
            alignment: Alignment(-0.5, 0.0),
            children: [
              Ink.image(
                image: AssetImage('images/complain.png'),
                height: 200,
                child: InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>complain()));
                }),
                fit: BoxFit.cover,
              ),
              Text(
                'ComplaiN',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico'),
              ),
            ],
          ),
        ),
        SizedBox(height: 10,),
        Card(
          clipBehavior: Clip.antiAlias,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          elevation: 5,
          shadowColor: Colors.blue.shade50,
          child: Stack(
            alignment: Alignment(-0.5, 0.0),
            children: [
              Ink.image(
                image: AssetImage('images/suggestion.jpg'),
                height: 200,
                // colorFilter: ColorFilter.mode(Colors.black, BlendMode.color),
                child: InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>suggestion()));
                }),
                fit: BoxFit.cover,
              ),
              Text(
                'SuggestioN',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico'),
              ),
            ],
          ),
        ),
        SizedBox(height: 10,),
      ],
    );
  }
}
