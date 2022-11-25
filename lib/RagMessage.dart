import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class rag_message extends StatelessWidget {
  const rag_message({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: Center(
            child: Text(
              'Message',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 40,
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
              child: content()
          ),
        ),
      ),
    );
  }
}

class content extends StatefulWidget {
  const content({Key? key}) : super(key: key);

  @override
  State<content> createState() => _contentState();
}

class _contentState extends State<content> {
  final TextEditingController _textcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 100,),
        (_textcontroller.value.text.isEmpty) ? Text('Please Enter Message',style: TextStyle(fontSize: 20,fontFamily: 'Pacifico'),) : Text("Message to be send",style: TextStyle(fontSize: 20, fontFamily: 'Pacifico'),),
        SizedBox(height: 20,),
        Container(
          padding: EdgeInsets.all(20.0),
          child: TextFormField(
            minLines: 5,
            maxLines: 10,
            controller: _textcontroller,
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
                hintText: 'Please write your Complain here.',
                hintStyle: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 20.0,
                  color: Colors.grey,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                )
            ),
          ),
        ),
        SizedBox(height: 20,),
        ElevatedButton(
          child: Text("Send Message",style: TextStyle(fontFamily: 'Pacifico',fontSize: 15),),
          onPressed: (){
            setState(() {
              (_textcontroller.value.text.isNotEmpty) ? launch("sms:+917042671258?body=${_textcontroller.value.text}") :  _textcontroller.notifyListeners();
            });

          },
        ),
        // ElevatedButton(onPressed: onPressed, child: child)
      ],
    );
  }
}

