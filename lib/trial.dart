import 'package:flutter/material.dart';

class sample extends StatelessWidget {
  const sample({Key? key}) : super(key: key);

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
              'Sample',
              style: TextStyle(
                fontSize: 40,
                fontFamily: 'Pacifico',
              ),
            ),
          ),
        ),
        body: Container(
          child: Center(
            child: Text(
              'This is sample App',
              style: TextStyle(
                fontSize: 40,
                fontFamily: 'Pacifico',
                color: Colors.white
              ),
            ),
          ),
        ),
      ),
    );
  }
}
