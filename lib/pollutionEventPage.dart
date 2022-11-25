import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class pollution extends StatelessWidget {
  const pollution({Key? key}) : super(key: key);

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
              'Pollution Control',
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
                Image(image: AssetImage('images/pollutionEvent.jpg'),),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    '''❗❗ ISTE STUDENT CHAPTER ❗❗
(Indian Society for Technical Education) are back with an excited event on NATIONAL POLLUTION CONTROL DAY 🏭 on 2nd December,2022 in our college.

In this event, you can participate in any of the theme-based events like:

➡ Poster Designing
➡ Presentation
➡ Model
➡ Speech
and Many more but strictly related to the theme.


🔆You can participate as individual or as a team (Maximum-2).
🔆 Fill the registration form on or before 29th November 2022.
🔆 You have to bring your own gadgets.
🔆 You can participate in multiple events.
🔆 Top 2 Winners will be given prizes and certificates.
🔆 E-certificate to all the attending participants.

Participation Fee: Rs 20 per team per event
🗓: 02nd December 2022
⏰: 10:00AM to 12:00PM
🏢: 2F-04

Google form link-
https://forms.gle/KtNUHvd3EDX4yYo17

Whatsapp Group Link: https://chat.whatsapp.com/FWeJxL8MLUlK1rkxogsyRw

For any doubts contact:
Anshul Sharma  9958536314

Tanya Sharma 7830766796

Mridul Goel 8375832267

Ayushi Vishnoi 7668209456

Anshul Shekhar 9470218939


Regards:-
ISTE Chapter-ABESIT''',
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
                    final url = 'https://docs.google.com/forms/d/e/1FAIpQLSdPauwapknM7NZUFLwv3qkijqhWx0yFeEjwcwgC8gPgMP3JAw/viewform';

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
