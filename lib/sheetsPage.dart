import 'package:flutter/material.dart';

class sheets extends StatelessWidget {
  const sheets({Key? key}) : super(key: key);

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
              "SheeTs",
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
                          'White A4 Sheets',
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
                          'Coloured A4 Sheets',
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
                          'White A3 Sheets',
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
                          'Coloured A3 Sheets',
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
