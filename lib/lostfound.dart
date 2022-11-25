import 'package:flutter/material.dart';
import 'package:helping_hand/lostitem.dart';
import 'package:helping_hand/founditem.dart';
class lostfound extends StatelessWidget {
  const lostfound({Key? key}) : super(key: key);

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
              'Lost and Found',
              style: TextStyle(
                fontSize: 40.0,
                fontFamily: 'Pacifico',
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(height: 10,),
                  Card(
                    clipBehavior: Clip.antiAlias,
                    shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                    elevation: 5,
                    shadowColor: Colors.blue.shade50,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Ink.image(
                          image: AssetImage('images/losti.jpeg'),
                          height: 200,
                          // colorFilter: ColorFilter.mode(Colors.black, BlendMode.color),
                          child: InkWell(onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>lostitem()));

                          }),
                          fit: BoxFit.cover,
                        ),
                        // Text(
                        //   'Lost from',
                        //   style: TextStyle(
                        //       color: Colors.black,
                        //       fontSize: 35,
                        //       // fontWeight: FontWeight.bold,
                        //       fontFamily: 'Pacifico'),
                        // ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Card(
                    clipBehavior: Clip.antiAlias,
                    shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                    elevation: 5,
                    shadowColor: Colors.blue.shade50,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Ink.image(
                          image: AssetImage('images/foundimage.jpeg'),
                          height: 200,
                          // colorFilter: ColorFilter.mode(Colors.black, BlendMode.color),
                          child: InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>founditem()));
                              }
                          ),
                          fit: BoxFit.cover,
                        ),
                        // Text(
                        //   'Found from',
                        //   style: TextStyle(
                        //       color: Colors.black,
                        //       fontSize: 35,
                        //       // fontWeight: FontWeight.bold,
                        //       fontFamily: 'Pacifico'),
                        // ),
                      ],
                    ),
                  ),
                ],
              )
          ),
        ),
      ),
    );
  }
}


