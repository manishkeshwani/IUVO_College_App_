import 'package:flutter/material.dart';
class founditem extends StatefulWidget{
  @override
  _founditemState createState() => _founditemState();
}

class _founditemState extends State<founditem> {
  List<Person> persons= [];

  @override
  void initState() {
    //adding item to list, you can add using json from network
    persons.add(Person(id:"1", name:"Ragini Verma", phone:"9812122567", address:"Punch Machinr of Black Color,from 2CSB Classroom"));
    persons.add(Person(id:"2", name:"Prachi Sharma", phone:"9712122244", address:"Notebook of Data Structure,in Library"));
    persons.add(Person(id:"3", name:"Ankush Chauhan", phone:"73121224444", address:"Orange Strip I Card,from canteen"));
    persons.add(Person(id:"4", name:"Mona Chaudhary", phone:"7412122255", address:"Laptop, Asus Vivobook,from Ds Lab"));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade900,
        appBar: AppBar(
          title:Text("Add And Delete List"),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: persons.map((personone){
                return Container(
                  child: Card(
                    child:ListTile(
                      title: Text(personone.name),
                      subtitle: Text(personone.phone + "\n" + personone.address),
                      trailing: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.lightBlue
                        ),
                        child: Icon(Icons.delete),
                        onPressed: (){
                          //delete action for this button
                          persons.removeWhere((element){
                            return element.id == personone.id;
                          }); //go through the loop and match content to delete from list
                          setState(() {
                            //refresh UI after deleting element from list
                          });
                        },
                      ),
                    ),
                  ),

                );
              }).toList(),
            ),
          ),
        )

    );
  }
}

class Person{ //modal class for Person object
  String id, name, phone, address;
  Person({required this.id, required this.name, required this.phone, required this.address});
}