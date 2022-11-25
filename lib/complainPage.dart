import 'package:flutter/material.dart';
import 'package:helping_hand/RaggingPage.dart';
import 'package:helping_hand/cleanlinessPage.dart';
import 'package:helping_hand/appliancesPage.dart';
import 'package:helping_hand/labPAge.dart';


class complain extends StatelessWidget {
  const complain({Key? key}) : super(key: key);

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
              'Complain About',
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
              child: compfunction(),
          ),
        ),
      ),
    );
  }
}

class compfunction extends StatefulWidget {
  const compfunction({Key? key}) : super(key: key);

  @override
  State<compfunction> createState() => _compfunctionState();
}

class _compfunctionState extends State<compfunction> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: 10,),
        Card(
          clipBehavior: Clip.antiAlias,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          elevation: 5,
          shadowColor: Colors.blue.shade50,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Ink.image(
                image: AssetImage('images/cleanliness.jpg'),
                height: 230,
                child: InkWell(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>cleanlinessPage()));

                }),
                fit: BoxFit.cover,
              ),
              Text(
                'Cleanliness',
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
            alignment: Alignment.bottomCenter,
            children: [
              Ink.image(
                image: AssetImage('images/appliances.jpg'),
                height: 230,
                // colorFilter: ColorFilter.mode(Colors.black, BlendMode.color),
                child: InkWell(
                    onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>appliancesPage()));
                    }
                ),
                fit: BoxFit.cover,
              ),
              Text(
                'Appliances',
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
            alignment: Alignment.bottomCenter,
            children: [
              Ink.image(
                image: AssetImage('images/lab.jpg'),
                height: 230,


                child: InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>labPage()));
                }),
                fit: BoxFit.cover,
              ),
              Text(
                'Laboratory Equipments',
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
            alignment: Alignment.bottomCenter,
            children: [
              Ink.image(
                image: AssetImage('images/ragging.gif'),
                height: 230,


                child: InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ragging()));
                }),
                fit: BoxFit.cover,
              ),
              Text(
                'Ragging',
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
