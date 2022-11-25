import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class hackathon extends StatelessWidget {
  const hackathon({Key? key}) : super(key: key);

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
                Image(image: AssetImage('images/hackathon.jpg')),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    '''ATTENTION!! Everyone

THE WAIT IS FINALLY OVERRR! and we are Back with a Bang
⚡ HACKNOVATE 4.0⚡
🔸Hacknovate 4.0 is all set to get on board with all the tech enthusiasts, innovators, business visionaries and coders together💯

Are you ready to experience the true spirit of Hackathon ❓
✅Hacknovate 4.0 is a 12 hour hackathon, so Gear up with all the equipment and expertise needed to complete a project in 12 hours with the potential to transform the future with your inventive products✨

Stand a chance to win🥰
↪Cash prizes worth Rupees 1.5 lacs
↪ Swags
↪ Goodies and much more ‼

🗓Mark your Calenders📍
25th November, 2022

What are you waiting for‼
Register yourself ASAP
🖇Registration Link - http://hacknovate-4.devfolio.co

For prizes and more details, visit💫
https://bit.ly/Hacknovate4_guide

🌐Website : https://hacknovate4.tech

📝Connect with us : https://linktr.ee/hacknovate4.0

For any queries, Contact :
Prakhar Sharma (8742951773)
Kanan Sharma (9999160718)
Shubham Kumar (7217853109)''',
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
                    final url = 'https://www.hacknovate4.tech/';

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
