import 'package:flutter/material.dart';
class lostitem extends StatefulWidget{
  @override
  _lostitemState createState() => _lostitemState();
}

class _lostitemState extends State<lostitem> {
  List<Person> persons= [];

  @override
  void initState() {
    //adding item to list, you can add using json from network
    persons.add(Person(id:"1", name:"Neeru Chouhan", phone:"9812122233", address:"Punch Machine,Black Color"));
    persons.add(Person(id:"2", name:"Nikhil Mishra", phone:"9812122244", address:"Notebook,Data Structure"));
    persons.add(Person(id:"3", name:"Manish Kumar Keshwani", phone:"98121224444", address:"I Card,Orange Strip"));
    persons.add(Person(id:"4", name:"Banti Chauhan", phone:"9812122255", address:"Laptop, Asus Vivobook"));
    persons.add(Person(id:"5", name:"Pooja Verma", phone:"7312122255", address:"Smart Watch, square silver Dial"));
    persons.add(Person(id:"5", name:"Mridul Goel", phone:"7312122255", address:"practical file of COA,Name on cover"));
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