import 'package:flutter/material.dart';
import 'package:helping_hand/main.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 3150), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => MyhomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal.shade900,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: CircleAvatar(
              backgroundImage: AssetImage('images/IUVO.jpg'),
              radius: 140,
            )),
            SizedBox(
              height: 60,
            ),
            Center(
              child: AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText('Your helping guide....',
                      textStyle: TextStyle(
                        fontSize: 30.0,
                        fontFamily: 'Pacifico',
                        color: Colors.white70,
                      ),
                      speed: Duration(milliseconds: 100))
                ],
              ),
            ),
          ],
        ));
  }
}
