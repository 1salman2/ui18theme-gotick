import 'package:flutter/material.dart';
import 'package:ui18theme/passchng.dart';

class PasRes extends StatefulWidget {
  const PasRes({Key? key}) : super(key: key);

  @override
  State<PasRes> createState() => _PasResState();
}

class _PasResState extends State<PasRes> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                      'Reset Password  ',
                      style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
                    ),
                    Padding(

                      padding: EdgeInsets.all(10.0),

                      child: Text(
                        'your new password must be different from the previously used password',
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

                          'New Password',
                          style: TextStyle(

                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.lock),
                          hintText: 'Enter Password',
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.blueAccent,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          border: OutlineInputBorder()),
                    ),
                    Row(
                      children: [
                        Text(
                          'Must be atleast 8 characters',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w300,



                          ),

                        ),
                      ],
                    )
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
                          'Confirm Password',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.lock),
                          hintText: 'Enter Password',
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.blueAccent,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          border: OutlineInputBorder()),
                    ),
                    Row(
                      children: [
                        Text(
                            'Both Password must be Match ',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w300,



                          ),

                        ),
                      ],
                    )
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


                  child: Text('Reset Password',  style:  TextStyle(

                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> const PasChng()),
                    );


                  },

                ),

              ),
            ),

      ]),
      ),
      ),
      ),
    );

  }
}
