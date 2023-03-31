
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui18theme/utils/text_utils.dart';

class Tickets extends StatefulWidget {
  const Tickets({Key? key}) : super(key: key);

  @override
  State<Tickets> createState() => _TicketsState();
}

class _TicketsState extends State<Tickets> {
  TextUtils textUtils = TextUtils();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [

          Container(
            height: 190,
            width: 410,
            child: Container(
              // child: Image.asset('assets/images/ticketbooking.png'),
              height: 150,
              width: 420,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,

                  image: DecorationImage(
                      image: AssetImage(
                        'assets/images/blueworld.png',
                      ))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(


                  children: [
                    // Text(
                    //   ' Lets\n Book Your Flight',
                    //
                    //   style: TextStyle(
                    //     fontSize: 30,
                    //     fontWeight: FontWeight.bold,
                    //     color: Colors.black,
                    //   ),
                    // ),
                    textUtils.bold24(' My Ticket ', Colors.white,TextAlign.center),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_back_ios_rounded,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )


                  ],
                ),
              ),



            ),


          ),
          Padding(padding: EdgeInsets.only(top: 50)),


          Image.asset('assets/images/noticket.png',height: 200,width: 400,fit: BoxFit.fitHeight,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text(
                'No Ticket ',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              ),
              Padding(

                padding: EdgeInsets.all(10.0),

                child: Text(
                  'you have not book any flight yet. Explore hundred of flights right now',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.normal),
                ),
              ),


            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(

              width: 340,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    backgroundColor: Colors.blue,elevation: 0.0,side:BorderSide(color: Colors.white)),


                child: Text('Continue',  style:  TextStyle(

                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context)=> const PasChng()),
                  // );


                },

              ),

            ),
          ),
        ],
      ),
    );


  }
}
