import 'package:flutter/material.dart';
import 'package:helping_hand/appMailPage.dart';
import 'package:helping_hand/appMessagePage.dart';

class appliancesPage extends StatelessWidget {
  const appliancesPage({Key? key}) : super(key: key);

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
              'About Appliances',
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

                children: [
                  SizedBox(height: 20,),
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
                          image: AssetImage('images/email.png'),
                          height: 200,
                          // colorFilter: ColorFilter.mode(Colors.black, BlendMode.color),
                          child: InkWell(onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>app_mail()));

                          }),
                          fit: BoxFit.cover,
                        ),
                        Text(
                          'Through Email',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 35,
                              // fontWeight: FontWeight.bold,
                              fontFamily: 'Pacifico'),
                        ),
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
                      alignment: Alignment.bottomCenter,
                      children: [
                        Ink.image(
                          image: AssetImage('images/sms.png'),
                          height: 200,
                          // colorFilter: ColorFilter.mode(Colors.black, BlendMode.color),
                          child: InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>app_message()));
                              }
                          ),
                          fit: BoxFit.cover,
                        ),
                        Text(
                          'Through Message',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 35,
                              // fontWeight: FontWeight.bold,
                              fontFamily: 'Pacifico'),
                        ),
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