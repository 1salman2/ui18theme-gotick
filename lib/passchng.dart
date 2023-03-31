import 'package:flutter/material.dart';

class PasChng extends StatefulWidget {
  const PasChng({Key? key}) : super(key: key);

  @override
  State<PasChng> createState() => _PasChngState();
}

class _PasChngState extends State<PasChng> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(padding: EdgeInsets.only(top: 130)),


          Image.asset('assets/images/passchng.png',height: 200,width: 500,fit: BoxFit.cover,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text(
                'Password Changed ',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              ),
              Padding(

                padding: EdgeInsets.all(20.0),

                child: Text(
                  'your new password must be different from the previously used password',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic),
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


                child: Text('Sign In Now',  style:  TextStyle(

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
