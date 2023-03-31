import 'package:flutter/material.dart';
import 'package:ui18theme/pasreset.dart';

class ResetPas extends StatefulWidget {
  const ResetPas({Key? key}) : super(key: key);

  @override
  State<ResetPas> createState() => _ResetPasState();
}

class _ResetPasState extends State<ResetPas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
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
                      children: const [
                        Text(
                          'Forget Password',
                          style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
                        ),
                        Padding(

                          padding: EdgeInsets.all(10.0),

                          child: Text(
                            'Enter your email address and we will send you confirmation code to reset your password',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          children: [

                            Text(
                              'Email',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        TextField(
                          decoration: InputDecoration(
                              hintText: 'Enter Email',
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blueAccent)),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                        ),
                      ],
                    ),
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


                      child: Text('Signin',  style:  TextStyle(

                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=> const PasRes()),
                        );


                      },

                    ),

                  ),
                ),








              ],


            ),


          ),
        ),

    );
  }
}

