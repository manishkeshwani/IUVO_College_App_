import 'package:flutter/material.dart';
import 'package:helping_hand/boxPage.dart';
import 'package:helping_hand/filesPage.dart';
import 'package:helping_hand/penPage.dart';
import 'package:helping_hand/pencilPage.dart';
import 'package:helping_hand/noteBookPage.dart';
import 'package:helping_hand/sheetsPage.dart';
import '';


class StationeryPage extends StatelessWidget {
  const StationeryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
            child: Text('Available Items',
              style: TextStyle(
                fontSize: 40,
                fontFamily: 'Pacifico',
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    elevation: 5,
                    clipBehavior: Clip.antiAlias,
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                    child:Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Ink.image(
                            image: AssetImage('images/pen.jpg'),
                            height: 180,
                            width: 180,
                            child: InkWell(onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>pens()));

                            }),
                            fit: BoxFit.cover,
                          ),
                          Text('Pen',style: TextStyle(fontFamily: 'Pacifico',fontSize: 20,),),
                        ]
                    ),
                  ),

                  Card(
                    elevation: 5,
                    clipBehavior: Clip.antiAlias,
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                    child:Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Ink.image(
                          image: AssetImage('images/pencil.jpg'),
                          height: 180,
                          width: 180,

                          child: InkWell(onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>pencil()));

                          }),
                          fit: BoxFit.cover,
                        ),
                        Text('Pencil',style: TextStyle(fontFamily: 'Pacifico',fontSize: 20,),),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    elevation: 5,
                    clipBehavior: Clip.antiAlias,
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                    child:Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Ink.image(
                          image: AssetImage('images/noteBook.jpg'),
                          height: 180,
                          width: 180,
                          child: InkWell(onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>notebook()));

                          }),
                          fit: BoxFit.cover,
                        ),
                        Text('Notebook',style: TextStyle(fontFamily: 'Pacifico',fontSize: 20,),),
                      ],
                    ),
                  ),

                  Card(
                    elevation: 5,
                    clipBehavior: Clip.antiAlias,
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                    child:Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Ink.image(
                          image: AssetImage('images/sheets.jpg'),
                          height: 180,
                          width: 180,

                          child: InkWell(onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>sheets()));

                          }),
                          fit: BoxFit.cover,
                        ),
                        Text('Sheets',style: TextStyle(fontFamily: 'Pacifico',fontSize: 20,),),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    elevation: 5,
                    clipBehavior: Clip.antiAlias,
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                    child:Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Ink.image(
                          image: AssetImage('images/box.jpg'),
                          height: 180,
                          width: 180,
                          child: InkWell(onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>box()));

                          }),
                          fit: BoxFit.cover,
                        ),
                        Text('Geometry Box',style: TextStyle(fontFamily: 'Pacifico',fontSize: 20,),),
                      ],
                    ),
                  ),

                  Card(
                    elevation: 5,
                    clipBehavior: Clip.antiAlias,
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                    child:Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Ink.image(
                          image: AssetImage('images/files.jpg'),
                          height: 180,
                          width: 180,

                          child: InkWell(onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>files()));
                          }),
                          fit: BoxFit.cover,
                        ),
                        Text('Files',style: TextStyle(fontFamily: 'Pacifico',fontSize: 20,),),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0,),
            ],
          ),
            ),
        ),
      ),
    );
  }
}
