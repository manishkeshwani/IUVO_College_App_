import 'package:flutter/material.dart';
import 'package:helping_hand/burgerPage.dart';
import 'package:helping_hand/hotDrinkPage.dart';
import 'package:helping_hand/maggiePage.dart';
import 'package:helping_hand/pavbhajiPage.dart';
import 'package:helping_hand/pizzaPage.dart';
import 'package:helping_hand/samosaPage.dart';
import 'package:helping_hand/sandwichPage.dart';
import 'package:helping_hand/ColdDrinkPage.dart';


class foodPage extends StatelessWidget {
  const foodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
            child: Text('Food',
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
                        image: AssetImage('images/burger.png'),
                        height: 180,
                        width: 180,
                        child: InkWell(onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>burger()));
                        }),
                        fit: BoxFit.cover,
                      ),
                      Text('Burger',style: TextStyle(fontFamily: 'Pacifico',fontSize: 20,),),
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
                          image: AssetImage('images/sandwich.jpg'),
                          height: 180,
                          width: 180,
                          // colorFilter: ColorFilter.mode(Colors.black, BlendMode.color),
                          child: InkWell(onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>sandwich()));
                          }),
                          fit: BoxFit.cover,
                        ),
                        Text('Sandwich',style: TextStyle(fontFamily: 'Pacifico',fontSize: 20,),),
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
                          image: AssetImage('images/samosa.jpg'),
                          height: 180,
                          width: 180,
                          child: InkWell(onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>samose()));
                          }),
                          fit: BoxFit.cover,
                        ),
                        Text('Samosa',style: TextStyle(fontFamily: 'Pacifico',fontSize: 20,),),
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
                          image: AssetImage('images/noodles.jpg'),
                          height: 180,
                          width: 180,
                          // colorFilter: ColorFilter.mode(Colors.black, BlendMode.color),
                          child: InkWell(onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>maggie()));
                          }),
                          fit: BoxFit.cover,
                        ),
                        Text('Maggie',style: TextStyle(fontFamily: 'Pacifico',fontSize: 20,),),
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
                          image: AssetImage('images/pizza.jpg'),
                          height: 180,
                          width: 180,
                          child: InkWell(onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>pizza()));
                          }),
                          fit: BoxFit.cover,
                        ),
                        Text('Pizza',style: TextStyle(fontFamily: 'Pacifico',fontSize: 20,),),
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
                          image: AssetImage('images/pav_bhaji.jpg'),
                          height: 180,
                          width: 180,
                          // colorFilter: ColorFilter.mode(Colors.black, BlendMode.color),
                          child: InkWell(onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>pavbhaji()));
                          }),
                          fit: BoxFit.cover,
                        ),
                        Text('Pav Bhaji',style: TextStyle(fontFamily: 'Pacifico',fontSize: 20,),),
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
                          image: AssetImage('images/coldDrink.jpg'),
                          height: 180,
                          width: 180,
                          child: InkWell(onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>coldDrink()));
                          }),
                          fit: BoxFit.cover,
                        ),
                        Text('Cold Drinks',style: TextStyle(fontFamily: 'Pacifico',fontSize: 20,),),
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
                          image: AssetImage('images/hotDrink.jpg'),
                          height: 180,
                          width: 180,
                          // colorFilter: ColorFilter.mode(Colors.black, BlendMode.color),
                          child: InkWell(onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>hotDrink()));
                          }),
                          fit: BoxFit.cover,
                        ),
                        Text('Hot Drinks',style: TextStyle(fontFamily: 'Pacifico',fontSize: 20,),),
                      ],
                    ),
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
