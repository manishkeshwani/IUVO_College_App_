import 'package:flutter/material.dart';

class pencil extends StatelessWidget {
  const pencil({Key? key}) : super(key: key);

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
              "PenCils",
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
                          'HB Pencils',
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
                          'B Type Pencils',
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
                          'H Type Pencils',
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
                          'Charcoal Pencils',
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
