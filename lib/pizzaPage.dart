import 'package:flutter/material.dart';
import 'package:helping_hand/trial.dart';

class pizza extends StatefulWidget {
  const pizza({Key? key}) : super(key: key);

  @override
  State<pizza> createState() => _pizzaState();
}

class _pizzaState extends State<pizza> {

  bool _value1 = false;
  bool _value2 = false;
  bool _value3 = false;
  bool _value4 = false;
  bool _value5 = false;
  int sum = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(unselectedWidgetColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FloatingActionButton(
            elevation: 10.0,
            backgroundColor: Colors.blue.shade900,
            onPressed: (){
              if(sum!=0) {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => sample()));
              }
            },
            child: Center(child: Text('Pay',style: TextStyle(fontFamily: 'Pacifico',fontSize: 17),)),
          ),
        ),
        bottomNavigationBar: SizedBox(
          height: 50,
          child: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            elevation: 10.0,
            child: Container(
                padding: EdgeInsets.all(10.0),
                alignment: Alignment.centerLeft,
                child: Text('Total Amount : ${sum}',style: TextStyle(fontSize: 20,fontFamily: 'Pacifico',color: Colors.white),)),
            color: Colors.blue.shade900,

          ),
        ),

        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: Center(
            child: Text(
              'PizzA',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 40.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(child:
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.white),

                      borderRadius: BorderRadius.circular(20.0)),
                  child: CheckboxListTile(
                    title: const Text('Tomato Pizza',style: TextStyle(fontSize: 20,fontFamily: 'Pacifico'),),
                    subtitle: const Text('Rs 100'),
                    autofocus: false,
                    activeColor: Colors.white,
                    checkColor: Colors.blue,
                    selected: _value1,
                    value: _value1,
                    onChanged: (bool? value) {
                      setState(() {
                        _value1 = value!;
                        if(_value1 == true){
                          sum = sum + 100;
                        }
                        else{
                          sum = sum - 100;
                        }
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.white),

                      borderRadius: BorderRadius.circular(20.0)),
                  child: CheckboxListTile(
                    title: const Text('Onion Pizza',style: TextStyle(fontSize: 20,fontFamily: 'Pacifico'),),
                    subtitle: const Text('Rs 100'),
                    autofocus: false,
                    activeColor: Colors.white,
                    checkColor: Colors.blue,
                    selected: _value2,
                    value: _value2,
                    onChanged: (bool? value) {
                      setState(() {
                        _value2 = value!;
                        if(_value2 == true){
                          sum = sum + 100;
                        }
                        else{
                          sum = sum - 100;
                        }
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.white),

                      borderRadius: BorderRadius.circular(20.0)),
                  child: CheckboxListTile(
                    title: const Text('Corn Pizza',style: TextStyle(fontSize: 20,fontFamily: 'Pacifico'),),
                    subtitle: const Text('Rs 110'),
                    autofocus: false,
                    activeColor: Colors.white,
                    checkColor: Colors.blue,
                    selected: _value3,
                    value: _value3,
                    onChanged: (bool? value) {
                      setState(() {
                        _value3 = value!;
                        if(_value3 == true){
                          sum = sum + 110;
                        }
                        else{
                          sum = sum-110;
                        }
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.white),

                      borderRadius: BorderRadius.circular(20.0)),
                  child: CheckboxListTile(
                    title: const Text('Capsicum Pizza',style: TextStyle(fontSize: 20,fontFamily: 'Pacifico'),),
                    subtitle: const Text('Rs 100'),
                    autofocus: false,
                    activeColor: Colors.white,
                    checkColor: Colors.blue,
                    selected: _value4,
                    value: _value4,
                    onChanged: (value) {
                      setState(() {
                        _value4 = value!;
                        if(_value4 == true){
                          sum = sum + 100;
                        }
                        else{
                          sum = sum-100;
                        }
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.white),

                      borderRadius: BorderRadius.circular(20.0)),
                  child: CheckboxListTile(
                    title: const Text('Veg Pizza',style: TextStyle(fontSize: 20,fontFamily: 'Pacifico'),),
                    subtitle: const Text('Rs 150'),
                    autofocus: false,
                    activeColor: Colors.white,
                    checkColor: Colors.blue,
                    selected: _value5,
                    value: _value5,
                    onChanged: (value) {
                      setState(() {
                        _value5 = value!;
                        if(_value5 == true){
                          sum = sum + 150;
                        }
                        else{
                          sum = sum-150;
                        }
                      });
                    },
                  ),
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



