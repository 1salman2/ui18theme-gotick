import 'package:flutter/material.dart';
import 'package:ui18theme/dasboard.dart';
import 'package:ui18theme/forgetpas.dart';
import 'package:ui18theme/home_screen.dart';
import 'package:ui18theme/utils/text_utils.dart';

class login extends StatefulWidget {
  const login({
    super.key,
  });
  @override
  State<login> createState() => _mylogin();
}

class _mylogin extends State<login> {
  TextUtils textUtils = TextUtils();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(

          children: [
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                margin: EdgeInsets.only(top: 40), //

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    // Text(
                    //   'Welcome Back!',
                    //   style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    // ),
                    textUtils.medium30("Welcome Back!", Colors.black,TextAlign.start),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child:
                      Text(
                        'Please sign in to your account',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                            fontStyle: FontStyle.normal),
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
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        children: [

                          // Text(
                          //   'Email',
                          //   style: TextStyle(
                          //       fontSize: 22, fontWeight: FontWeight.bold),
                          // ),
                          textUtils.normal20("Email", Colors.black,TextAlign.start),

                        ],
                      ),
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
              padding: const EdgeInsets.all(14.0),
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        children: [
                          // Text(
                          //   'Password',
                          //   style: TextStyle(
                          //       fontSize: 25, fontWeight: FontWeight.bold),
                          // ),
                          textUtils.normal20("Password", Colors.black,TextAlign.start),
                        ],

                      ),
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
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // Text('Forgot Password?', ),
                  InkWell(
                      onTap: (){
                        Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => ResetPas()
                                ),);
                      },
                      child:
                      // Text('Reset Password   ',
                      // style: TextStyle(
                      //   color: Colors.blueAccent,
                      //   fontSize: 18,
                      // ),)
                      textUtils.normal16("Reset Password ", Colors.blue,TextAlign.start),
                  ),
                  // ButtonBar(
                  //   text: 'Reset Password',
                  //   clear: true,
                  //   onTap: () => Navigator.of(context).push(
                  //     MaterialPageRoute(
                  //         builder: (context) => _mylogin()
                  //     ),
                  //   ),
                  // ),
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


                  child: Text('Signin',  style:  TextStyle(

                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> const HomeScreen()),
                    );


                  },

                ),

              ),
            ),
            Row(children: const <Widget>[
              Expanded(
                  child: Divider(
                    height: 40,
                    thickness: 0.4,
                    color: Colors.black,
                  )),
              Text(" Or sign in with "),
              Expanded(
                  child: Divider(
                    height: 20,
                    thickness: 0.4,
                    color: Colors.black,
                  )),
            ]),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  socialLoginButton(image:"google.png",onTap: null ),
                  socialLoginButton(image:"facebook.png", ),
                  socialLoginButton(image:"apple-logo.png", ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Text(
                    'Already a member?',
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                    },
                    child: Text(
                      'Signin',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),

    );
  }
  socialLoginButton({image,onTap}){
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10)
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/images/$image"),
        ),
      ),
    );
  }
}
