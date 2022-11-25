import 'package:flutter/material.dart';

class box extends StatelessWidget {
  const box({Key? key}) : super(key: key);

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
              "Geometry Box",
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
                          'Geometry Box',
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
                          'Pencil Box',
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
