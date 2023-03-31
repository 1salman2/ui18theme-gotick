import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:ui18theme/utils/text_utils.dart';

class boardingP extends StatefulWidget {
  const boardingP({Key? key}) : super(key: key);

  @override
  State<boardingP> createState() => _boardingPState();
}

class _boardingPState extends State<boardingP> {
  TextUtils textUtils = TextUtils();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(

        child: SingleChildScrollView(
          child: Column(

            children: [

              Stack(children: [
                Row(
                  children: [

                    IconButton(


                      onPressed: (){

                      },

                      icon: Icon(


                        Icons.arrow_back_ios_rounded,
                        color: Colors.black,



                      ),


                    ),
                  ],
                ),
                Container(

                  // child: Image.asset('assets/images/ticketbooking.png'),
                  height: 200,
                  width: 360,

                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,

                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/ticketbooking.png',
                          ))),
                  child: Column(

                    children: [
                      Text(

                        ' Boarding',

                        style: TextStyle(
                          height: 4,
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),


                    ],
                  ),



                ),
                Padding(
                  padding:
                  const EdgeInsets.only(top: 150, right: 30,left: 30),
                  child: Container(
                      width: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.health_and_safety_rounded,
                            color: Colors.redAccent,
                          ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),

                            child: Center(


                              child:
                              // Text(
                              //
                              //   'Air Lions',
                              //   style: TextStyle(
                              //     fontSize: 20,
                              //     fontWeight: FontWeight.bold,
                              //   ),
                              //
                              //
                              //
                              // ),
                              textUtils.bold24("Air Lions", Colors.black,TextAlign.center),

                            ),


                          ),
                          Padding(

                            padding: const EdgeInsets.all(8.0),

                            child: Row(



                              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                              children: [

                                // Text(
                                //     'NYC',
                                // style: TextStyle(
                                //   fontSize: 18
                                // ),
                                // ),
                                textUtils.normal18("NYC", Colors.black,TextAlign.start),
                                SizedBox(height: 16), // Add 16 pixels of space between the texts
                                // Text('SFO',
                                //   style: TextStyle(
                                //     fontSize: 18,
                                //
                                //
                                //   ),
                                // ),
                                textUtils.normal18("SFO", Colors.black,TextAlign.start),
                              ],



                            ),


                          ),
                          Padding(padding: EdgeInsets.all(0.0),
                            child:  Row(



                              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                              children: [

                                Text(
                                  'New York City',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300
                                  ),
                                ),

                                SizedBox(height: 8), // Add 16 pixels of space between the texts
                                Text('San Fransisco',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300


                                  ),
                                ),
                              ],



                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(0.0),
                            child:  Column(



                              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                              children: [

                                // Center(
                                //   child: Text(
                                //     '1h45m',
                                //     style: TextStyle(
                                //         fontSize: 12,
                                //         fontWeight: FontWeight.w900,
                                //       color: Colors.blue
                                //     ),
                                //   ),
                                // ),
                                textUtils.bold14("1h45m", Colors.blue,TextAlign.center),
                                Padding(

                                  padding: const EdgeInsets.all(8.0),

                                  child: Row(



                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                    children: [

                                      // Text(
                                      //   'Deport    ',
                                      //   style: TextStyle(
                                      //       fontSize: 14
                                      //   ),
                                      // ),
                                      textUtils.normal14("Deport", Colors.black,TextAlign.start),
                                      SizedBox(height: 16), // Add 16 pixels of space between the texts
                                      // Text('  Landing',
                                      //   style: TextStyle(
                                      //     fontSize: 14,
                                      //
                                      //
                                      //   ),
                                      // ),
                                      textUtils.normal14("Landing", Colors.black,TextAlign.start),
                                    ],



                                  ),


                                ),
                                Row(children:  <Widget>[
                                  Expanded(
                                      flex: 1,
                                      child: SizedBox()),

                                  Expanded(
                                    flex: 2,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: const [
                                        Expanded(
                                          child: Divider(
                                            height: 5,
                                            thickness: 1,
                                            color: Colors.blue,

                                          ),
                                        ),
                                        Icon(Icons.airplanemode_active,
                                        color: Colors.blue,),
                                        Expanded(
                                          child: Divider(
                                            height: 5,

                                            thickness: 1,
                                            color: Colors.blue,

                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                      flex: 1,
                                      child: SizedBox()),
                                ]),
                                Padding(padding: EdgeInsets.all(0.0),
                                  child:  Row(




                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                    children: [

                                      // Text(
                                      //   '  10:00',
                                      //   style: TextStyle(
                                      //       fontSize: 20,
                                      //       fontWeight: FontWeight.w500
                                      //   ),
                                      // ),
                                      textUtils.bold20("  10:00", Colors.black,TextAlign.start),
                                      SizedBox(height: 0), // Add 16 pixels of space between the texts
                                      // Text('11:30    ',
                                      //   style: TextStyle(
                                      //       fontSize: 20,
                                      //       fontWeight: FontWeight.w500
                                      //
                                      //
                                      //   ),
                                      // ),
                                      textUtils.bold20("11:30  ", Colors.black,TextAlign.start),
                                    ],



                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Row(

                                    children: [
                                      Text(
                                        '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold
                                        ),

                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 40,

                                  child: Padding(

                                    padding: const EdgeInsets.all(8.0),

                                    child: Row(



                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                      children: [

                                        // Text(
                                        //   'Passanger name',
                                        //   style: TextStyle(
                                        //       fontSize: 14
                                        //   ),
                                        // ),
                                        textUtils.normal14(" Passanger name", Colors.black,TextAlign.start),
                                        SizedBox(height: 16), // Add 16 pixels of space between the texts
                                        // Text('Flight Date',
                                        //   style: TextStyle(
                                        //     fontSize: 14,
                                        //
                                        //
                                        //   ),
                                        // ),
                                        textUtils.normal14("Flight Date", Colors.black,TextAlign.start),
                                      ],



                                    ),


                                  ),

                                ),
                                Row(



                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                  children: [

                                    // Text(
                                    //   'Salman ALi Qasim',
                                    //   style: TextStyle(
                                    //       fontSize: 14,
                                    //       fontWeight: FontWeight.bold
                                    //   ),
                                    // ),
                                    textUtils.normal14("  Salman ALi Qasim", Colors.black,TextAlign.start),
                                    SizedBox(height: 16), // Add 16 pixels of space between the texts
                                    // Text('Feb 20,2023',
                                    //   style: TextStyle(
                                    //     fontSize: 14,
                                    //     fontWeight: FontWeight.bold
                                    //
                                    //
                                    //   ),
                                    // ),
                                    textUtils.normal14("Feb 20,2023", Colors.black,TextAlign.start),
                                  ],



                                ),
                                Container(
                                  height: 30,

                                  child: Padding(

                                    padding: const EdgeInsets.all(8.0),

                                    child: Row(



                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                      children: [

                                        // Text(
                                        //   'Terminal',
                                        //   style: TextStyle(
                                        //       fontSize: 14
                                        //   ),
                                        // ),
                                        textUtils.normal14("Terminal", Colors.black,TextAlign.start),
                                        SizedBox(height: 16), // Add 16 pixels of space between the texts
                                        // Text('Gate',
                                        //   style: TextStyle(
                                        //     fontSize: 14,
                                        //
                                        //
                                        //   ),
                                        // ),
                                        textUtils.normal14("Gate", Colors.black,TextAlign.start),
                                      ],



                                    ),


                                  ),

                                ),
                                Row(



                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                  children: [

                                    // Text(
                                    //   '       4',
                                    //   style: TextStyle(
                                    //       fontSize: 14,
                                    //       fontWeight: FontWeight.bold
                                    //   ),
                                    // ),
                                    textUtils.normal14("        4", Colors.black,TextAlign.start),
                                    SizedBox(height: 16), // Add 16 pixels of space between the texts
                                    // Text(' A4     ',
                                    //   style: TextStyle(
                                    //       fontSize: 14,
                                    //       fontWeight: FontWeight.bold,
                                    //
                                    //
                                    //   ),
                                    // ),
                                    textUtils.normal14("A4    ", Colors.black,TextAlign.start),
                                  ],

                                ),



                              ],


                              



                            ),
                          ),
                          Container(
                            height: 50,

                            child: Padding(

                              padding: const EdgeInsets.all(8.0),

                              child: Row(



                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [

                                  Text(
                                    'Seat',
                                    style: TextStyle(
                                        fontSize: 14
                                    ),
                                  ),
                                  SizedBox(height: 16), // Add 16 pixels of space between the texts
                                  Text('Class',
                                    style: TextStyle(
                                      fontSize: 14,


                                    ),
                                  ),
                                ],



                              ),


                            ),

                          ),
                          Row(



                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [

                              Text(
                                '  B4',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(height: 16), // Add 16 pixels of space between the texts
                              Text('Economy',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,



                                ),
                              ),
                            ],



                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(

                              children: const [
                                Text(
                                  '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold
                                  ),

                                )
                              ],
                            ),
                          ),
                          BarcodeWidget(
                            barcode: Barcode.code128(), // Barcode type and settings
                            data: '01 021 026 54 02 554 454', // Content
                            width: 250,
                            height: 80,
                          ),
                          Container(
                            width: 345,
                            height: 60,
                            child: ElevatedButton(

                              style: ElevatedButton.styleFrom(

                                  shape: RoundedRectangleBorder(

                                      borderRadius: BorderRadius.circular(10)),
                                  backgroundColor: Colors.grey,

                                  elevation: 0.0,


                                  side: BorderSide(color: Colors.white)),
                              child: Row(
                                children: [
                                  IconButton(
                                    icon: const Icon(Icons.download),

                                    onPressed: () {
                                      setState(() {

                                      });
                                    },
                                  ),
                                  Text(
                                      'Download Ticket',


                                      style: TextStyle(




                                        fontSize: 20,

                                        fontWeight: FontWeight.bold,
                                      )),
                                ],
                              ),
                              onPressed: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(builder: (context)=> const emailvf()),
                                // );
                              },
                            ),
                          ),










                        ],

                      )

                  ),

                ),

              ],

              ),
            ],
          ),
        ),
      ),
    );
  }
}
