import 'package:flutter/material.dart';

class pens extends StatelessWidget {
  const pens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: Center(
            child: Text(
              "Pens",
              style: TextStyle(
                  fontSize: 40, fontFamily: 'Pacifico', color: Colors.white),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 10.0,
              ),
              Card(
                shadowColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                elevation: 5.0,
                color: Colors.blue.shade900,
                child: Center(
                    child: Text(
                  'Blue Pen',
                  style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 30,
                      color: Colors.white),
                )),
              ),
              SizedBox(
                height: 10.0,
              ),
              Card(
                shadowColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                elevation: 5.0,
                color: Colors.blue.shade900,
                child: Center(
                    child: Text(
                      'Black Pen',
                      style: TextStyle(
                          fontFamily: 'Pacifico',
                          fontSize: 30,
                          color: Colors.white),
                    )),
              ),
              SizedBox(
                height: 10.0,
              ),
              Card(
                shadowColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                elevation: 5.0,
                color: Colors.blue.shade900,
                child: Center(
                    child: Text(
                      'Color Pens',
                      style: TextStyle(
                          fontFamily: 'Pacifico',
                          fontSize: 30,
                          color: Colors.white),
                    )),
              ),
              SizedBox(
                height: 10.0,
              ),
              Card(
                shadowColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                elevation: 5.0,
                color: Colors.blue.shade900,
                child: Center(
                    child: Text(
                      'Glitter Pens',
                      style: TextStyle(
                          fontFamily: 'Pacifico',
                          fontSize: 30,
                          color: Colors.white),
                    )),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
