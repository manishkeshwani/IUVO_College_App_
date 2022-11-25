import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class treasureHunt extends StatelessWidget {
  const treasureHunt({Key? key}) : super(key: key);

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
              'Own The Throne',
              style: TextStyle(
                fontFamily: 'Pacifico',
                color: Colors.white,
                fontSize: 40.0,
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image(image: AssetImage('images/treasureHunt.jpg')),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    '''Want some treasure in life❓
Join us for the second mini event of Hacknovate 4.0
💥Own the Throne💥

Own the Throne is a treasure hunt which will be played in teams of 3 each✅
Winners will be getting amazing gift!! 💸

↪Details of the Event 
🗓 Date : 12th November, 2022
⏱ Time : 10:00 am to 12:00 pm
🏡 Venue : ABESIT Campus

🖇Registration Link for Treasure Hunt - http://bit.ly/Own_the_Throne

Prerequisites are:
▫ Participants must register themselves through Devfolio in Hacknovate 4.0
Registration Link for Devfolio - http://hacknovate-4.devfolio.co

▫ Participants must follow all the social media handles of Hacknovate 4.0


Note - You can make teams with anyone irrespective of you Hackathon team but the only criteria is every member should fully register themselves in Devfolio. 

🔴Registration closes on 10th November, 2022 at 11:59 pm🔴

Contact Us: https://linktr.ee/hacknovate4.0
For further queries contact:
Prakhar Sharma- 8742951773
Kanan Sharma- 9999160718
Shubham Kumar- 7217853109''',
                    style: TextStyle(
                      fontSize: 20.0,
                      // fontFamily: 'Pacifico',
                      color: Colors.white70,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.all(10.0)),
                  child: Text(
                    'Click For link',
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                  onPressed: () async {
                    final url = 'https://docs.google.com/forms/d/e/1FAIpQLSfNDUkRfzYRzLpFUWq4z4sBCKgqTb7WmNjgJPz69gRGcCmqcw/viewform';

                    if (await canLaunch(url)) {
                      await launch(url, forceSafariVC: false);
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
