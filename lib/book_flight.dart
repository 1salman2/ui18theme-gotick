import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:full_screen_image_null_safe/full_screen_image_null_safe.dart';
import 'package:intl/intl.dart';
import 'package:ui18theme/boarding.dart';
import 'package:ui18theme/utils/text_utils.dart';

class BookFlightScreen extends StatefulWidget {
  const BookFlightScreen({Key? key}) : super(key: key);

  @override
  State<BookFlightScreen> createState() => _BookFlightScreenState();
}

class _BookFlightScreenState extends State<BookFlightScreen> {
  TextUtils textUtils = TextUtils();
  TextEditingController dateController = TextEditingController();
  List images = ['assets/images/condnast.png', 'assets/images/count.png'];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dateController.text =
        DateFormat('MMM/dd/yyyy', "en_US").format(DateTime.now());
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                // child: Image.asset('assets/images/ticketbooking.png'),
                height: 230,
                width: 380,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,

                    image: DecorationImage(
                      fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/lane.png',

                        ))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                    textUtils.bold28(' Lets\n Book Your Flight', Colors.white,TextAlign.start),
                    SizedBox(
                      height: 1,
                    ),


                    Container(

                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),


                        border: Border.all(
                          width: 1.5,
                          color: Colors.white,



                        )
                      ),
                      child: Center(

                        child: IconButton(
                          iconSize:30,
                          icon:  Icon(
                            Icons.add_alert_outlined,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            print('Hi There');
                          },
                        ),
                      ),
                    ),



                  ],
                ),











              ),

              Padding(
                padding: const EdgeInsets.only(top: 150, right: 30, left: 30),
                child: Container(
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [

                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.end,
                        //   children: [
                        //
                        //   ],
                        // ),
                        Container(
                          height: 150,
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextField(
                                  style: TextStyle(color: Colors.black, height: 1.5),
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    prefixIcon: Padding(
                                      child: Icon(
                                        Icons.ice_skating,
                                      ),
                                      padding: const EdgeInsets.all(8.0),
                                    ),
                                    labelText: 'From',
                                    hintText: 'New york city',
                                    labelStyle: TextStyle(color: Colors.black),
                                    hintStyle: TextStyle(
                                      color: Colors.black,
                                      fontStyle: FontStyle.italic,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextField(
                                    style: TextStyle(color: Colors.grey),
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                      labelText: 'To',
                                      hintText: "San fransisco",
                                      labelStyle: TextStyle(color: Colors.black),
                                      hintStyle: TextStyle(color: Colors.black),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black),
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black),
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black),
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight/1.1,
                                child: Container(
                                  height: 52,
                                  width: 52,

                                  decoration: BoxDecoration(


                                    color: Colors.blue,
                                    shape: BoxShape.circle,


                                  ),
                                  child: IconButton(
                                    iconSize: 35,
                                    icon: const Icon(
                                      Icons.swap_vert,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      print('Hi There');
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            readOnly: true,
                            controller: dateController,


                            style: TextStyle(color: Colors.blue,


                            ),
                            keyboardType: TextInputType.datetime,
                            onTap: () async {
                              DateTime? date = await showDatePicker(
                                  context: context,

                                  initialDate: DateTime.now(),
                                  firstDate: DateTime.now(),
                                  lastDate: DateTime(2050),
                                  currentDate: DateTime.now(),

                                  initialEntryMode:
                                      DatePickerEntryMode.calendar,

                                  initialDatePickerMode: DatePickerMode.day,
                                  builder: (context, child) {
                                    return Theme(

                                      data: Theme.of(context).copyWith(
                                          colorScheme: ColorScheme.fromSwatch(
                                        primarySwatch: Colors.blue,

                                        accentColor: Colors.black,
                                        backgroundColor: Colors.black,
                                        cardColor: Colors.white,

                                      )),
                                      child: child!,
                                    );

                                  });

                              dateController.text =
                                  DateFormat('MMM/dd/yyyy', "en_US",)
                                      .format(DateTime.now());

                            },
                            decoration: InputDecoration(
                              labelText: 'Date',

                              prefixIcon: Icon(Icons.date_range_rounded),
                              suffixIcon: Icon(Icons.add_circle),

                              hintText: "",

                              labelStyle: TextStyle(color: Colors.black),
                              hintStyle: TextStyle(color: Colors.black),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            style: TextStyle(color: Colors.grey),
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              labelText: 'Passenger',
                              prefixIcon: Icon(Icons.accessibility),
                              hintText: "passenger",
                              labelStyle: TextStyle(color: Colors.black),
                              hintStyle: TextStyle(color: Colors.black),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            style: TextStyle(color: Colors.grey),
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(  
                              labelText: 'Class',
                              prefixIcon: Icon(Icons.accessibility),
                              hintText: "Economy",
                              labelStyle: TextStyle(color: Colors.black),
                              hintStyle: TextStyle(color: Colors.black),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 340,
                          height: 60,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                backgroundColor: Colors.blue,
                                elevation: 0.0,
                                side: BorderSide(color: Colors.white)),
                            child: Text('Search Flight',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const boardingP()),
                              );
                            },
                          ),
                        ),
                      ],
                    )),
              ),
            ],
          ),
          Container(
            child: Row(
              children: [
                Column(
                  children: [
                    // Text(
                    // ' Popular Flights',
                    //
                    // style: TextStyle(
                    // fontSize: 25,
                    // fontWeight: FontWeight.bold,
                    // color: Colors.black,
                    // ),
                    // ),
                    textUtils.normal25(
                        "Popular Flights", Colors.black, TextAlign.start),

                    Padding(
                      padding: EdgeInsets.all(0.0),
                      child: Text(
                        '       Explore and enjoy traveling with the best airlines',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            fontStyle: FontStyle.normal),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            height: 70,
          ),


           Container(
                height: MediaQuery.of(context).size.height / 2,

                child: GridView.builder(
                  scrollDirection: Axis.vertical,

                  itemCount: images.length,

                  itemBuilder: (context, index) => Container(
                    child: FullScreenWidget(

                      backgroundIsTransparent: true,

                      child: Image.asset(

                        images[index],
                        fit: BoxFit.fill,
                      ),

                    ),


                    margin: EdgeInsets.only(bottom: 10),
                    color: Colors.black,
                  ),



                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    childAspectRatio: 1.5,
                  ),

                )),


        ],
      ),
    );
  }
}
