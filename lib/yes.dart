import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:ui18theme/utils/text_utils.dart';


class Personal extends StatefulWidget {
  const Personal({Key? key}) : super(key: key);

  @override
  State<Personal> createState() => _PersonalState();
}

class _PersonalState extends State<Personal> {
  TextEditingController dateController = TextEditingController();
  String? selectedGender;
  TextUtils textUtils = TextUtils();
  final ImagePicker picker = ImagePicker();
  XFile? image;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
              child: SafeArea(

                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Center(

                        child:
                        // Text(
                        //   'Personal Info',
                        //
                        //   style:
                        //   TextStyle(fontSize: 20,
                        //
                        //       fontWeight: FontWeight.bold),
                        // ),
                        textUtils.normal18("Personal Info", Colors.black,TextAlign.start),
                      ),
                      Padding(padding: const EdgeInsets.only(top: 40),
                        child: Stack(
                            children: [
                              Center(
                                child: Padding(padding: EdgeInsets.all(20),
                                  child: Container(
                                    height: 150,
                                    width: 150,

                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                        image: image == null
                                            ? const DecorationImage(
                                            image: AssetImage(
                                              'assets/images/avatar.jpg',
                                            ),
                                            fit: BoxFit.cover)
                                            : DecorationImage(
                                            image: FileImage(File(image!.path)),
                                            fit: BoxFit.cover)),
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 120,
                                top: 115,
                                child: CircleAvatar(
                                    backgroundColor: Colors.black,
                                    radius: 25,
                                    child: InkWell(
                                      onTap: (){
                                        myAlert();
                                      },
                                      child: const Icon(Icons.edit),
                                    )
                                ),)
                            ]
                        ),
                      ),
                    ]),
              ))
      ),
    );
  }
  void myAlert() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            title: const Text('Please choose media to select'),
            content: SizedBox(
              height: MediaQuery.of(context).size.height / 6,
              child: Column(
                children: [
                  ElevatedButton(
                    //if user click this button, user can upload image from gallery
                    onPressed: () {
                      Navigator.pop(context);
                      getImage(ImageSource.gallery);
                    },
                    child: Row(
                      children: const [
                        Icon(Icons.image),
                        Text('From Gallery'),
                      ],
                    ),
                  ),
                  ElevatedButton(

                    onPressed: () {
                      Navigator.pop(context);
                      getImage(ImageSource.camera);
                    },
                    child: Row(
                      children: const [
                        Icon(Icons.camera),
                        Text('From Camera'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
  Future getImage(ImageSource media) async {
    var img = await picker.pickImage(source: media);
    setState(() {
      image = img;
    });
  }
}