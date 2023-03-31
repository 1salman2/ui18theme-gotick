import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ui18theme/emailverify.dart';
import 'package:ui18theme/login.dart';
import 'package:ui18theme/utils/text_utils.dart';

class signup extends StatefulWidget {
  const signup({
    super.key,
  });

  @override
  State<signup> createState() => _Signup();
}

class _Signup extends State<signup> {
  bool isChecked = false;
  TextUtils textUtils = TextUtils();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 40), //

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    // Text(
                    //   'Getting Started!',
                    //   style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    // ),
                    textUtils.bold30('Getting Started!', Colors.black,TextAlign.left),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child:
                      // Text(
                      //   'Create an account to start searching for the event you are looking for',
                      //   style: TextStyle(
                      //       fontSize: 15,
                      //       fontWeight: FontWeight.w300,
                      //       fontStyle: FontStyle.italic),
                      // ),
                      textUtils.normal11('Create an account to start searching for the event you are looking for', Colors.black,TextAlign.start),

                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Row(
                          children: [

                            textUtils.medium18("Email", Colors.black,TextAlign.start),
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
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          children: [

                            textUtils.medium18("Username", Colors.black,TextAlign.start),
                          ],
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            hintText: 'Enter Username',
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
                padding: const EdgeInsets.all(10.0),
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
                            textUtils.medium18
                              ("Password", Colors.black,TextAlign.start),

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
              Row(
                children: [
                  Checkbox(
                      value: isChecked,
                      activeColor: Colors.blue,
                      onChanged: (newBool) {
                        setState(() {
                          isChecked = newBool!;
                        });
                        print(newBool);
                      }),
                  SizedBox(
                    width: 1,
                  ),
                  // textUtils.normal13("I Agrer with Terms of service and privacy policy" , Colors.black, TextAlign.right),
                  Text.rich(
                    TextSpan(
                      text: 'I agree with ',
                      children: [
                        TextSpan(
                          text: 'Terms of Service',
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // handle terms of service click
                              print('Terms of Service clicked');
                            },
                        ),
                        TextSpan(text: ' and '),
                        TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // handle privacy policy click
                              print('Privacy Policy clicked');
                            },
                        ),
                      ],
                    ),
                  ),
                ],
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
                  child: Text('REGISTER',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> const emailvf()),
                    );
                  },
                ),
              ),
              Row(children:  <Widget>[
                Expanded(
                    child: Divider(
                  height: 40,
                  thickness: 0.4,
                  color: Colors.black,
                )),
              textUtils.normal10(" Sign in ", Colors.black,TextAlign.center),
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
                padding: const EdgeInsets.all(26.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Text(
                      'Already a member? ',
                    ),
                    InkWell(
                      onTap: (){
                       // Navigator.push(context, MaterialPageRoute(builder: (context)=> login());
                      },
                      child:
                      // Text(
                      //   'Signin',
                      // ),
                      textUtils.medium14("Signin", Colors.black,TextAlign.start),
                    ),
                  ],
                ),
              )

            ],
          ),
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
