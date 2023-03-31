import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:ui18theme/login.dart';
import 'package:ui18theme/utils/text_utils.dart';


class emailvf extends StatefulWidget {
const emailvf({super.key}) ;

@override
State<emailvf> createState() => _emailvfState();
}

class _emailvfState extends State<emailvf> {
  TextUtils textUtils = TextUtils();
@override
Widget build(BuildContext context) {
  return Scaffold(
    body:   SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

              IconButton(


                onPressed: (){

                },

                icon: Icon(


                  Icons.arrow_back_ios_rounded,
                  color: Colors.black,


                ),

              ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                margin: EdgeInsets.only(top: 40), //

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    // Text(
                    //   'Email Verification',
                    //   style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
                    // ),
                    textUtils.bold30("Email Verification", Colors.black,TextAlign.start),
                    Padding(

                      padding: EdgeInsets.all(10.0),

                      child:
                      // Text(
                      //   'Enter the verification code we sent on: ****man@gmail.com',
                      //   style: TextStyle(
                      //       fontSize: 14,
                      //       fontWeight: FontWeight.w300,
                      //       fontStyle: FontStyle.italic),
                      // ),
                      textUtils.normal14("Enter the verification code we sent on: ****man@gmail.com", Colors.black,TextAlign.start),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:(
               Pinput(

                 length: 6,
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 defaultPinTheme: PinTheme(
                   height: 60.0,
                   width: 70.0,
                   decoration: BoxDecoration(
                     shape: BoxShape.rectangle,
                     color: Colors.white,
                     border: Border.all(
                       color: Colors.black.withOpacity(0.5),
                       width: 1.0,
                     )
                   )
                 ),


               )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Text(
                    'Dont recieve a code ? ',
                  ),
                  InkWell(
                    onTap: (){
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
                    },
                    child: Text(
                      ' Resend ',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16
                      ),
                    ),
                  ),
                ],
              ),
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


                  child: Text('Verify Account',  style:  TextStyle(

                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  )),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> const login()),
                    );


                  },

                ),

              ),
            ),




          ],


        ),


      ),
    )

      );
}
}
