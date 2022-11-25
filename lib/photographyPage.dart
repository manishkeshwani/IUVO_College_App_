import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class photography extends StatelessWidget {
  const photography({Key? key}) : super(key: key);

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
              'Hacknovate 4.0',
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
                Image(image: AssetImage('images/photography.jpg')),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text('''Life is all about Capturing the moments 📸
Havknovate 4.0 is back again with another mini event🌝

💫CAPTURE THE THRONE💫

Capture the Throne is all about using your imagination to capture the moment 📸
Each team can have 2-3 members.
Winners will get amazing prizes🏆💰

The event is categorized into the following categories:
~ Short Videos
~ Vlogs
~ Photography

All of the participants of this event will get the opportunity to have one-on-one interaction with SIH and other Hackathon winners to know more about 'How you can prepare for the hackathons ?.' and clear all your doubt regarding Hackathons, So what are you waiting for? Register yourselves as soon as possible and grab this chance 😌😌✨✨💥

‼Details of the event‼
📆Date- 19 November 2022
⏳Time- 10:00 am to 12:00 pm
📍Venue- ABESIT Campus

Registration Link- http://bit.ly/Capture_the_Throne

Participants must register themselves for Hacknovate 4.0 on Devfolio Portal before participating in Capture the Throne
Registration Link for Devfolio-https://hacknovate-4.devfolio.co/

Note- Participants can make team with anyone irrespective of the Hacknovate team but it is mandatory that every participant is fully registered on Devfolio.


🔴Registration will close on 18 November 2022 at 11:59 pm🔴

Connect with us-
https://linktr.ee/hacknovate4.0

For further queries, contact
Prakhar Sharma - 8242951773
Kanan Sharma - 9999160718
Shubham Kumar - 7217853109''',
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

