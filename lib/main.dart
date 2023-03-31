
import 'package:flutter/material.dart';
import 'package:ui18theme/login.dart';
import 'package:ui18theme/onboard.dart';
import 'package:ui18theme/signup.dart';
import 'package:ui18theme/utils/text_utils.dart';

void main() {
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
const MyApp({super.key});


// This widget is the root of your application.
@override
Widget build(BuildContext context) {
return MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'GO-Tick',
  // theme: new ThemeData(scaffoldBackgroundColor: const Color()),
  home: const MyHomePage(title: ''),
);
}
}

class MyHomePage extends StatefulWidget {
const MyHomePage({super.key, required this.title});


final String title;

@override
State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  TextUtils textUtils = TextUtils();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          Container(
            margin: EdgeInsets.all(10.0),

            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset('assets/images/airhosts.png',fit: BoxFit.cover,  width: 410,
                        height: 450),
                  ),
                ),
              ],
            ),


          ),

          Container(
            height: 35,

            child:
            // Text(
            //
            //   'Welcome To GoTick',
            //   style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            // ),
            textUtils.bold26('Welcome To GoTick', Colors.black,TextAlign.center),


          ),
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: Container(
              width: 295,
              height: 40,
              child:  Center(

                child: Text(

                  ' Going to Vacations makes our mind Calm and Life more Colorful get through difficult days',

                  style: TextStyle(fontSize: 14,  fontWeight: FontWeight.w200,fontStyle: FontStyle.italic),
                ),
              ),


            ),
          ),
          Container(

            width: 340,
            height: 60,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  backgroundColor: Colors.blue,elevation: 0.0,side:BorderSide(color: Colors.white)),


              child: Text('Signup',  style:  TextStyle(

                  fontSize: 20,
                  fontWeight: FontWeight.bold,
              )),
              onPressed: () {
                Navigator.push(
                    context,
                  MaterialPageRoute(builder: (context)=> OnBoarding()),
                );


              },

            ),

          ),

          Padding(

            padding: const EdgeInsets.all(9.0),
            child: SizedBox(


              child:  Container(
                color: Colors.white,
                width: 340,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      backgroundColor: Colors.white,elevation: 0.0,side:BorderSide(color: Colors.blue)),
                  child: Text('Login',  style:  TextStyle(
                    color: Colors.black,
                    fontSize: 20,
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
          )
        ],
      ),
    );
  }
}

