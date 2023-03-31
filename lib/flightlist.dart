import 'package:flutter/material.dart';
import 'package:ui18theme/flightlist.dart';


class FlightList extends StatefulWidget {
 const  FlightList({Key? key}) : super(key: key);



  State<FlightList> createState() => _FlightListState();

}

List<Person> persons= [];
class _FlightListState extends State<FlightList> {
  List<Person> persons = [];


@override
  void initState() {
    // TODO: implement initState
    super.initState();

    persons.add(Person(id:"1", name:"Canada", phone:"10:20 ", address:"Kathmandu, Nepal"));
    persons.add(Person(id:"2", name:"United Kingdom", phone:"11:30", address:"Manchester"));
    persons.add(Person(id:"3", name:"Pakistan", phone:"12:00", address:"Gajumata"));
    persons.add(Person(id:"4", name:"US America", phone:"1:00", address:"Pokhara, Nepal"));
    persons.add(Person(id:"5", name:"Saudia Arabia", phone:"2:30", address:"Jadeha"));
    persons.add(Person(id:"6", name:"Dubai", phone:"4:00", address:"Sharja"));
    persons.add(Person(id:"7", name:"Turkey ", phone:"5:00", address:"Istanbul"));
    persons.add(Person(id:"8", name:"Malaysia", phone:"6:00", address:"Bangalore, India"));
    persons.add(Person(id:"9", name:"Singapur", phone:"7:00", address:"Karachi, Pakistan"));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:  SafeArea(

          child:
          Container(
            color: Colors.black,



            child: SingleChildScrollView(





               child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(

                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: persons.map((personone){
                      return Container(

                        child: Card(
                          child:ListTile(
                            title: Text(personone.name.toString()),
                            subtitle: Text(personone.phone.toString() + "\n" + personone.address.toString()),
                            trailing: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.redAccent
                              ),
                              child: Icon(Icons.flight),
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
              ),
            ),
          ),
        )

    );
  }
}

class Person{ //modal class for Person object
  String? id, name, phone, address;
  Person({ this.id,  this.name,  this.phone,  this.address});
}
