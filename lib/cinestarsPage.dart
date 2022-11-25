import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class cinestar extends StatelessWidget {
  const cinestar({Key? key}) : super(key: key);

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
                Image(image: AssetImage('images/cinestar.jpg')),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    '''🎞🎥 Wait is over🎥🎞

Be ready to express your inner Sharukh Khan and Madhuri Dixit 😜✌and brighten up your Expressions🎭

💢 AAYAAM: The Cultural Club has come up with event!!
💫🎥 Cine Stars 🎥💫 
       
The event which accounts the roots of Indian cinema....🎬🍿
 
"It's all about the following things"
🎭Acting
🕺 Dancing
🧑‍🎤 Mimicry
🗣 Dialogue delivery

⚠ Points to be concern⚠
✴ Keeping in mind that your performance must be of any Bollywood Actor or Actress
✴ Use of vulgar words is strictly prohibited.
✴ Must not have the revealing attire. (if wearing)
✴ Special consideration for time constraints.
✴ Originality of the particular character you are presenting must be retained (be it dance steps, mimicry or dialogues)
✴ Solo performance only.

❗ *You can add their accessories👩‍🎤 to your attire to make it more convenient for the audience to figure it out whom you are presenting.*❗


🏆 Grab a chance to win a certificate and exciting prizes🏆

Details of Event:-
🗓 Date of joy - 28, November,22
⌚ Happy Hours- 03:00 P.M onwards
🏫 Venue - Auditorium 

🎬 Maximum 2-2.5 minutes for each individual Participant 🎬

⏩ Registration link
https://docs.google.com/forms/d/e/1FAIpQLSe5uClRocKqkopRlmDlrPnMugmnC15hgjAdnXiBRu88VkcKmA/viewform?usp=sf_link

💡 Do Not Forget to Register yourself💡


FOR ANY QUERY FEEL FREE TO CONTACT📞 
Nikhil Panwar (President)
8368426256
Sakshi yadav(Vice President)
7456941856
Riya Sharma (Secretary)
8077247357''',
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
                    final url = 'https://docs.google.com/forms/d/e/1FAIpQLSe5uClRocKqkopRlmDlrPnMugmnC15hgjAdnXiBRu88VkcKmA/viewform';

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
    );;
  }
}

